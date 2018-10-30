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
  Local_List_Variables(Machine(Forno))==(tempoUso,index_ingrediente,potencia,trava,cronometro,estoque_ingrediente_quantidade,temporizador_alimento_valor,potencia_alimento_valor,receita_ingrediente_quantidade,receita_alimento_ingrediente);
  List_Variables(Machine(Forno))==(tempoUso,index_ingrediente,potencia,trava,cronometro,estoque_ingrediente_quantidade,temporizador_alimento_valor,potencia_alimento_valor,receita_ingrediente_quantidade,receita_alimento_ingrediente);
  External_List_Variables(Machine(Forno))==(tempoUso,index_ingrediente,potencia,trava,cronometro,estoque_ingrediente_quantidade,temporizador_alimento_valor,potencia_alimento_valor,receita_ingrediente_quantidade,receita_alimento_ingrediente)
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
  List_Invariant(Machine(Forno))==(receita_alimento_ingrediente: ALIMENTO <-> POW(INGREDIENTES) & receita_ingrediente_quantidade: POW(INGREDIENTES) <-> NAT1 & estoque_ingrediente_quantidade: INGREDIENTES +-> 0..2000 & potencia_alimento_valor: ALIMENTO +-> 150..260 & temporizador_alimento_valor: ALIMENTO +-> 1..7200 & cronometro: 0..7200 & potencia: 0..260 & trava: NAT & index_ingrediente: 0..card(dom(estoque_ingrediente_quantidade)) +-> INGREDIENTES & tempoUso: 0..7200)
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
  Expanded_List_Initialisation(Machine(Forno))==(estoque_ingrediente_quantidade,receita_alimento_ingrediente,receita_ingrediente_quantidade,temporizador_alimento_valor,potencia_alimento_valor,cronometro,potencia,trava,index_ingrediente,tempoUso:={},{},{},{},{},0,0,0,{},0);
  Context_List_Initialisation(Machine(Forno))==(skip);
  List_Initialisation(Machine(Forno))==(estoque_ingrediente_quantidade:={} || receita_alimento_ingrediente:={} || receita_ingrediente_quantidade:={} || temporizador_alimento_valor:={} || potencia_alimento_valor:={} || cronometro:=0 || potencia:=0 || trava:=0 || index_ingrediente:={} || tempoUso:=0)
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
  Internal_List_Operations(Machine(Forno))==(numIngredientesNoEstoque,qntIngredienteNoEstoque,travarForno,destravarForno,decrementaTempo,inserirNovoIngredienteNoEstoque,incrementarIngredienteDoEstoque,decrementarIngredienteDoEstoque,atualizarReceitaAdicinandoIngrediente,cadastrarReceita,fazerAlimento);
  List_Operations(Machine(Forno))==(numIngredientesNoEstoque,qntIngredienteNoEstoque,travarForno,destravarForno,decrementaTempo,inserirNovoIngredienteNoEstoque,incrementarIngredienteDoEstoque,decrementarIngredienteDoEstoque,atualizarReceitaAdicinandoIngrediente,cadastrarReceita,fazerAlimento)
END
&
THEORY ListInputX IS
  List_Input(Machine(Forno),numIngredientesNoEstoque)==(?);
  List_Input(Machine(Forno),qntIngredienteNoEstoque)==(ii);
  List_Input(Machine(Forno),travarForno)==(?);
  List_Input(Machine(Forno),destravarForno)==(?);
  List_Input(Machine(Forno),decrementaTempo)==(?);
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
  List_Output(Machine(Forno),decrementaTempo)==(?);
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
  List_Header(Machine(Forno),decrementaTempo)==(decrementaTempo);
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
  List_Precondition(Machine(Forno),qntIngredienteNoEstoque)==(ii: INGREDIENTES & ii: dom(estoque_ingrediente_quantidade));
  List_Precondition(Machine(Forno),travarForno)==(trava = 0);
  List_Precondition(Machine(Forno),destravarForno)==(trava = 1 & cronometro = 0);
  List_Precondition(Machine(Forno),decrementaTempo)==(cronometro>0);
  List_Precondition(Machine(Forno),inserirNovoIngredienteNoEstoque)==(ii: INGREDIENTES & qq: NAT & qq<2000 & qq>0 & ii/:dom(estoque_ingrediente_quantidade) & trava = 0);
  List_Precondition(Machine(Forno),incrementarIngredienteDoEstoque)==(ii: INGREDIENTES & qq: NAT & qq<2000 & qq>0 & ii: dom(estoque_ingrediente_quantidade) & estoque_ingrediente_quantidade(ii)<2000 & trava = 0);
  List_Precondition(Machine(Forno),decrementarIngredienteDoEstoque)==(ii: INGREDIENTES & qq: NAT & qq<2000 & qq>0 & ii: dom(estoque_ingrediente_quantidade) & trava = 0 & estoque_ingrediente_quantidade(ii)<2000);
  List_Precondition(Machine(Forno),atualizarReceitaAdicinandoIngrediente)==(ii: INGREDIENTES & aa: ALIMENTO & aa: dom(temporizador_alimento_valor) & aa: dom(potencia_alimento_valor) & trava = 0);
  List_Precondition(Machine(Forno),cadastrarReceita)==(ii: INGREDIENTES & aa: ALIMENTO & tt: 1..7200 & pp: 150..260 & aa/:dom(temporizador_alimento_valor) & aa/:dom(potencia_alimento_valor) & trava = 0);
  List_Precondition(Machine(Forno),fazerAlimento)==(aa: ALIMENTO & aa: dom(receita_alimento_ingrediente) & trava = 0)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Forno),fazerAlimento)==(aa: ALIMENTO & aa: dom(receita_alimento_ingrediente) & trava = 0 | trava,cronometro:=1,temporizador_alimento_valor(aa) || @yy.(yy: receita_alimento_ingrediente(aa) ==> (estoque_ingrediente_quantidade(yy)>0 ==> estoque_ingrediente_quantidade:=estoque_ingrediente_quantidade<+{yy|->max({estoque_ingrediente_quantidade(yy)-1,0})} [] not(estoque_ingrediente_quantidade(yy)>0) ==> skip)));
  Expanded_List_Substitution(Machine(Forno),cadastrarReceita)==(ii: INGREDIENTES & aa: ALIMENTO & tt: 1..7200 & pp: 150..260 & aa/:dom(temporizador_alimento_valor) & aa/:dom(potencia_alimento_valor) & trava = 0 | receita_alimento_ingrediente,temporizador_alimento_valor,potencia_alimento_valor:=receita_alimento_ingrediente\/{aa|->{}},temporizador_alimento_valor\/{aa|->tt},potencia_alimento_valor\/{aa|->pp});
  Expanded_List_Substitution(Machine(Forno),atualizarReceitaAdicinandoIngrediente)==(ii: INGREDIENTES & aa: ALIMENTO & aa: dom(temporizador_alimento_valor) & aa: dom(potencia_alimento_valor) & trava = 0 | receita_alimento_ingrediente:=receita_alimento_ingrediente<+{aa|->(receita_alimento_ingrediente(aa)\/{ii})});
  Expanded_List_Substitution(Machine(Forno),decrementarIngredienteDoEstoque)==(ii: INGREDIENTES & qq: NAT & qq<2000 & qq>0 & ii: dom(estoque_ingrediente_quantidade) & trava = 0 & estoque_ingrediente_quantidade(ii)<2000 | estoque_ingrediente_quantidade:=estoque_ingrediente_quantidade<+{ii|->max({estoque_ingrediente_quantidade(ii)-qq,0})});
  Expanded_List_Substitution(Machine(Forno),incrementarIngredienteDoEstoque)==(ii: INGREDIENTES & qq: NAT & qq<2000 & qq>0 & ii: dom(estoque_ingrediente_quantidade) & estoque_ingrediente_quantidade(ii)<2000 & trava = 0 | estoque_ingrediente_quantidade:=estoque_ingrediente_quantidade<+{ii|->min({estoque_ingrediente_quantidade(ii)+qq,2000})});
  Expanded_List_Substitution(Machine(Forno),inserirNovoIngredienteNoEstoque)==(ii: INGREDIENTES & qq: NAT & qq<2000 & qq>0 & ii/:dom(estoque_ingrediente_quantidade) & trava = 0 | ii/:dom(estoque_ingrediente_quantidade) ==> estoque_ingrediente_quantidade,index_ingrediente:=estoque_ingrediente_quantidade\/{ii|->qq},index_ingrediente\/{card(dom(estoque_ingrediente_quantidade))|->ii} [] not(ii/:dom(estoque_ingrediente_quantidade)) ==> skip);
  Expanded_List_Substitution(Machine(Forno),decrementaTempo)==(cronometro>0 | cronometro:=cronometro-1);
  Expanded_List_Substitution(Machine(Forno),destravarForno)==(trava = 1 & cronometro = 0 | trava:=0);
  Expanded_List_Substitution(Machine(Forno),travarForno)==(trava = 0 | trava:=1);
  Expanded_List_Substitution(Machine(Forno),qntIngredienteNoEstoque)==(ii: INGREDIENTES & ii: dom(estoque_ingrediente_quantidade) | qq:=estoque_ingrediente_quantidade(ii));
  Expanded_List_Substitution(Machine(Forno),numIngredientesNoEstoque)==(btrue | ee:=card(dom(estoque_ingrediente_quantidade)));
  List_Substitution(Machine(Forno),numIngredientesNoEstoque)==(ee:=card(dom(estoque_ingrediente_quantidade)));
  List_Substitution(Machine(Forno),qntIngredienteNoEstoque)==(qq:=estoque_ingrediente_quantidade(ii));
  List_Substitution(Machine(Forno),travarForno)==(trava:=1);
  List_Substitution(Machine(Forno),destravarForno)==(trava:=0);
  List_Substitution(Machine(Forno),decrementaTempo)==(cronometro:=cronometro-1);
  List_Substitution(Machine(Forno),inserirNovoIngredienteNoEstoque)==(IF ii/:dom(estoque_ingrediente_quantidade) THEN estoque_ingrediente_quantidade:=estoque_ingrediente_quantidade\/{ii|->qq} || index_ingrediente:=index_ingrediente\/{card(dom(estoque_ingrediente_quantidade))|->ii} END);
  List_Substitution(Machine(Forno),incrementarIngredienteDoEstoque)==(estoque_ingrediente_quantidade:=estoque_ingrediente_quantidade<+{ii|->min({estoque_ingrediente_quantidade(ii)+qq,2000})});
  List_Substitution(Machine(Forno),decrementarIngredienteDoEstoque)==(estoque_ingrediente_quantidade:=estoque_ingrediente_quantidade<+{ii|->max({estoque_ingrediente_quantidade(ii)-qq,0})});
  List_Substitution(Machine(Forno),atualizarReceitaAdicinandoIngrediente)==(receita_alimento_ingrediente:=receita_alimento_ingrediente<+{aa|->(receita_alimento_ingrediente(aa)\/{ii})});
  List_Substitution(Machine(Forno),cadastrarReceita)==(receita_alimento_ingrediente:=receita_alimento_ingrediente\/{aa|->{}} || temporizador_alimento_valor:=temporizador_alimento_valor\/{aa|->tt} || potencia_alimento_valor:=potencia_alimento_valor\/{aa|->pp});
  List_Substitution(Machine(Forno),fazerAlimento)==(trava:=1 || cronometro:=temporizador_alimento_valor(aa) || ANY yy WHERE yy: receita_alimento_ingrediente(aa) THEN IF estoque_ingrediente_quantidade(yy)>0 THEN estoque_ingrediente_quantidade:=estoque_ingrediente_quantidade<+{yy|->max({estoque_ingrediente_quantidade(yy)-1,0})} END END)
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
  List_ANY_Var(Machine(Forno),decrementaTempo)==(?);
  List_ANY_Var(Machine(Forno),inserirNovoIngredienteNoEstoque)==(?);
  List_ANY_Var(Machine(Forno),incrementarIngredienteDoEstoque)==(?);
  List_ANY_Var(Machine(Forno),decrementarIngredienteDoEstoque)==(?);
  List_ANY_Var(Machine(Forno),atualizarReceitaAdicinandoIngrediente)==(?);
  List_ANY_Var(Machine(Forno),cadastrarReceita)==(?);
  List_ANY_Var(Machine(Forno),fazerAlimento)==(Var(yy) == atype(INGREDIENTES,?,?))
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Forno)) == (INGREDIENTES,ALIMENTO | ? | tempoUso,index_ingrediente,potencia,trava,cronometro,estoque_ingrediente_quantidade,temporizador_alimento_valor,potencia_alimento_valor,receita_ingrediente_quantidade,receita_alimento_ingrediente | ? | numIngredientesNoEstoque,qntIngredienteNoEstoque,travarForno,destravarForno,decrementaTempo,inserirNovoIngredienteNoEstoque,incrementarIngredienteDoEstoque,decrementarIngredienteDoEstoque,atualizarReceitaAdicinandoIngrediente,cadastrarReceita,fazerAlimento | ? | ? | ? | Forno);
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
  Variables(Machine(Forno)) == (Type(tempoUso) == Mvl(btype(INTEGER,?,?));Type(index_ingrediente) == Mvl(SetOf(btype(INTEGER,?,?)*atype(INGREDIENTES,?,?)));Type(potencia) == Mvl(btype(INTEGER,?,?));Type(trava) == Mvl(btype(INTEGER,?,?));Type(cronometro) == Mvl(btype(INTEGER,?,?));Type(estoque_ingrediente_quantidade) == Mvl(SetOf(atype(INGREDIENTES,?,?)*btype(INTEGER,?,?)));Type(temporizador_alimento_valor) == Mvl(SetOf(atype(ALIMENTO,?,?)*btype(INTEGER,?,?)));Type(potencia_alimento_valor) == Mvl(SetOf(atype(ALIMENTO,?,?)*btype(INTEGER,?,?)));Type(receita_ingrediente_quantidade) == Mvl(SetOf(SetOf(atype(INGREDIENTES,?,?))*btype(INTEGER,?,?)));Type(receita_alimento_ingrediente) == Mvl(SetOf(atype(ALIMENTO,?,?)*SetOf(atype(INGREDIENTES,?,?)))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Forno)) == (Type(fazerAlimento) == Cst(No_type,atype(ALIMENTO,?,?));Type(cadastrarReceita) == Cst(No_type,atype(INGREDIENTES,?,?)*atype(ALIMENTO,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(atualizarReceitaAdicinandoIngrediente) == Cst(No_type,atype(INGREDIENTES,?,?)*atype(ALIMENTO,?,?));Type(decrementarIngredienteDoEstoque) == Cst(No_type,btype(INTEGER,?,?)*atype(INGREDIENTES,?,?));Type(incrementarIngredienteDoEstoque) == Cst(No_type,btype(INTEGER,?,?)*atype(INGREDIENTES,?,?));Type(inserirNovoIngredienteNoEstoque) == Cst(No_type,btype(INTEGER,?,?)*atype(INGREDIENTES,?,?));Type(decrementaTempo) == Cst(No_type,No_type);Type(destravarForno) == Cst(No_type,No_type);Type(travarForno) == Cst(No_type,No_type);Type(qntIngredienteNoEstoque) == Cst(btype(INTEGER,?,?),atype(INGREDIENTES,?,?));Type(numIngredientesNoEstoque) == Cst(btype(INTEGER,?,?),No_type));
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
