#ifndef _Forno_h
#define _Forno_h

#include <stdint.h>
#include <stdbool.h>
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


#define Forno__INGREDIENTES__max 1890
#define Forno__ALIMENTO__max 1890
/* Clause SETS */
typedef int Forno__INGREDIENTES;
typedef int Forno__ALIMENTO;

/* Clause CONCRETE_VARIABLES */


/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
/* Array and record constants */
extern void Forno__INITIALISATION(void);

/* Clause OPERATIONS */

extern void Forno__numIngredientesNoEstoque(int32_t *ee);
extern void Forno__qntIngredienteNoEstoque(Forno__INGREDIENTES ii, int32_t *qq);
extern void Forno__travarForno(void);
extern void Forno__destravarForno(void);
extern void Forno__inserirNovoIngredienteNoEstoque(int32_t qq, Forno__INGREDIENTES ii);
extern void Forno__incrementarIngredienteDoEstoque(int32_t qq, Forno__INGREDIENTES ii);
extern void Forno__decrementarIngredienteDoEstoque(int32_t qq, Forno__INGREDIENTES ii);
extern void Forno__atualizarReceitaAdicinandoIngrediente(Forno__INGREDIENTES ii, Forno__ALIMENTO aa);
extern void Forno__cadastrarReceita(Forno__INGREDIENTES ii, Forno__ALIMENTO aa, int32_t tt, int32_t pp);
extern void Forno__fazerAlimento(Forno__ALIMENTO aa);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _Forno_h */

