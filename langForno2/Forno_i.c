/* WARNING if type checker is not performed, translation could contain errors ! */

#include "Forno.h"
#include <stdio.h>
#include <stdlib.h>

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

enum ingredientes{SAL = 1, ACUCAR = 2, MARGARINA = 3, PIMENTA = 4, SALSA = 5, OVO = 6};
enum receitas{BOLO = 1, MACARRONADA = 2, FEIJAO = 3};



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


void imprimirContadoresForno() {
	printf("Trava: %d\n", Forno__r_trava);
	printf("Quantidade de receitas: %d\n", Forno__qtd_receita);
	printf("Quantidade de alimentos: %d\n", Forno__qtd_alimento);
	printf("Quantidade de ingredientes no estoque: %d\n", Forno__qtd_ing_estoque);
	
}

const char* getIngredienteName(enum ingredientes ingrediente) 
{
   switch (ingrediente) 
   {
      case 1: return "Sal";
      case 2: return "Acucar";
      case 3: return "Margarina";
      case 4: return "Pimenta";
      case 5: return "Salsa";
      case 6: return "Ovo";
   }
}

const char* getReceitaName(enum receitas receita) 
{
   switch (receita) 
   {
      case 1: return "Bolo";
      case 2: return "Macarronada";
      case 3: return "Feijao";
   }
}

void getIngredientesPadrao() {
	    printf("Sal = %d \n", SAL);
		printf("Acucar = %d \n", ACUCAR);
	    printf("Margarina = %d \n", MARGARINA);
	    printf("Pimenta = %d \n", PIMENTA);
	    printf("Salsa = %d \n", SALSA);
	    printf("Ovo = %d \n", OVO);
}

void getReceitasPadrao() {
	    printf("Bolo = %d \n", BOLO);
		printf("Macarronada = %d \n", MACARRONADA);
	    printf("Feijao = %d \n", FEIJAO);
}


int userInput()
  {
    int choice;

    printf("=========================== \n");
    printf("(1). Inicializar forno\n");
    printf("(2). Inserir novo ingrediente no estoque \n");
    printf("(3). Incrementar ingrediente do estoque \n");
    printf("(4). Decrementar ingrediente do estoque \n");
	printf("(5). Cadastrar receita \n");
	printf("(6). Informar novo ingrediente na receita \n");
	printf("(7). Fazer alimento \n");
    printf("(0). Sair\n");
    printf("=========================== \n\n");

    printf("Informe um valor para acessar o menu. \n");
    scanf("%d", &choice);

    return choice;
  }


int main(int argc, char *argv[]) {
	
	//Inicializando Forno
	Forno__INITIALISATION();
	int userInput();
	int sel = 1;
	//Imprimindo os valores inicializados
	printf("%d", Forno__r_trava);

	 while(userInput){

	  sel = userInput();
	  
	  switch(sel){
	
	    case 1: //Inicialiar forno
	    	Forno__INITIALISATION();
	    	imprimirContadoresForno();
	    break;
	
	    case 2: ; //Inserir novo ingrediente no estoque
	    
	    	int qtdNovoIngredienteEstoque;
	    	int novoIngrediente;
	    	
	    	getIngredientesPadrao();
	    	
			printf("Informe o ingrediente a ser adicionado <enter> e, em seguida, a sua quantidade <enter>: ");
		    scanf("%d ", &novoIngrediente);
		    scanf("%d", &qtdNovoIngredienteEstoque);	    	

	    	Forno__inserirNovoIngredienteNoEstoque(qtdNovoIngredienteEstoque, novoIngrediente);
	    	imprimirContadoresForno();
	    	
	    break;
	
	    case 3: ; //Incrementar ingrediente do estoque
	    
	    	int qtdAdicionadaIngrediente;
	    	int ingrediente;
	    	
	    	getIngredientesPadrao();
	    	
			printf("Informe o ingrediente <enter> e, em seguida, a sua quantidade adicionada <enter>: ");
		    scanf("%d ", &ingrediente);
		    scanf("%d", &qtdAdicionadaIngrediente);	    	

	    	Forno__incrementarIngredienteDoEstoque(qtdAdicionadaIngrediente,ingrediente);
	    break;
	
	    case 4: //Decrementar ingrediente do estoque
	    
	    break;
	    
	    case 5: //Cadastrar receita
	    
	    break;
	    
	    case 6: //Informar novo ingrediente na receita
	    
	    break;
	    
	    case 7: //Fazer alimento
	    
	    break;
	
	    case 0: //Sair
	    	return 0;
	    break;  
	
	   }
	
	}


	return 0;
}

