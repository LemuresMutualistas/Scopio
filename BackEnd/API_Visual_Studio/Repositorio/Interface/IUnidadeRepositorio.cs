﻿using System.Collections.Generic;
using Dominio;

namespace Repositorio.Interface
{
    public interface IUnidadeRepositorio
    {
        void Alterar(Unidade entity);
        void Deletar(int id);
        int Inserir(Unidade entity);
        IEnumerable<Unidade> Selecionar();
        Unidade SelecionarPorId(int id);
        Unidade SelecionarPorNome(string nome);
    }
}