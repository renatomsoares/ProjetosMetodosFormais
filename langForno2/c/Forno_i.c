/* WARNING if type checker is not performed, translation could contain errors ! */

#include "Forno.h"

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */

/* Array and record constants */
/* Clause CONCRETE_VARIABLES */

static int32_t Forno__r_potencia[16];
static int32_t Forno__r_tempo[16];
static int32_t Forno__r_alimento[16];
static int32_t Forno__r_receita[Forno__ALIMENTO__max+1];
static Forno__INGREDIENTES Forno__r_ingredientes[16];
static int32_t Forno__r_estoque[16];
static int32_t Forno__r_trava;
static int32_t Forno__r_in_index[Forno__INGREDIENTES__max+1];
static int32_t Forno__qtd_receita;
static int32_t Forno__qtd_alimento;
static int32_t Forno__qtd_ing_estoque;
/* Clause INITIALISATION */
void Forno__INITIALISATION(void)
{
    
    Forno__r_potencia[0] = 0;
    Forno__r_tempo[0] = 0;
    Forno__r_estoque[0] = 0;
    Forno__r_ingredientes[0] = 0;
    Forno__r_receita[0] = 0;
    Forno__r_alimento[0] = 0;
    Forno__r_trava = 0;
    Forno__r_in_index[0] = 1;
    Forno__qtd_receita = 0;
    Forno__qtd_alimento = 0;
    Forno__qtd_ing_estoque = 0;
}

/* Clause OPERATIONS */

void Forno__numIngredientesNoEstoque(int32_t *ee)
{
    (*ee) = Forno__qtd_ing_estoque;
}

void Forno__qntIngredienteNoEstoque(Forno__INGREDIENTES ii, int32_t *qq)
{
    {
        int32_t ingrediente;
        int32_t count;
        
        ingrediente = 0;
        count = 0;
        while((ingrediente) != (ii))
        {
            ingrediente = Forno__r_ingredientes[Forno__r_in_index[ii]];
            count = count+1;
        }
        (*qq) = Forno__r_estoque[count];
    }
}

void Forno__travarForno(void)
{
    Forno__r_trava = 0;
}

void Forno__destravarForno(void)
{
    Forno__r_trava = 1;
}

void Forno__inserirNovoIngredienteNoEstoque(int32_t qq, Forno__INGREDIENTES ii)
{
    {
        int32_t ingrediente;
        int32_t count;
        int32_t achou;
        
        ingrediente = 0;
        count = 0;
        achou = 0;
        while((count) <= (Forno__qtd_ing_estoque))
        {
            if(count == ii)
            {
                achou = 1;
            }
            count = count+1;
        }
        if(achou == 0)
        {
            Forno__r_estoque[Forno__qtd_ing_estoque+1] = qq;
            Forno__r_in_index[ii] = Forno__qtd_ing_estoque+1;
            Forno__qtd_ing_estoque = Forno__qtd_ing_estoque+1;
        }
    }
}

void Forno__incrementarIngredienteDoEstoque(int32_t qq, Forno__INGREDIENTES ii)
{
    {
        int32_t xx;
        
        xx = Forno__r_estoque[Forno__r_in_index[ii]]+qq;
        if((xx) < (10))
        {
            Forno__r_estoque[Forno__r_in_index[ii]] = Forno__r_estoque[Forno__r_in_index[ii]]+qq;
        }
        else
        {
            Forno__r_estoque[Forno__r_in_index[ii]] = 10;
        }
    }
}

void Forno__decrementarIngredienteDoEstoque(int32_t qq, Forno__INGREDIENTES ii)
{
    {
        int32_t xx;
        
        xx = Forno__r_estoque[Forno__r_in_index[ii]]-qq;
        if((xx) > (0))
        {
            Forno__r_estoque[Forno__r_in_index[ii]] = Forno__r_estoque[Forno__r_in_index[ii]]+qq;
        }
        else
        {
            Forno__r_estoque[Forno__r_in_index[ii]] = 0;
        }
    }
}

void Forno__atualizarReceitaAdicinandoIngrediente(Forno__INGREDIENTES ii, Forno__ALIMENTO aa)
{
    Forno__r_alimento[Forno__qtd_alimento+1] = Forno__r_receita[aa];
    Forno__r_ingredientes[Forno__qtd_alimento+1] = ii;
    Forno__qtd_alimento = Forno__qtd_alimento+1;
}

void Forno__cadastrarReceita(Forno__INGREDIENTES ii, Forno__ALIMENTO aa, int32_t tt, int32_t pp)
{
    Forno__r_receita[aa] = (Forno__qtd_receita+1);
    Forno__r_alimento[Forno__qtd_alimento+1] = Forno__r_receita[aa];
    Forno__r_ingredientes[Forno__qtd_alimento+1] = ii;
    Forno__r_tempo[Forno__qtd_alimento+1] = tt;
    Forno__r_potencia[Forno__qtd_alimento+1] = pp;
    Forno__qtd_receita = Forno__qtd_receita+1;
    Forno__qtd_alimento = Forno__qtd_alimento+1;
}

void Forno__fazerAlimento(Forno__ALIMENTO aa)
{
    {
        int32_t count;
        
        count = 0;
        while((count) <= (Forno__qtd_alimento))
        {
            if(count == aa)
            {
                Forno__r_estoque[Forno__r_in_index[Forno__r_ingredientes[count]]] = Forno__r_estoque[Forno__r_in_index[Forno__r_ingredientes[count]]]-1;
            }
            count = count+1;
        }
    }
}

