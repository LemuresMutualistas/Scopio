﻿using Dominio;
using Dominio.Excecoes;
using Negocio.Interface;
using Repositorio.Interface;
using System.Collections.Generic;

namespace Negocio
{
    public class SquadNegocio : ISquadNegocio
    {
        /// <summary>
        /// 
        /// </summary>
        private readonly ISquadRepositorio _squadRepositorio;

        /// <summary>
        /// 
        /// </summary>
        private readonly IMentorSquadRepositorio _mentorSquadRepositorio;

        /// <summary>
        /// 
        /// </summary>
        public SquadNegocio(ISquadRepositorio squadRepositorio, IMentorSquadRepositorio mentorSquadRepositorio)
        {
            _squadRepositorio = squadRepositorio;
            _mentorSquadRepositorio = mentorSquadRepositorio;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        public IEnumerable<Squad> Selecionar()
        {
            var lista = _squadRepositorio.Selecionar();

            if (lista == null)
                throw new NaoEncontradoException();

            return lista;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public Squad SelecionarPorId(int id)
        {
            var obj = _squadRepositorio.SelecionarPorId(id);

            if (obj == null)
                throw new NaoEncontradoException();

            return obj;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="idTribo"></param>
        /// <returns></returns>
        public IEnumerable<Squad> SelecionarPorIdTribo(int idTribo)
        {
            var lista = _squadRepositorio.SelecionarPorIdTribo(idTribo);

            if (lista == null)
                throw new NaoEncontradoException();

            return lista;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="desc"></param>
        /// <returns></returns>
        public Squad SelecionarPorDescricao(string desc)
        {
            var obj = _squadRepositorio.SelecionarPorDescricao(desc);

            if (obj == null)
                throw new NaoEncontradoException();

            return obj;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="entity"></param>
        /// <returns></returns>
        public int Inserir(Squad entity)
        {
            int IdUser = entity.ID;
            var UserExistente = _squadRepositorio.SelecionarPorDescricao(entity.Nome);
            if (UserExistente != null)
            {
                throw new ConflitoException($"Já existe cadastrado a SQUAD {UserExistente.Nome}, cadastrado!");
            }

            if (entity.IdTribo == null)
            {
                if (entity.IdUser == 0)
                {
                    _squadRepositorio.InserirSemTribo(entity);
                    var teste = _squadRepositorio.SelecionarPorDescricao(entity.Nome);
                    return teste.ID;
                }
                else
                {
                    _squadRepositorio.InserirSemTribo(entity);
                    var teste = _squadRepositorio.SelecionarPorDescricao(entity.Nome);
                    _mentorSquadRepositorio.Inserir(teste.ID, entity.IdUser);
                    return teste.ID;

                }
            }
            else
            {
                if (entity.IdUser == 0)
                {
                    _squadRepositorio.InserirComTribo(entity);
                    var teste = _squadRepositorio.SelecionarPorDescricao(entity.Nome);
                    return teste.ID;
                }
                else
                {
                    _squadRepositorio.InserirComTribo(entity);
                    var teste = _squadRepositorio.SelecionarPorDescricao(entity.Nome);
                    _mentorSquadRepositorio.Inserir(teste.ID, entity.IdUser);
                    return teste.ID;
                }
            }
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
        /// <param name="entity"></param>
        /// <returns></returns>
        public Squad Alterar(int id, Squad entity)
        {
            entity.ID = id;
            _squadRepositorio.Alterar(entity);

            return _squadRepositorio.SelecionarPorId(id);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        public IEnumerable<Squad> SquadSemTribo()
        {
            var lista = _squadRepositorio.SquadSemTribo();

            if (lista == null)
                throw new NaoEncontradoException();

            return lista;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
        /// <param name="entity"></param>
        /// <returns></returns>
        public Squad SairDaTribo(int id, Squad entity)
        {
            entity.ID = id;
            _squadRepositorio.SairDaTribo(entity);

            return _squadRepositorio.SelecionarPorId(id);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
        /// <param name="entity"></param>
        /// <returns></returns>
        public Squad AlterarAtivoInativo(int id, Squad entity)
        {
            entity.ID = id;
            _squadRepositorio.AlterarAtivoInativo(entity);

            return _squadRepositorio.SelecionarPorId(id);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
		public void Deletar(int id)
        {
            var obj = _squadRepositorio.SelecionarPorId(id);

            _squadRepositorio.Deletar(obj.ID);
        }
    }
}
