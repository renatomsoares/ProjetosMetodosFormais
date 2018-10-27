Normalised(
THEORY MagicNumberX IS
  MagicNumber(Refinement(Forno_r))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Refinement(Forno_r))==(Machine(Forno));
  Level(Refinement(Forno_r))==(1);
  Upper_Level(Refinement(Forno_r))==(Machine(Forno))
END
&
THEORY LoadedStructureX IS
  Refinement(Forno_r)
END
&
THEORY ListSeesX IS
  List_Sees(Refinement(Forno_r))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Refinement(Forno_r))==(?);
  List_Includes(Refinement(Forno_r))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Refinement(Forno_r))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Refinement(Forno_r))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Refinement(Forno_r))==(?);
  Context_List_Variables(Refinement(Forno_r))==(?);
  Abstract_List_Variables(Refinement(Forno_r))==(qtdIng,tempoDeUso,index_in,pot,trav,cron,temporizacaoR,potenciaR,estoqueR,receita_in_qntR,receita_al_inR);
  Local_List_Variables(Refinement(Forno_r))==(qtd_receita,qtd_ing_estoque,qtd_alimento,r_in_index,existe,r_trava,r_estoque,r_ingredientes,r_receita,r_alimento,r_tempo,r_potencia);
  List_Variables(Refinement(Forno_r))==(qtd_receita,qtd_ing_estoque,qtd_alimento,r_in_index,existe,r_trava,r_estoque,r_ingredientes,r_receita,r_alimento,r_tempo,r_potencia);
  External_List_Variables(Refinement(Forno_r))==(qtd_receita,qtd_ing_estoque,qtd_alimento,r_in_index,existe,r_trava,r_estoque,r_ingredientes,r_receita,r_alimento,r_tempo,r_potencia)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Refinement(Forno_r))==(?);
  Abstract_List_VisibleVariables(Refinement(Forno_r))==(?);
  External_List_VisibleVariables(Refinement(Forno_r))==(?);
  Expanded_List_VisibleVariables(Refinement(Forno_r))==(?);
  List_VisibleVariables(Refinement(Forno_r))==(?);
  Internal_List_VisibleVariables(Refinement(Forno_r))==(?)
END
&
THEORY ListOfNewVariablesX IS
  List_Of_New_Variables(Refinement(Forno_r))==(qtd_receita,qtd_ing_estoque,qtd_alimento,r_in_index,existe,r_trava,r_estoque,r_ingredientes,r_receita,r_alimento,r_tempo,r_potencia)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Refinement(Forno_r))==(btrue);
  Expanded_List_Invariant(Refinement(Forno_r))==(btrue);
  Abstract_List_Invariant(Refinement(Forno_r))==(receita_al_inR: ALIMENTO <-> POW(INGREDIENTES) & receita_in_qntR: POW(INGREDIENTES) <-> NAT1 & estoqueR: INGREDIENTES +-> 0..10 & potenciaR: ALIMENTO +-> NAT & temporizacaoR: ALIMENTO +-> NAT & cron: NAT & pot: NAT & trav: NAT & index_in: 0..card(dom(estoqueR)) +-> INGREDIENTES & tempoDeUso: NAT & qtdIng: 0..card(dom(estoqueR)));
  Context_List_Invariant(Refinement(Forno_r))==(btrue);
  List_Invariant(Refinement(Forno_r))==(qtd_alimento: NAT & qtd_ing_estoque: NAT & qtd_receita: NAT & existe: INGREDIENTES --> NAT & r_in_index: INGREDIENTES --> NAT & r_trava: NAT & r_potencia: 0..15 --> NAT1 & r_potencia[0..15] = ran(potenciaR) & r_tempo: 0..15 --> NAT1 & r_tempo[0..15] = ran(temporizacaoR) & r_estoque: 0..15 --> NAT & r_estoque[0..15] = ran(estoqueR) & r_alimento: 0..15 --> NAT & r_ingredientes: 0..15 --> INGREDIENTES & r_receita: ALIMENTO --> NAT)
END
&
THEORY ListVariantX IS
  List_Variant(Refinement(Forno_r))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Refinement(Forno_r))==(btrue);
  Abstract_List_Assertions(Refinement(Forno_r))==(btrue);
  Context_List_Assertions(Refinement(Forno_r))==(btrue);
  List_Assertions(Refinement(Forno_r))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Refinement(Forno_r))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Refinement(Forno_r))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Refinement(Forno_r))==(r_in_index:={};r_potencia:=<>;r_ingredientes:=<>;r_tempo:=<>;r_estoque:=<>;r_receita:={};r_alimento:=<>;r_trava:=0;qtd_alimento:=0;qtd_ing_estoque:=0;qtd_receita:=0;existe:={});
  Context_List_Initialisation(Refinement(Forno_r))==(skip);
  List_Initialisation(Refinement(Forno_r))==(r_in_index:={};r_potencia:=<>;r_ingredientes:=<>;r_tempo:=<>;r_estoque:=<>;r_receita:={};r_alimento:=<>;r_trava:=0;qtd_alimento:=0;qtd_ing_estoque:=0;qtd_receita:=0;existe:={})
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Refinement(Forno_r))==(numIngredientesNoEstoque,qntIngredienteNoEstoque,travarForno,destravarForno,inserirNovoIngredienteNoEstoque,incrementarIngredienteDoEstoque,decrementarIngredienteDoEstoque,atualizarReceitaAdicinandoIngrediente,cadastrarReceita,fazerAlimento);
  List_Operations(Refinement(Forno_r))==(numIngredientesNoEstoque,qntIngredienteNoEstoque,travarForno,destravarForno,inserirNovoIngredienteNoEstoque,incrementarIngredienteDoEstoque,decrementarIngredienteDoEstoque,atualizarReceitaAdicinandoIngrediente,cadastrarReceita,fazerAlimento)
END
&
THEORY ListInputX IS
  List_Input(Refinement(Forno_r),numIngredientesNoEstoque)==(?);
  List_Input(Refinement(Forno_r),qntIngredienteNoEstoque)==(ii);
  List_Input(Refinement(Forno_r),travarForno)==(?);
  List_Input(Refinement(Forno_r),destravarForno)==(?);
  List_Input(Refinement(Forno_r),inserirNovoIngredienteNoEstoque)==(qq,ii);
  List_Input(Refinement(Forno_r),incrementarIngredienteDoEstoque)==(qq,ii);
  List_Input(Refinement(Forno_r),decrementarIngredienteDoEstoque)==(qq,ii);
  List_Input(Refinement(Forno_r),atualizarReceitaAdicinandoIngrediente)==(ii,aa);
  List_Input(Refinement(Forno_r),cadastrarReceita)==(ii,aa,tt,pp);
  List_Input(Refinement(Forno_r),fazerAlimento)==(aa)
END
&
THEORY ListOutputX IS
  List_Output(Refinement(Forno_r),numIngredientesNoEstoque)==(ee);
  List_Output(Refinement(Forno_r),qntIngredienteNoEstoque)==(qq);
  List_Output(Refinement(Forno_r),travarForno)==(?);
  List_Output(Refinement(Forno_r),destravarForno)==(?);
  List_Output(Refinement(Forno_r),inserirNovoIngredienteNoEstoque)==(?);
  List_Output(Refinement(Forno_r),incrementarIngredienteDoEstoque)==(?);
  List_Output(Refinement(Forno_r),decrementarIngredienteDoEstoque)==(?);
  List_Output(Refinement(Forno_r),atualizarReceitaAdicinandoIngrediente)==(?);
  List_Output(Refinement(Forno_r),cadastrarReceita)==(?);
  List_Output(Refinement(Forno_r),fazerAlimento)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Refinement(Forno_r),numIngredientesNoEstoque)==(ee <-- numIngredientesNoEstoque);
  List_Header(Refinement(Forno_r),qntIngredienteNoEstoque)==(qq <-- qntIngredienteNoEstoque(ii));
  List_Header(Refinement(Forno_r),travarForno)==(travarForno);
  List_Header(Refinement(Forno_r),destravarForno)==(destravarForno);
  List_Header(Refinement(Forno_r),inserirNovoIngredienteNoEstoque)==(inserirNovoIngredienteNoEstoque(qq,ii));
  List_Header(Refinement(Forno_r),incrementarIngredienteDoEstoque)==(incrementarIngredienteDoEstoque(qq,ii));
  List_Header(Refinement(Forno_r),decrementarIngredienteDoEstoque)==(decrementarIngredienteDoEstoque(qq,ii));
  List_Header(Refinement(Forno_r),atualizarReceitaAdicinandoIngrediente)==(atualizarReceitaAdicinandoIngrediente(ii,aa));
  List_Header(Refinement(Forno_r),cadastrarReceita)==(cadastrarReceita(ii,aa,tt,pp));
  List_Header(Refinement(Forno_r),fazerAlimento)==(fazerAlimento(aa))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  Own_Precondition(Refinement(Forno_r),numIngredientesNoEstoque)==(btrue);
  List_Precondition(Refinement(Forno_r),numIngredientesNoEstoque)==(btrue);
  Own_Precondition(Refinement(Forno_r),qntIngredienteNoEstoque)==(btrue);
  List_Precondition(Refinement(Forno_r),qntIngredienteNoEstoque)==(ii: INGREDIENTES & ii: dom(estoqueR));
  Own_Precondition(Refinement(Forno_r),travarForno)==(r_trava = 1);
  List_Precondition(Refinement(Forno_r),travarForno)==(r_trava = 1 & trav = 1);
  Own_Precondition(Refinement(Forno_r),destravarForno)==(r_trava = 0);
  List_Precondition(Refinement(Forno_r),destravarForno)==(r_trava = 0 & trav = 0);
  Own_Precondition(Refinement(Forno_r),inserirNovoIngredienteNoEstoque)==(btrue);
  List_Precondition(Refinement(Forno_r),inserirNovoIngredienteNoEstoque)==(ii: INGREDIENTES & qq: NAT & qq<10 & qq>0 & ii/:dom(estoqueR));
  Own_Precondition(Refinement(Forno_r),incrementarIngredienteDoEstoque)==(btrue);
  List_Precondition(Refinement(Forno_r),incrementarIngredienteDoEstoque)==(ii: INGREDIENTES & qq: NAT & qq<10 & qq>0 & ii: dom(estoqueR) & estoqueR(ii)<10);
  Own_Precondition(Refinement(Forno_r),decrementarIngredienteDoEstoque)==(btrue);
  List_Precondition(Refinement(Forno_r),decrementarIngredienteDoEstoque)==(ii: INGREDIENTES & qq: NAT & qq<10 & qq>0 & ii: dom(estoqueR) & estoqueR(ii)<10);
  Own_Precondition(Refinement(Forno_r),atualizarReceitaAdicinandoIngrediente)==(btrue);
  List_Precondition(Refinement(Forno_r),atualizarReceitaAdicinandoIngrediente)==(ii: INGREDIENTES & aa: ALIMENTO & aa: dom(temporizacaoR) & aa: dom(potenciaR));
  Own_Precondition(Refinement(Forno_r),cadastrarReceita)==(btrue);
  List_Precondition(Refinement(Forno_r),cadastrarReceita)==(ii: INGREDIENTES & aa: ALIMENTO & tt: NAT1 & pp: NAT1 & aa/:dom(temporizacaoR) & aa/:dom(potenciaR));
  Own_Precondition(Refinement(Forno_r),fazerAlimento)==(r_trava = 1);
  List_Precondition(Refinement(Forno_r),fazerAlimento)==(r_trava = 1 & aa: ALIMENTO & aa: dom(receita_al_inR) & trav = 1 & tempoDeUso<MAXINT)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Refinement(Forno_r),fazerAlimento)==(r_trava = 1 & aa: ALIMENTO & aa: dom(receita_al_inR) & trav = 1 & tempoDeUso<MAXINT | r_trava:=0;@xx.(xx: ran(r_alimento) & xx = r_receita(aa) ==> r_estoque:=r_estoque<+{r_in_index(r_ingredientes(xx))|->r_estoque(r_in_index(r_ingredientes(xx)))-1}));
  Expanded_List_Substitution(Refinement(Forno_r),cadastrarReceita)==(ii: INGREDIENTES & aa: ALIMENTO & tt: NAT1 & pp: NAT1 & aa/:dom(temporizacaoR) & aa/:dom(potenciaR) | r_receita:=r_receita<+{aa|->qtd_receita+1};r_alimento:=r_alimento<+{qtd_alimento+1|->r_receita(aa)};r_ingredientes:=r_ingredientes<+{qtd_alimento+1|->ii};r_tempo:=r_tempo<+{qtd_receita+1|->tt};r_potencia:=r_potencia<+{qtd_receita+1|->pp};qtd_alimento:=qtd_alimento+1;qtd_receita:=qtd_receita+1);
  Expanded_List_Substitution(Refinement(Forno_r),atualizarReceitaAdicinandoIngrediente)==(ii: INGREDIENTES & aa: ALIMENTO & aa: dom(temporizacaoR) & aa: dom(potenciaR) | r_alimento:=r_alimento<+{qtd_alimento+1|->r_receita(aa)};r_ingredientes:=r_ingredientes<+{qtd_alimento+1|->ii};qtd_alimento:=qtd_alimento+1);
  Expanded_List_Substitution(Refinement(Forno_r),decrementarIngredienteDoEstoque)==(ii: INGREDIENTES & qq: NAT & qq<10 & qq>0 & ii: dom(estoqueR) & estoqueR(ii)<10 | r_estoque:=r_estoque<+{r_in_index(ii)|->max({r_estoque(r_in_index(ii))-qq,0})});
  Expanded_List_Substitution(Refinement(Forno_r),incrementarIngredienteDoEstoque)==(ii: INGREDIENTES & qq: NAT & qq<10 & qq>0 & ii: dom(estoqueR) & estoqueR(ii)<10 | r_estoque:=r_estoque<+{r_in_index(ii)|->min({r_estoque(r_in_index(ii))+qq,10})});
  Expanded_List_Substitution(Refinement(Forno_r),inserirNovoIngredienteNoEstoque)==(ii: INGREDIENTES & qq: NAT & qq<10 & qq>0 & ii/:dom(estoqueR) | existe(ii) = 0 ==> (r_estoque:=r_estoque<+{qtd_ing_estoque+1|->qq};r_in_index:=r_in_index<+{ii|->qtd_ing_estoque+1};qtd_ing_estoque:=qtd_ing_estoque+1;existe:=existe<+{ii|->1}) [] not(existe(ii) = 0) ==> r_estoque:=r_estoque<+{r_in_index(ii)|->r_estoque(r_in_index(ii))+qq});
  Expanded_List_Substitution(Refinement(Forno_r),destravarForno)==(r_trava = 0 & trav = 0 | r_trava:=1);
  Expanded_List_Substitution(Refinement(Forno_r),travarForno)==(r_trava = 1 & trav = 1 | r_trava:=0);
  Expanded_List_Substitution(Refinement(Forno_r),qntIngredienteNoEstoque)==(ii: INGREDIENTES & ii: dom(estoqueR) | qq:=r_estoque(r_in_index(ii)));
  Expanded_List_Substitution(Refinement(Forno_r),numIngredientesNoEstoque)==(btrue | ee:=qtd_ing_estoque);
  List_Substitution(Refinement(Forno_r),numIngredientesNoEstoque)==(ee:=qtd_ing_estoque);
  List_Substitution(Refinement(Forno_r),qntIngredienteNoEstoque)==(qq:=r_estoque(r_in_index(ii)));
  List_Substitution(Refinement(Forno_r),travarForno)==(r_trava:=0);
  List_Substitution(Refinement(Forno_r),destravarForno)==(r_trava:=1);
  List_Substitution(Refinement(Forno_r),inserirNovoIngredienteNoEstoque)==(IF existe(ii) = 0 THEN r_estoque(qtd_ing_estoque+1):=qq;r_in_index(ii):=qtd_ing_estoque+1;qtd_ing_estoque:=qtd_ing_estoque+1;existe(ii):=1 ELSE r_estoque(r_in_index(ii)):=r_estoque(r_in_index(ii))+qq END);
  List_Substitution(Refinement(Forno_r),incrementarIngredienteDoEstoque)==(r_estoque(r_in_index(ii)):=min({r_estoque(r_in_index(ii))+qq,10}));
  List_Substitution(Refinement(Forno_r),decrementarIngredienteDoEstoque)==(r_estoque(r_in_index(ii)):=max({r_estoque(r_in_index(ii))-qq,0}));
  List_Substitution(Refinement(Forno_r),atualizarReceitaAdicinandoIngrediente)==(r_alimento(qtd_alimento+1):=r_receita(aa);r_ingredientes(qtd_alimento+1):=ii;qtd_alimento:=qtd_alimento+1);
  List_Substitution(Refinement(Forno_r),cadastrarReceita)==(r_receita(aa):=qtd_receita+1;r_alimento(qtd_alimento+1):=r_receita(aa);r_ingredientes(qtd_alimento+1):=ii;r_tempo(qtd_receita+1):=tt;r_potencia(qtd_receita+1):=pp;qtd_alimento:=qtd_alimento+1;qtd_receita:=qtd_receita+1);
  List_Substitution(Refinement(Forno_r),fazerAlimento)==(r_trava:=0;ANY xx WHERE xx: ran(r_alimento) & xx = r_receita(aa) THEN r_estoque(r_in_index(r_ingredientes(xx))):=r_estoque(r_in_index(r_ingredientes(xx)))-1 END)
END
&
THEORY ListParametersX IS
  List_Parameters(Refinement(Forno_r))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Constraints(Refinement(Forno_r))==(btrue);
  List_Context_Constraints(Refinement(Forno_r))==(btrue)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Refinement(Forno_r))==(?);
  Inherited_List_Constants(Refinement(Forno_r))==(?);
  List_Constants(Refinement(Forno_r))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Refinement(Forno_r),ALIMENTO)==(?);
  Context_List_Enumerated(Refinement(Forno_r))==(?);
  Context_List_Defered(Refinement(Forno_r))==(?);
  Context_List_Sets(Refinement(Forno_r))==(?);
  List_Valuable_Sets(Refinement(Forno_r))==(INGREDIENTES,ALIMENTO);
  Inherited_List_Enumerated(Refinement(Forno_r))==(?);
  Inherited_List_Defered(Refinement(Forno_r))==(INGREDIENTES,ALIMENTO);
  Inherited_List_Sets(Refinement(Forno_r))==(INGREDIENTES,ALIMENTO);
  List_Enumerated(Refinement(Forno_r))==(?);
  List_Defered(Refinement(Forno_r))==(?);
  List_Sets(Refinement(Forno_r))==(?);
  Set_Definition(Refinement(Forno_r),INGREDIENTES)==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Refinement(Forno_r))==(?);
  Expanded_List_HiddenConstants(Refinement(Forno_r))==(?);
  List_HiddenConstants(Refinement(Forno_r))==(?);
  External_List_HiddenConstants(Refinement(Forno_r))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Refinement(Forno_r))==(INGREDIENTES: FIN(INTEGER) & not(INGREDIENTES = {}) & ALIMENTO: FIN(INTEGER) & not(ALIMENTO = {}));
  Context_List_Properties(Refinement(Forno_r))==(btrue);
  Inherited_List_Properties(Refinement(Forno_r))==(btrue);
  List_Properties(Refinement(Forno_r))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Refinement(Forno_r),numIngredientesNoEstoque)==(?);
  List_ANY_Var(Refinement(Forno_r),qntIngredienteNoEstoque)==(?);
  List_ANY_Var(Refinement(Forno_r),travarForno)==(?);
  List_ANY_Var(Refinement(Forno_r),destravarForno)==(?);
  List_ANY_Var(Refinement(Forno_r),inserirNovoIngredienteNoEstoque)==(?);
  List_ANY_Var(Refinement(Forno_r),incrementarIngredienteDoEstoque)==(?);
  List_ANY_Var(Refinement(Forno_r),decrementarIngredienteDoEstoque)==(?);
  List_ANY_Var(Refinement(Forno_r),atualizarReceitaAdicinandoIngrediente)==(?);
  List_ANY_Var(Refinement(Forno_r),cadastrarReceita)==(?);
  List_ANY_Var(Refinement(Forno_r),fazerAlimento)==(Var(xx) == btype(INTEGER,?,?))
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Refinement(Forno_r)) == (? | ? | qtd_receita,qtd_ing_estoque,qtd_alimento,r_in_index,existe,r_trava,r_estoque,r_ingredientes,r_receita,r_alimento,r_tempo,r_potencia | ? | numIngredientesNoEstoque,qntIngredienteNoEstoque,travarForno,destravarForno,inserirNovoIngredienteNoEstoque,incrementarIngredienteDoEstoque,decrementarIngredienteDoEstoque,atualizarReceitaAdicinandoIngrediente,cadastrarReceita,fazerAlimento | ? | ? | ? | Forno_r);
  List_Of_HiddenCst_Ids(Refinement(Forno_r)) == (? | ?);
  List_Of_VisibleCst_Ids(Refinement(Forno_r)) == (?);
  List_Of_VisibleVar_Ids(Refinement(Forno_r)) == (? | ?);
  List_Of_Ids_SeenBNU(Refinement(Forno_r)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Refinement(Forno_r)) == (Type(ALIMENTO) == Cst(SetOf(atype(ALIMENTO,"[ALIMENTO","]ALIMENTO")));Type(INGREDIENTES) == Cst(SetOf(atype(INGREDIENTES,"[INGREDIENTES","]INGREDIENTES"))))
END
&
THEORY VariablesEnvX IS
  Variables(Refinement(Forno_r)) == (Type(qtd_receita) == Mvl(btype(INTEGER,?,?));Type(qtd_ing_estoque) == Mvl(btype(INTEGER,?,?));Type(qtd_alimento) == Mvl(btype(INTEGER,?,?));Type(r_in_index) == Mvl(SetOf(atype(INGREDIENTES,"[INGREDIENTES","]INGREDIENTES")*btype(INTEGER,0,MAXINT)));Type(existe) == Mvl(SetOf(atype(INGREDIENTES,"[INGREDIENTES","]INGREDIENTES")*btype(INTEGER,0,MAXINT)));Type(r_trava) == Mvl(btype(INTEGER,?,?));Type(r_estoque) == Mvl(SetOf(btype(INTEGER,0,15)*btype(INTEGER,0,MAXINT)));Type(r_ingredientes) == Mvl(SetOf(btype(INTEGER,0,15)*atype(INGREDIENTES,"[INGREDIENTES","]INGREDIENTES")));Type(r_receita) == Mvl(SetOf(atype(ALIMENTO,"[ALIMENTO","]ALIMENTO")*btype(INTEGER,0,MAXINT)));Type(r_alimento) == Mvl(SetOf(btype(INTEGER,0,15)*btype(INTEGER,0,MAXINT)));Type(r_tempo) == Mvl(SetOf(btype(INTEGER,0,15)*btype(INTEGER,1,MAXINT)));Type(r_potencia) == Mvl(SetOf(btype(INTEGER,0,15)*btype(INTEGER,1,MAXINT))))
END
&
THEORY OperationsEnvX IS
  Operations(Refinement(Forno_r)) == (Type(fazerAlimento) == Cst(No_type,atype(ALIMENTO,?,?));Type(cadastrarReceita) == Cst(No_type,atype(INGREDIENTES,?,?)*atype(ALIMENTO,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(atualizarReceitaAdicinandoIngrediente) == Cst(No_type,atype(INGREDIENTES,?,?)*atype(ALIMENTO,?,?));Type(decrementarIngredienteDoEstoque) == Cst(No_type,btype(INTEGER,?,?)*atype(INGREDIENTES,?,?));Type(incrementarIngredienteDoEstoque) == Cst(No_type,btype(INTEGER,?,?)*atype(INGREDIENTES,?,?));Type(inserirNovoIngredienteNoEstoque) == Cst(No_type,btype(INTEGER,?,?)*atype(INGREDIENTES,?,?));Type(destravarForno) == Cst(No_type,No_type);Type(travarForno) == Cst(No_type,No_type);Type(qntIngredienteNoEstoque) == Cst(btype(INTEGER,?,?),atype(INGREDIENTES,?,?));Type(numIngredientesNoEstoque) == Cst(btype(INTEGER,?,?),No_type))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == SOFTWARE_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
)
