﻿using Api.Model;
using Dominio;
using Microsoft.AspNetCore.Mvc;
using Negocio;
using Swashbuckle.AspNetCore.SwaggerGen;
using System.Net;

namespace Api.Controllers
{
    [Produces("application/json")]
    [Route("api/Pais")]
    public class PaisController : Controller
    {
        /// <summary>
        /// Declara as regras de negócio para o país.
        /// </summary>
        private PaisNegocio _paisNegocio;

        /// <summary>
        /// Construtor para instanciar as regras de negócio.
        /// </summary>
        public PaisController()
        {
            _paisNegocio = new PaisNegocio();
        }

        /// <summary>
        /// Método que obtêm todos os paises.
        /// </summary>
        /// <returns></returns>
        /// <response code="200">OK</response>
        /// <response code="404">NotFoud</response>
        [HttpGet]
        [SwaggerResponse((int)HttpStatusCode.OK, typeof(Pais), nameof(HttpStatusCode.OK))]
        [SwaggerResponse((int)HttpStatusCode.NotFound)]
        public IActionResult Get()
        {
            return Ok(_paisNegocio.Selecionar());
        }

        /// <summary>
        /// Método que obtêm um país.
        /// </summary>
        /// <param name="id">Usado para selecionar o país.</param>
        /// <returns></returns>
        /// <remarks>Obtêm um país através do Id informado.</remarks>
        /// <response code="200">OK</response>
        /// <response code="404">NotFoud</response>
        [HttpGet]
        [Route("{id}")]
        [SwaggerResponse((int)HttpStatusCode.OK, typeof(Papel), nameof(HttpStatusCode.OK))]
        [SwaggerResponse((int)HttpStatusCode.NotFound)]
        public IActionResult GetId(int id)
        {
            return Ok(_paisNegocio.SelecionarPorId(id));
        }

        /// <summary>
        /// Método que insere um país.
        /// </summary>
        /// <param name="input">Objeto com os dados do país.</param>
        /// <returns></returns>
        /// <response code="201">Created</response>
        /// <response code="400">BadRequest</response>
        /// <response code="500">InternalServerError</response>
        [HttpPost]
        [SwaggerResponse((int)HttpStatusCode.Created, typeof(Papel), nameof(HttpStatusCode.Created))]
        [SwaggerResponse((int)HttpStatusCode.BadRequest)]
        [SwaggerResponse((int)HttpStatusCode.InternalServerError)]
        public IActionResult Post([FromBody]PaisInput Input)
        {
            var objPais = new Pais()
            {
                Nome = Input.Nome,
                Sigla = Input.Sigla
            };

            var idPais = _paisNegocio.Inserir(objPais);
            objPais.ID = idPais;
            return CreatedAtRoute(nameof(GetId), new { id = idPais }, objPais);
        }


        /// <summary>
        /// Método que altera os dados de um país.
        /// </summary>
        /// <param name="id">Usado para selecionar o país.</param>
        /// <param name="input">Objeto que contêm os dados a serem alterados.</param>
        /// <returns></returns>
        /// <response code="202">Accepted</response>
        /// <response code="400">BadRequest</response>
        /// <response code="500">InternalServerError</response>
        [HttpPut]
        [Route("{id}")]
        [SwaggerResponse((int)HttpStatusCode.Accepted, typeof(Papel), nameof(HttpStatusCode.Accepted))]
        [SwaggerResponse((int)HttpStatusCode.BadRequest)]
        [SwaggerResponse((int)HttpStatusCode.InternalServerError)]
        public IActionResult Put([FromRoute]int id, [FromBody]PaisInput input)
        {
            var objPais = new Pais()
            {
                Nome = input.Nome,
                Sigla = input.Sigla
            };

            var obj = _paisNegocio.Alterar(id, objPais);
            return Accepted(obj);
        }

        /// <summary>
        /// Método que deleta um país.
        /// </summary>
        /// <param name="id">Usado para selecionar o país.</param>
        /// <returns></returns>
        /// <response code="200">OK</response>
        /// <response code="404">NotFound</response>
        [HttpDelete]
        [Route("{id}")]
        [SwaggerResponse((int)HttpStatusCode.OK)]
        [SwaggerResponse((int)HttpStatusCode.NotFound)]
        public IActionResult Delete([FromRoute]int id)
        {
            _paisNegocio.Deletar(id);
            return Ok();
        }
    }
}