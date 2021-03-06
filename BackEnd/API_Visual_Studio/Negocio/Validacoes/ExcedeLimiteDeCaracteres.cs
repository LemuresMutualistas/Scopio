﻿using Dominio;

namespace Negocio.Validacoes
{
    public static class ExcedeLimiteDeCaracteres
    {
       #region Pais
        /// <summary>
        /// Verifica se o tamanho dos campos do objeto excedem o limite estabelecido no banco de dados.
        /// </summary>
        /// <param name="entity">Contêm os dados do campo.</param>
        /// <returns>
        /// True se algum campo possuir mais caracteres do que o limite declarado no banco de dados ou
        /// False caso todos os campos respeitem esta especificação.
        /// </returns>
        public static bool Verificar(Pais entity)
        {
            if (entity.Nome.Length > 50 || entity.Sigla.Length > 3)
            {
                return true;
            }
        
            return false;
        }
        #endregion

       #region Unidade
        /// <summary>
        /// Verifica se o tamanho do campo nome excede o limite estabelecido no banco de dados.
        /// </summary>
        /// <param name="entity">Contêm os dados do campo.</param>
        /// <returns>
        /// True se o campo nome possuir mais caracteres do que o limite declarado no banco de dados ou
        /// False caso todos o campo respeite esta especificação.
        /// </returns>
        public static bool Verificar(Unidade entity)
        {
            if (entity.Nome.Length > 50)
            {
                return true;
            }

            return false;
        }
        #endregion

       #region Nivel Papel
        /// <summary>
        /// Verifica se o tamanho do campo nome excede o limite estabelecido no banco de dados.
        /// </summary>
        /// <param name="entity">Contêm os dados do campo.</param>
        /// <returns>
        /// True se o campo nome possuir mais caracteres do que o limite declarado no banco de dados ou
        /// False caso todos o campo respeite esta especificação.
        /// </returns>
        public static bool Verificar(NivelPapel entity)
        {
            if (entity.Desc.Length > 15)
            {
                return true;
            }

            return false;
        }
        #endregion

       #region Papel
        /// <summary>
        /// Verifica se o tamanho do campo nome excede o limite estabelecido no banco de dados.
        /// </summary>
        /// <param name="entity">Contêm os dados do campo.</param>
        /// <returns>
        /// True se o campo nome possuir mais caracteres do que o limite declarado no banco de dados ou
        /// False caso todos o campo respeite esta especificação.
        /// </returns>
        public static bool Verificar(Papel entity)
        {
            if (entity.Desc.Length > 50)
            {
                return true;
            }

            return false;
        }
        #endregion

       #region Usuário
        /// <summary>
        /// Verifica se o tamanho do campo nome excede o limite estabelecido no banco de dados.
        /// </summary>
        /// <param name="entity">Contêm os dados do campo.</param>
        /// <returns>
        /// True se o campo nome possuir mais caracteres do que o limite declarado no banco de dados ou
        /// False caso todos o campo respeite esta especificação.
        /// </returns>
        public static bool Verificar(User entity)
        {
            if (entity.Avatar.Length > 200 ||
                entity.Email.Length > 100 ||
                entity.Nome.Length > 50 ||
                entity.Senha.Length > 32 ||
                entity.Tel.Length > 14 ||
                entity.UserName.Length > 30)
            {
                return true;
            }

            return false;
        }
        #endregion

    }
}
