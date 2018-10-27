Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Forno))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Forno))==(Machine(Forno));
  Level(Machine(Forno))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Forno)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Forno))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Forno))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Forno))==(?);
  List_Includes(Machine(Forno))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Forno))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Forno))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Forno))==(?);
  Context_List_Variables(Machine(Forno))==(?);
  Abstract_List_Variables(Machine(Forno))==(?);
  Local_List_Variables(Machine(Forno))==(qtdIng,tempoDeUso,index_in,pot,trav,cron,temporizacaoR,potenciaR,estoqueR,receita_in_qntR,receita_al_inR);
  List_Variables(Machine(Forno))==(qtdIng,tempoDeUso,index_in,pot,trav,cron,temporizacaoR,potenciaR,estoqueR,receita_in_qntR,receita_al_inR);
  External_List_Variables(Machine(Forno))==(qtdIng,tempoDeUso,index_in,pot,trav,cron,temporizacaoR,potenciaR,estoqueR,receita_in_qntR,receita_al_inR)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Forno))==(?);
  Abstract_List_VisibleVariables(Machine(Forno))==(?);
  External_List_VisibleVariables(Machine(Forno))==(?);
  Expanded_List_VisibleVariables(Machine(Forno))==(?);
  List_VisibleVariables(Machine(Forno))==(?);
  Internal_List_VisibleVariables(Machine(Forno))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Forno))==(btrue);
  Gluing_List_Invariant(Machine(Forno))==(btrue);
  Expanded_List_Invariant(Machine(Forno))==(btrue);
  Abstract_List_Invariant(Machine(Forno))==(btrue);
  Context_List_Invariant(Machine(Forno))==(btrue);
  List_Invariant(Machine(Forno))==(receita_al_inR: ALIMENTO <-> POW(INGREDIENTES) & receita_in_qntR: POW(INGREDIENTES) <-> NAT1 & estoqueR: INGREDIENTES +-> 0..10 & potenciaR: ALIMENTO +-> NAT & temporizacaoR: ALIMENTO +-> NAT & cron: NAT & pot: NAT & trav: NAT & index_in: 0..card(dom(estoqueR)) +-> INGREDIENTES & tempoDeUso: NAT & qtdIng: 0..card(dom(estoqueR)))
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Forno))==(btrue);
  Abstract_List_Assertions(Machine(Forno))==(btrue);
  Context_List_Assertions(Machine(Forno))==(btrue);
  List_Assertions(Machine(Forno))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Forno))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Forno))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Forno))==(estoqueR,receita_al_inR,receita_in_qntR,temporizacaoR,potenciaR,cron,pot,trav,index_in,tempoDeUso,qtdIng:={},{},{},{},{},0,0,0,{},0,0);
  Context_List_Initialisation(Machine(Forno))==(skip);
  List_Initialisation(Machine(Forno))==(estoqueR:={} || receita_al_inR:={} || receita_in_qntR:={} || temporizacaoR:={} || potenciaR:={} || cron:=0 || pot:=0 || trav:=0 || index_in:={} || tempoDeUso:=0 || qtdIng:=0)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Forno))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Forno))==(btrue);
  List_Constraints(Machine(Forno))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Forno))==(numIngredientesNoEstoque,qntIngredienteNoEstoque,travarForno,destravarForno,inserirNovoIngredienteNoEstoque,incrementarIngredienteDoEstoque,decrementarIngredienteDoEstoque,atualizarReceitaAdicinandoIngrediente,cadastrarReceita,fazerAlimento);
  List_Operations(Machine(Forno))==(numIngredientesNoEstoque,qntIngredienteNoEstoque,travarForno,destravarForno,inserirNovoIngredienteNoEstoque,incrementarIngredienteDoEstoque,decrementarIngredienteDoEstoque,atualizarReceitaAdicinandoIngrediente,cadastrarReceita,fazerAlimento)
END
&
THEORY ListInputX IS
  List_Input(Machine(Forno),numIngredientesNoEstoque)==(?);
  List_Input(Machine(Forno),qntIngredienteNoEstoque)==(ii);
  List_Input(Machine(Forno),travarForno)==(?);
  List_Input(Machine(Forno),destravarForno)==(?);
  List_Input(Machine(Forno),inserirNovoIngredienteNoEstoque)==(qq,ii);
  List_Input(Machine(Forno),incrementarIngredienteDoEstoque)==(qq,ii);
  List_Input(Machine(Forno),decrementarIngredienteDoEstoque)==(qq,ii);
  List_Input(Machine(Forno),atualizarReceitaAdicinandoIngrediente)==(ii,aa);
  List_Input(Machine(Forno),cadastrarReceita)==(ii,aa,tt,pp);
  List_Input(Machine(Forno),fazerAlimento)==(aa)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Forno),numIngredientesNoEstoque)==(ee);
  List_Output(Machine(Forno),qntIngredienteNoEstoque)==(qq);
  List_Output(Machine(Forno),travarForno)==(?);
  List_Output(Machine(Forno),destravarForno)==(?);
  List_Output(Machine(Forno),inserirNovoIngredienteNoEstoque)==(?);
  List_Output(Machine(Forno),incrementarIngredienteDoEstoque)==(?);
  List_Output(Machine(Forno),decrementarIngredienteDoEstoque)==(?);
  List_Output(Machine(Forno),atualizarReceitaAdicinandoIngrediente)==(?);
  List_Output(Machine(Forno),cadastrarReceita)==(?);
  List_Output(Machine(Forno),fazerAlimento)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Forno),numIngredientesNoEstoque)==(ee <-- numIngredientesNoEstoque);
  List_Header(Machine(Forno),qntIngredienteNoEstoque)==(qq <-- qntIngredienteNoEstoque(ii));
  List_Header(Machine(Forno),travarForno)==(travarForno);
  List_Header(Machine(Forno),destravarForno)==(destravarForno);
  List_Header(Machine(Forno),inserirNovoIngredienteNoEstoque)==(inserirNovoIngredienteNoEstoque(qq,ii));
  List_Header(Machine(Forno),incrementarIngredienteDoEstoque)==(incrementarIngredienteDoEstoque(qq,ii));
  List_Header(Machine(Forno),decrementarIngredienteDoEstoque)==(decrementarIngredienteDoEstoque(qq,ii));
  List_Header(Machine(Forno),atualizarReceitaAdicinandoIngrediente)==(atualizarReceitaAdicinandoIngrediente(ii,aa));
  List_Header(Machine(Forno),cadastrarReceita)==(cadastrarReceita(ii,aa,tt,pp));
  List_Header(Machine(Forno),fazerAlimento)==(fazerAlimento(aa))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Forno),numIngredientesNoEstoque)==(btrue);
  List_Precondition(Machine(Forno),qntIngredienteNoEstoque)==(ii: INGREDIENTES & ii: dom(estoqueR));
  List_Precondition(Machine(Forno),travarForno)==(trav = 1);
  List_Precondition(Machine(Forno),destravarForno)==(trav = 0);
  List_Precondition(Machine(Forno),inserirNovoIngredienteNoEstoque)==(ii: INGREDIENTES & qq: NAT & qq<10 & qq>0 & ii/:dom(estoqueR));
  List_Precondition(Machine(Forno),incrementarIngredienteDoEstoque)==(ii: INGREDIENTES & qq: NAT & qq<10 & qq>0 & ii: dom(estoqueR) & estoqueR(ii)<10);
  List_Precondition(Machine(Forno),decrementarIngredienteDoEstoque)==(ii: INGREDIENTES & qq: NAT & qq<10 & qq>0 & ii: dom(estoqueR) & estoqueR(ii)<10);
  List_Precondition(Machine(Forno),atualizarReceitaAdicinandoIngrediente)==(ii: INGREDIENTES & aa: ALIMENTO & aa: dom(temporizacaoR) & aa: dom(potenciaR));
  List_Precondition(Machine(Forno),cadastrarReceita)==(ii: INGREDIENTES & aa: ALIMENTO & tt: NAT1 & pp: NAT1 & aa/:dom(temporizacaoR) & aa/:dom(potenciaR));
  List_Precondition(Machine(Forno),fazerAlimento)==(aa: ALIMENTO & aa: dom(receita_al_inR) & trav = 1 & tempoDeUso<MAXINT)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Forno),fazerAlimento)==(aa: ALIMENTO & aa: dom(receita_al_inR) & trav = 1 & tempoDeUso<MAXINT | cron,trav,tempoDeUso:=0,0,tempoDeUso+temporizacaoR(aa) || @yy.(yy: receita_al_inR(aa) ==> (estoqueR(yy)>0 ==> estoqueR:=estoqueR<+{yy|->max({estoqueR(yy)-1,0})} [] not(estoqueR(yy)>0) ==> skip)));
  Expanded_List_Substitution(Machine(Forno),cadastrarReceita)==(ii: INGREDIENTES & aa: ALIMENTO & tt: NAT1 & pp: NAT1 & aa/:dom(temporizacaoR) & aa/:dom(potenciaR) | receita_al_inR,temporizacaoR,potenciaR:=receita_al_inR\/{aa|->{}},temporizacaoR\/{aa|->tt},potenciaR\/{aa|->pp});
  Expanded_List_Substitution(Machine(Forno),atualizarReceitaAdicinandoIngrediente)==(ii: INGREDIENTES & aa: ALIMENTO & aa: dom(temporizacaoR) & aa: dom(potenciaR) | receita_al_inR:=receita_al_inR<+{aa|->(receita_al_inR(aa)\/{ii})});
  Expanded_List_Substitution(Machine(Forno),decrementarIngredienteDoEstoque)==(ii: INGREDIENTES & qq: NAT & qq<10 & qq>0 & ii: dom(estoqueR) & estoqueR(ii)<10 | estoqueR:=estoqueR<+{ii|->max({estoqueR(ii)-qq,0})});
  Expanded_List_Substitution(Machine(Forno),incrementarIngredienteDoEstoque)==(ii: INGREDIENTES & qq: NAT & qq<10 & qq>0 & ii: dom(estoqueR) & estoqueR(ii)<10 | estoqueR:=estoqueR<+{ii|->min({estoqueR(ii)+qq,10})});
  Expanded_List_Substitution(Machine(Forno),inserirNovoIngredienteNoEstoque)==(ii: INGREDIENTES & qq: NAT & qq<10 & qq>0 & ii/:dom(estoqueR) | ii/:dom(estoqueR) ==> estoqueR,index_in:=estoqueR\/{ii|->qq},index_in\/{card(dom(estoqueR))|->ii} [] not(ii/:dom(estoqueR)) ==> skip);
  Expanded_List_Substitution(Machine(Forno),destravarForno)==(trav = 0 | trav:=1);
  Expanded_List_Substitution(Machine(Forno),travarForno)==(trav = 1 | trav:=0);
  Expanded_List_Substitution(Machine(Forno),qntIngredienteNoEstoque)==(ii: INGREDIENTES & ii: dom(estoqueR) | qq:=estoqueR(ii));
  Expanded_List_Substitution(Machine(Forno),numIngredientesNoEstoque)==(btrue | ee:=card(dom(estoqueR)));
  List_Substitution(Machine(Forno),numIngredientesNoEstoque)==(ee:=card(dom(estoqueR)));
  List_Substitution(Machine(Forno),qntIngredienteNoEstoque)==(qq:=estoqueR(ii));
  List_Substitution(Machine(Forno),travarForno)==(trav:=0);
  List_Substitution(Machine(Forno),destravarForno)==(trav:=1);
  List_Substitution(Machine(Forno),inserirNovoIngredienteNoEstoque)==(IF ii/:dom(estoqueR) THEN estoqueR:=estoqueR\/{ii|->qq} || index_in:=index_in\/{card(dom(estoqueR))|->ii} END);
  List_Substitution(Machine(Forno),incrementarIngredienteDoEstoque)==(estoqueR:=estoqueR<+{ii|->min({estoqueR(ii)+qq,10})});
  List_Substitution(Machine(Forno),decrementarIngredienteDoEstoque)==(estoqueR:=estoqueR<+{ii|->max({estoqueR(ii)-qq,0})});
  List_Substitution(Machine(Forno),atualizarReceitaAdicinandoIngrediente)==(receita_al_inR:=receita_al_inR<+{aa|->(receita_al_inR(aa)\/{ii})});
  List_Substitution(Machine(Forno),cadastrarReceita)==(receita_al_inR:=receita_al_inR\/{aa|->{}} || temporizacaoR:=temporizacaoR\/{aa|->tt} || potenciaR:=potenciaR\/{aa|->pp});
  List_Substitution(Machine(Forno),fazerAlimento)==(cron:=0 || trav:=0 || tempoDeUso:=tempoDeUso+temporizacaoR(aa) || ANY yy WHERE yy: receita_al_inR(aa) THEN IF estoqueR(yy)>0 THEN estoqueR:=estoqueR<+{yy|->max({estoqueR(yy)-1,0})} END END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Forno))==(?);
  Inherited_List_Constants(Machine(Forno))==(?);
  List_Constants(Machine(Forno))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Forno),INGREDIENTES)==(?);
  Context_List_Enumerated(Machine(Forno))==(?);
  Context_List_Defered(Machine(Forno))==(?);
  Context_List_Sets(Machine(Forno))==(?);
  List_Valuable_Sets(Machine(Forno))==(INGREDIENTES,ALIMENTO);
  Inherited_List_Enumerated(Machine(Forno))==(?);
  Inherited_List_Defered(Machine(Forno))==(?);
  Inherited_List_Sets(Machine(Forno))==(?);
  List_Enumerated(Machine(Forno))==(?);
  List_Defered(Machine(Forno))==(INGREDIENTES,ALIMENTO);
  List_Sets(Machine(Forno))==(INGREDIENTES,ALIMENTO);
  Set_Definition(Machine(Forno),ALIMENTO)==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Forno))==(?);
  Expanded_List_HiddenConstants(Machine(Forno))==(?);
  List_HiddenConstants(Machine(Forno))==(?);
  External_List_HiddenConstants(Machine(Forno))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Forno))==(btrue);
  Context_List_Properties(Machine(Forno))==(btrue);
  Inherited_List_Properties(Machine(Forno))==(btrue);
  List_Properties(Machine(Forno))==(INGREDIENTES: FIN(INTEGER) & not(INGREDIENTES = {}) & ALIMENTO: FIN(INTEGER) & not(ALIMENTO = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Forno),numIngredientesNoEstoque)==(?);
  List_ANY_Var(Machine(Forno),qntIngredienteNoEstoque)==(?);
  List_ANY_Var(Machine(Forno),travarForno)==(?);
  List_ANY_Var(Machine(Forno),destravarForno)==(?);
  List_ANY_Var(Machine(Forno),inserirNovoIngredienteNoEstoque)==(?);
  List_ANY_Var(Machine(Forno),incrementarIngredienteDoEstoque)==(?);
  List_ANY_Var(Machine(Forno),decrementarIngredienteDoEstoque)==(?);
  List_ANY_Var(Machine(Forno),atualizarReceitaAdicinandoIngrediente)==(?);
  List_ANY_Var(Machine(Forno),cadastrarReceita)==(?);
  List_ANY_Var(Machine(Forno),fazerAlimento)==(Var(yy) == atype(INGREDIENTES,?,?))
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Forno)) == (INGREDIENTES,ALIMENTO | ? | qtdIng,tempoDeUso,index_in,pot,trav,cron,temporizacaoR,potenciaR,estoqueR,receita_in_qntR,receita_al_inR | ? | numIngredientesNoEstoque,qntIngredienteNoEstoque,travarForno,destravarForno,inserirNovoIngredienteNoEstoque,incrementarIngredienteDoEstoque,decrementarIngredienteDoEstoque,atualizarReceitaAdicinandoIngrediente,cadastrarReceita,fazerAlimento | ? | ? | ? | Forno);
  List_Of_HiddenCst_Ids(Machine(Forno)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Forno)) == (?);
  List_Of_VisibleVar_Ids(Machine(Forno)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Forno)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Forno)) == (Type(INGREDIENTES) == Cst(SetOf(atype(INGREDIENTES,"[INGREDIENTES","]INGREDIENTES")));Type(ALIMENTO) == Cst(SetOf(atype(ALIMENTO,"[ALIMENTO","]ALIMENTO"))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Forno)) == (Type(qtdIng) == Mvl(btype(INTEGER,?,?));Type(tempoDeUso) == Mvl(btype(INTEGER,?,?));Type(index_in) == Mvl(SetOf(btype(INTEGER,?,?)*atype(INGREDIENTES,?,?)));Type(pot) == Mvl(btype(INTEGER,?,?));Type(trav) == Mvl(btype(INTEGER,?,?));Type(cron) == Mvl(btype(INTEGER,?,?));Type(temporizacaoR) == Mvl(SetOf(atype(ALIMENTO,?,?)*btype(INTEGER,?,?)));Type(potenciaR) == Mvl(SetOf(atype(ALIMENTO,?,?)*btype(INTEGER,?,?)));Type(estoqueR) == Mvl(SetOf(atype(INGREDIENTES,?,?)*btype(INTEGER,?,?)));Type(receita_in_qntR) == Mvl(SetOf(SetOf(atype(INGREDIENTES,?,?))*btype(INTEGER,?,?)));Type(receita_al_inR) == Mvl(SetOf(atype(ALIMENTO,?,?)*SetOf(atype(INGREDIENTES,?,?)))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Forno)) == (Type(fazerAlimento) == Cst(No_type,atype(ALIMENTO,?,?));Type(cadastrarReceita) == Cst(No_type,atype(INGREDIENTES,?,?)*atype(ALIMENTO,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(atualizarReceitaAdicinandoIngrediente) == Cst(No_type,atype(INGREDIENTES,?,?)*atype(ALIMENTO,?,?));Type(decrementarIngredienteDoEstoque) == Cst(No_type,btype(INTEGER,?,?)*atype(INGREDIENTES,?,?));Type(incrementarIngredienteDoEstoque) == Cst(No_type,btype(INTEGER,?,?)*atype(INGREDIENTES,?,?));Type(inserirNovoIngredienteNoEstoque) == Cst(No_type,btype(INTEGER,?,?)*atype(INGREDIENTES,?,?));Type(destravarForno) == Cst(No_type,No_type);Type(travarForno) == Cst(No_type,No_type);Type(qntIngredienteNoEstoque) == Cst(btype(INTEGER,?,?),atype(INGREDIENTES,?,?));Type(numIngredientesNoEstoque) == Cst(btype(INTEGER,?,?),No_type));
  Observers(Machine(Forno)) == (Type(qntIngredienteNoEstoque) == Cst(btype(INTEGER,?,?),atype(INGREDIENTES,?,?));Type(numIngredientesNoEstoque) == Cst(btype(INTEGER,?,?),No_type))
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
