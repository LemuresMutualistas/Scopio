﻿using Dapper;
using Dominio;
using Repositorio.Interface;
using Repositorio.Configuracao;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace Repositorio
{
    public class PapelRepositorio : IPapelRepositorio
    {
        /// <summary>
        /// PESQUISA PAPEIS
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public IEnumerable<Papel> Selecionar()
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                var lista = connection.Query<Papel>($"SELECT * " +
                                                    $"FROM [TB_PAPEL]");
                return lista;
            }
        }

        /// <summary>
        /// PESQUISA PAPEL POR ID
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public Papel SelecionarPorId(int id)
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                var obj = connection.QueryFirstOrDefault<Papel>($"SELECT * " +
                                                                $"FROM [TB_PAPEL] " +
                                                                $"WHERE ID = {id}");
                return obj;
            }
        }

        /// <summary>
        /// PESQUISA PAPEL POR DESCRIÇÃO
        /// </summary>
        /// <param name="desc"></param>
        /// <returns></returns>
        public Papel SelecionarPorDescricao(string desc)
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                var obj = connection.QueryFirstOrDefault<Papel>($"SELECT * " +
                                                                $"FROM [TB_PAPEL] " +
                                                                $"WHERE [Desc] = '{desc}'");
                return obj;
            }
        }

        /// <summary>
        /// CADASTRA PAPEL
        /// </summary>
        /// <param name="entity"></param>
        /// <returns></returns>
        public int Inserir(Papel entity)
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                var obj = connection.QuerySingle<int>($"DECLARE @ID INT; " +
                                                      $"INSERT INTO [TB_PAPEL] " +
                                                      $"([Desc], Nivel) " +
                                                      $"VALUES ('{entity.Desc}', {entity.Nivel})" +
                                                      $"SET @ID = SCOPE_IDENTITY();" +
                                                      $"SELECT @ID");
                return obj;
            }
        }

        /// <summary>
        /// ALTERA PAPEL
        /// </summary>
        /// <param name="entity"></param>
        public void Alterar(Papel entity)
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                connection.Execute($"UPDATE [TB_PAPEL] " +
                                   $"SET [Desc] = '{entity.Desc}', " +
                                   $"Nivel = {entity.Nivel} " +
                                   $"WHERE ID = {entity.ID}");
            }
        }

        /// <summary>
		/// 
		/// </summary>
		/// <param name="id"></param>
		/// <returns></returns>
		public void Deletar(int id)
        {
            using (var connection = new SqlConnection(DbConnection.GetConn()))
            {
                connection.Execute($"DELETE " +
                                   $"FROM [TB_PAPEL] " +
                                   $"WHERE ID = {id}");
            }
        }
    }
}