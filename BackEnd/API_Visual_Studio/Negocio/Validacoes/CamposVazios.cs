﻿using Dominio;
using System;

namespace Negocio.Validacoes
{
    public static class CamposVazios
    {
        #region Pais
        /// <summary>
        /// Verifica se os campos obrigátorios não foram preenchidos.
        /// </summary>
        /// <param name="entity">Objeto com os campos a serem verificados.</param>
        /// <returns>True se os campos obrigátorios não foram preenchidos ou False se eles foram.</returns>
        public static bool Verificar(Pais entity)
        {
            if (string.IsNullOrWhiteSpace(entity.Nome) || string.IsNullOrWhiteSpace(entity.Sigla))
            {
                return true;
            }
            return false;
        }
        #endregion

        #region Unidade
        /// <summary>
        /// Verifica se os campos obrigátorios não foram preenchidos.
        /// </summary>
        /// <param name="entity">Objeto com os campos a serem verificados.</param>
        /// <returns>True se os campos obrigátorios não foram preenchidos ou False se eles foram.</returns>
        public static bool Verificar(Unidade entity)
        {
            if (string.IsNullOrWhiteSpace(Convert.ToString(entity.IdPais)) ||
                string.IsNullOrWhiteSpace(entity.Nome))
            {
                return true;
            }
            return false;
        }
        #endregion

        #region Nível Papel
        /// <summary>
        /// Verifica se os campos obrigátorios não foram preenchidos.
        /// </summary>
        /// <param name="entity">Objeto com os campos a serem verificados.</param>
        /// <returns>True se os campos obrigátorios não foram preenchidos ou False se eles foram.</returns>
        public static bool Verificar(NivelPapel entity)
        {
            if (string.IsNullOrWhiteSpace(Convert.ToString(entity.ID)) ||
                string.IsNullOrWhiteSpace(entity.Desc))
            {
                return true;
            }
            return false;
        }
        #endregion

        #region MembroSquad
        /// <summary>
        /// Verifica se os campos obrigátorios não foram preenchidos.
        /// </summary>
        /// <param name="entity">Objeto com os campos a serem verificados.</param>
        /// <returns>True se os campos obrigátorios não foram preenchidos ou False se eles foram.</returns>
        public static bool Verificar(MembroSquad entity)
        {
            if (string.IsNullOrWhiteSpace(Convert.ToString(entity.IdSquad)) ||
                string.IsNullOrWhiteSpace(Convert.ToString(entity.IdUser)))
            {
                return true;
            }
            return false;
        }
        #endregion

        #region Papel
        /// <summary>
        /// Verifica se os campos obrigátorios não foram preenchidos.
        /// </summary>
        /// <param name="entity">Objeto com os campos a serem verificados.</param>
        /// <returns>True se os campos obrigátorios não foram preenchidos ou False se eles foram.</returns>
        public static bool Verificar(Papel entity)
        {
            if (string.IsNullOrWhiteSpace(Convert.ToString(entity.Nivel)) ||
                string.IsNullOrWhiteSpace(entity.Desc)
)
            {
                return true;
            }
            return false;
        }
        #endregion

        #region Usuário
        /// <summary>
        /// Verifica se os campos obrigátorios não foram preenchidos.
        /// </summary>
        /// <param name="entity">Objeto com os campos a serem verificados.</param>
        /// <returns>True se os campos obrigátorios não foram preenchidos ou False se eles foram.</returns>
        public static bool Verificar(User entity)
        {
            if (string.IsNullOrWhiteSpace(Convert.ToString(entity.IdPapel)) ||
                string.IsNullOrWhiteSpace(Convert.ToString(entity.IdNivel)) ||
                string.IsNullOrWhiteSpace(entity.Nome) ||
                string.IsNullOrWhiteSpace(entity.Senha) ||
                string.IsNullOrWhiteSpace(entity.UserName))
            {
                return true;
            }

            return false;
        }
        #endregion
    }
}