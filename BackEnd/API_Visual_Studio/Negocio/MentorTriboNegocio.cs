﻿using Dominio;
using Dominio.dto;
using Dominio.Excecoes;
using Negocio.Interface;
using Repositorio.Interface;
using System.Collections.Generic;

namespace Negocio
{
    public class MentorTriboNegocio : IMentorTriboNegocio
    {
        /// <summary>
        /// 
        /// </summary>
        private readonly IMentorTriboRepositorio _mentorTriboRepositorio;

        /// <summary>
        /// 
        /// </summary>
        public MentorTriboNegocio(IMentorTriboRepositorio mentorTriboRepositorio)
        {
            _mentorTriboRepositorio = mentorTriboRepositorio;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        public IEnumerable<MentorTribo> Selecionar()
        {
            var lista = _mentorTriboRepositorio.Selecionar();

            if (lista == null)
                throw new NaoEncontradoException();

            return lista;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public MentorTribo SelecionarPorId(int id)
        {
            var obj = _mentorTriboRepositorio.SelecionarPorId(id);

            if (obj == null)
                throw new NaoEncontradoException();

            return obj;
        }

        /// <summary>
        /// Seleciona um membro do Database.
        /// </summary>
        /// <returns>Seleciona um membro ou gera uma exceção.</returns>
        public MentorTribo SelecionarTribosPorId(int id)
        {
            var obj = _mentorTriboRepositorio.SelecionarTribosPorId(id);
            
            return obj;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="entity"></param>
        /// <returns></returns>
        public int Inserir(int IdTribo, int IdUser)
        {
            return _mentorTriboRepositorio.Inserir(IdTribo, IdUser);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
        /// <param name="entity"></param>
        /// <returns></returns>
        public MentorTribo Alterar(int id, MentorTribo entity)
        {
            entity.ID = id;
            _mentorTriboRepositorio.Alterar(entity);

            return _mentorTriboRepositorio.SelecionarPorId(id);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
		public void Deletar(int id)
        {
            var obj = _mentorTriboRepositorio.SelecionarPorId(id);

            _mentorTriboRepositorio.Deletar(obj.ID);
        }
    }
}
