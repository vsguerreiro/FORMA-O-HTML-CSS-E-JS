﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConferenciaCientifica.Entidades
{
    internal abstract class Pessoa
    {
        public string Nome { get; set; }

        public void RealizarInscricao() { }
    }
}
