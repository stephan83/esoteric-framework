// $ANTLR 3.2 Sep 23, 2009 12:02:23 C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g 2010-01-24 02:07:08
package com.esoteric.expressions {
    import org.antlr.runtime.*;
        

    import org.antlr.runtime.tree.*;


    public class ExpressionParser extends Parser {
        public static const tokenNames:Array = [
            "<invalid>", "<EOR>", "<DOWN>", "<UP>", "StmtList", "InstrList", "FuncCall", "PropRef", "PropExp", "CondExp", "CreateArray", "CreateObject", "IfStmt", "WhileStmt", "ForStmt", "FuncDef", "Return", "Local", "PreInc", "PostInc", "PreDec", "PostDec", "Identifier", "NumberLiteral", "StringLiteral", "LineComment", "MultilineComment", "Digit", "Exponent", "HexDigit", "EscapeSequence", "WhiteSpace", "Letter", "UnicodeEscapeChar", "'if'", "'('", "')'", "'else'", "'while'", "'{'", "'}'", "';'", "'='", "'*='", "'/='", "'%='", "'+='", "'-='", "'<<='", "'>>='", "'>>>='", "'&='", "'^='", "'|='", "'var'", "'?'", "':'", "'||'", "'or'", "'&&'", "'and'", "'|'", "'^'", "'&'", "'=='", "'!='", "'==='", "'!=='", "'<'", "'lt'", "'>'", "'gt'", "'<='", "'lte'", "'>='", "'gte'", "'<<'", "'>>'", "'>>>'", "'+'", "'-'", "'*'", "'/'", "'%'", "'~'", "'!'", "'++'", "'--'", "'true'", "'false'", "'null'", "'['", "']'", "'.'", "'function'", "','", "'return'"
        ];
        public static const StmtList:int=4;
        public static const CreateObject:int=11;
        public static const EOF:int=-1;
        public static const Identifier:int=22;
        public static const T__93:int=93;
        public static const T__94:int=94;
        public static const T__91:int=91;
        public static const T__92:int=92;
        public static const T__90:int=90;
        public static const WhiteSpace:int=31;
        public static const T__96:int=96;
        public static const T__95:int=95;
        public static const T__80:int=80;
        public static const T__81:int=81;
        public static const T__82:int=82;
        public static const T__83:int=83;
        public static const UnicodeEscapeChar:int=33;
        public static const InstrList:int=5;
        public static const T__85:int=85;
        public static const T__84:int=84;
        public static const T__87:int=87;
        public static const T__86:int=86;
        public static const T__89:int=89;
        public static const T__88:int=88;
        public static const PreDec:int=20;
        public static const T__71:int=71;
        public static const T__72:int=72;
        public static const T__70:int=70;
        public static const FuncCall:int=6;
        public static const T__76:int=76;
        public static const T__75:int=75;
        public static const T__74:int=74;
        public static const Letter:int=32;
        public static const EscapeSequence:int=30;
        public static const T__73:int=73;
        public static const T__79:int=79;
        public static const T__78:int=78;
        public static const T__77:int=77;
        public static const T__68:int=68;
        public static const T__69:int=69;
        public static const T__66:int=66;
        public static const T__67:int=67;
        public static const T__64:int=64;
        public static const T__65:int=65;
        public static const T__62:int=62;
        public static const T__63:int=63;
        public static const LineComment:int=25;
        public static const Exponent:int=28;
        public static const T__61:int=61;
        public static const T__60:int=60;
        public static const HexDigit:int=29;
        public static const PropExp:int=8;
        public static const T__55:int=55;
        public static const T__56:int=56;
        public static const T__57:int=57;
        public static const T__58:int=58;
        public static const T__51:int=51;
        public static const T__52:int=52;
        public static const FuncDef:int=15;
        public static const T__53:int=53;
        public static const T__54:int=54;
        public static const WhileStmt:int=13;
        public static const T__59:int=59;
        public static const IfStmt:int=12;
        public static const CondExp:int=9;
        public static const Return:int=16;
        public static const T__50:int=50;
        public static const ForStmt:int=14;
        public static const T__42:int=42;
        public static const CreateArray:int=10;
        public static const T__43:int=43;
        public static const T__40:int=40;
        public static const T__41:int=41;
        public static const T__46:int=46;
        public static const T__47:int=47;
        public static const T__44:int=44;
        public static const T__45:int=45;
        public static const T__48:int=48;
        public static const NumberLiteral:int=23;
        public static const T__49:int=49;
        public static const PostDec:int=21;
        public static const Digit:int=27;
        public static const PreInc:int=18;
        public static const StringLiteral:int=24;
        public static const Local:int=17;
        public static const T__34:int=34;
        public static const T__35:int=35;
        public static const T__36:int=36;
        public static const T__37:int=37;
        public static const T__38:int=38;
        public static const T__39:int=39;
        public static const PropRef:int=7;
        public static const PostInc:int=19;
        public static const MultilineComment:int=26;

        // delegates
        // delegators


            public function ExpressionParser(input:TokenStream, state:RecognizerSharedState = null) {
                super(input, state);

                dfa5 = new DFA(this, 5,
                            "()* loopback of 85:3: ( ';' instr | ';' )*",
                            DFA5_eot, DFA5_eof, DFA5_min,
                            DFA5_max, DFA5_accept, DFA5_special,
                            DFA5_transition, DFA5_specialStateTransition);

                dfa7 = new DFA(this, 7,
                            "96:1: exp : ( assignExp | local | condExp );",
                            DFA7_eot, DFA7_eof, DFA7_min,
                            DFA7_max, DFA7_accept, DFA7_special,
                            DFA7_transition, DFA7_specialStateTransition);

                dfa19 = new DFA(this, 19,
                            "()* loopback of 206:3: ( '+' multExp | '-' multExp )*",
                            DFA19_eot, DFA19_eof, DFA19_min,
                            DFA19_max, DFA19_accept, DFA19_special,
                            DFA19_transition, DFA19_specialStateTransition);

                dfa22 = new DFA(this, 22,
                            "231:1: postFix : ( reference '++' -> ^( PostInc reference ) | reference '--' -> ^( PostDec reference ) | atom );",
                            DFA22_eot, DFA22_eof, DFA22_min,
                            DFA22_max, DFA22_accept, DFA22_special,
                            DFA22_transition, DFA22_specialStateTransition);

                dfa26 = new DFA(this, 26,
                            "()* loopback of 250:3: ( '[' e= exp ']' -> ^( PropExp $reference $e) | '.' i= Identifier -> ^( PropRef $reference $i) | '(' (p= params )? ')' '[' e= exp ']' -> ^( PropExp ^( FuncCall $reference $p) $e) | '(' (p= params )? ')' '.' i= Identifier -> ^( PropRef ^( FuncCall $reference $p) $i) )*",
                            DFA26_eot, DFA26_eof, DFA26_min,
                            DFA26_max, DFA26_accept, DFA26_special,
                            DFA26_transition, DFA26_specialStateTransition);

                dfa27 = new DFA(this, 27,
                            "()* loopback of 265:3: ( '[' e= exp ']' -> ^( PropExp $referenceOrFuncCall $e) | '.' i= Identifier -> ^( PropRef $referenceOrFuncCall $i) | '(' p= params ')' -> ^( FuncCall $referenceOrFuncCall $p) | '(' ')' -> ^( FuncCall $referenceOrFuncCall) )*",
                            DFA27_eot, DFA27_eof, DFA27_min,
                            DFA27_max, DFA27_accept, DFA27_special,
                            DFA27_transition, DFA27_specialStateTransition);

                this.state.ruleMemo = new Array(124+1);
                 
            }
            
        protected var adaptor:TreeAdaptor = new CommonTreeAdaptor();

        override public function set treeAdaptor(adaptor:TreeAdaptor):void {
            this.adaptor = adaptor;
        }
        override public function get treeAdaptor():TreeAdaptor {
            return adaptor;
        }

        public override function get tokenNames():Array { return ExpressionParser.tokenNames; }
        public override function get grammarFileName():String { return "C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g"; }


        	private var _errorReporter:IErrorReporter;
        	
        	public function set errorReporter(reporter:IErrorReporter):void { _errorReporter = reporter; }
        	
        	override public function displayRecognitionError(tokenNames:Array, e:RecognitionException):void
        	{
        		var header:String = getErrorHeader(e);
        		var msg:String = getErrorMessage(e, tokenNames);
        		
        		_errorReporter.report(header, msg, e.line);
        	}


        // $ANTLR start main
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:54:1: main : ( stmtList EOF | EOF );
        public final function main():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var main_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var EOF2:Token=null;
            var EOF3:Token=null;
            var stmtList1:ParserRuleReturnScope = null;


            var EOF2_tree:CommonTree=null;
            var EOF3_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 1) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:55:2: ( stmtList EOF | EOF )
                var alt1:int=2;
                var LA1_0:int = input.LA(1);

                if ( ((LA1_0>=22 && LA1_0<=24)||(LA1_0>=34 && LA1_0<=35)||(LA1_0>=38 && LA1_0<=39)||LA1_0==54||(LA1_0>=79 && LA1_0<=80)||(LA1_0>=84 && LA1_0<=91)||LA1_0==94||LA1_0==96) ) {
                    alt1=1;
                }
                else if ( (LA1_0==-1) ) {
                    var LA1_2:int = input.LA(2);

                    if ( (synpred1_Expression()) ) {
                        alt1=1;
                    }
                    else if ( (true) ) {
                        alt1=2;
                    }
                    else {
                        if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                        throw new NoViableAltException("", 1, 2, input);

                    }
                }
                else {
                    if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                    throw new NoViableAltException("", 1, 0, input);

                }
                switch (alt1) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:55:4: stmtList EOF
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_stmtList_in_main152);
                        stmtList1=stmtList();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) root_0 = CommonTree(adaptor.becomeRoot(stmtList1.tree, root_0));
                        EOF2=Token(matchStream(input,EOF,FOLLOW_EOF_in_main155)); if (this.state.failed) return retval;

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:56:4: EOF
                        {
                        root_0 = CommonTree(adaptor.nil());

                        EOF3=Token(matchStream(input,EOF,FOLLOW_EOF_in_main161)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        EOF3_tree = CommonTree(adaptor.create(EOF3));
                        adaptor.addChild(root_0, EOF3_tree);
                        }

                        }
                        break;

                }
                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 1, main_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end main

        // $ANTLR start stmtList
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:59:1: stmtList : ( stmt )* -> ^( StmtList ( stmt )* ) ;
        public final function stmtList():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var stmtList_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var stmt4:ParserRuleReturnScope = null;


            var stream_stmt:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule stmt");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 2) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:60:2: ( ( stmt )* -> ^( StmtList ( stmt )* ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:60:4: ( stmt )*
                {
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:60:4: ( stmt )*
                loop2:
                do {
                    var alt2:int=2;
                    var LA2_0:int = input.LA(1);

                    if ( ((LA2_0>=22 && LA2_0<=24)||(LA2_0>=34 && LA2_0<=35)||(LA2_0>=38 && LA2_0<=39)||LA2_0==54||(LA2_0>=79 && LA2_0<=80)||(LA2_0>=84 && LA2_0<=91)||LA2_0==94||LA2_0==96) ) {
                        alt2=1;
                    }


                    switch (alt2) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:0:0: stmt
                	    {
                	    pushFollow(FOLLOW_stmt_in_stmtList173);
                	    stmt4=stmt();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) stream_stmt.add(stmt4.tree);

                	    }
                	    break;

                	default :
                	    break loop2;
                    }
                } while (true);



                // AST REWRITE
                // elements: stmt
                // token labels: 
                // rule labels: retval
                // token list labels: 
                // rule list labels: 
                if ( this.state.backtracking==0 ) {
                retval.tree = root_0;
                var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                root_0 = CommonTree(adaptor.nil());
                // 60:14: -> ^( StmtList ( stmt )* )
                {
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:60:17: ^( StmtList ( stmt )* )
                    {
                    var root_1:CommonTree = CommonTree(adaptor.nil());
                    root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(StmtList, "StmtList")), root_1));

                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:60:28: ( stmt )*
                    while ( stream_stmt.hasNext ) {
                        adaptor.addChild(root_1, stream_stmt.nextTree());

                    }
                    stream_stmt.reset();

                    adaptor.addChild(root_0, root_1);
                    }

                }

                retval.tree = root_0;}
                }

                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 2, stmtList_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end stmtList

        // $ANTLR start stmt
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:63:1: stmt : ( ifStmt | whileStmt | instrList );
        public final function stmt():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var stmt_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var ifStmt5:ParserRuleReturnScope = null;

            var whileStmt6:ParserRuleReturnScope = null;

            var instrList7:ParserRuleReturnScope = null;



            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 3) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:64:2: ( ifStmt | whileStmt | instrList )
                var alt3:int=3;
                switch ( input.LA(1) ) {
                case 34:
                    {
                    alt3=1;
                    }
                    break;
                case 38:
                    {
                    alt3=2;
                    }
                    break;
                case Identifier:
                case NumberLiteral:
                case StringLiteral:
                case 35:
                case 39:
                case 54:
                case 79:
                case 80:
                case 84:
                case 85:
                case 86:
                case 87:
                case 88:
                case 89:
                case 90:
                case 91:
                case 94:
                case 96:
                    {
                    alt3=3;
                    }
                    break;
                default:
                    if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                    throw new NoViableAltException("", 3, 0, input);

                }

                switch (alt3) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:64:4: ifStmt
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_ifStmt_in_stmt201);
                        ifStmt5=ifStmt();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) root_0 = CommonTree(adaptor.becomeRoot(ifStmt5.tree, root_0));

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:65:4: whileStmt
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_whileStmt_in_stmt207);
                        whileStmt6=whileStmt();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) root_0 = CommonTree(adaptor.becomeRoot(whileStmt6.tree, root_0));

                        }
                        break;
                    case 3 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:66:4: instrList
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_instrList_in_stmt213);
                        instrList7=instrList();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) root_0 = CommonTree(adaptor.becomeRoot(instrList7.tree, root_0));

                        }
                        break;

                }
                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 3, stmt_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end stmt

        // $ANTLR start ifStmt
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:69:1: ifStmt : ( 'if' '(' exp ')' l= block 'else' r= block -> ^( IfStmt exp $l $r) | 'if' '(' exp ')' block 'else' ifStmt -> ^( IfStmt exp block ifStmt ) | 'if' '(' exp ')' block -> ^( IfStmt exp block ) );
        public final function ifStmt():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var ifStmt_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var string_literal8:Token=null;
            var char_literal9:Token=null;
            var char_literal11:Token=null;
            var string_literal12:Token=null;
            var string_literal13:Token=null;
            var char_literal14:Token=null;
            var char_literal16:Token=null;
            var string_literal18:Token=null;
            var string_literal20:Token=null;
            var char_literal21:Token=null;
            var char_literal23:Token=null;
            var l:ParserRuleReturnScope = null;

            var r:ParserRuleReturnScope = null;

            var exp10:ParserRuleReturnScope = null;

            var exp15:ParserRuleReturnScope = null;

            var block17:ParserRuleReturnScope = null;

            var ifStmt19:ParserRuleReturnScope = null;

            var exp22:ParserRuleReturnScope = null;

            var block24:ParserRuleReturnScope = null;


            var string_literal8_tree:CommonTree=null;
            var char_literal9_tree:CommonTree=null;
            var char_literal11_tree:CommonTree=null;
            var string_literal12_tree:CommonTree=null;
            var string_literal13_tree:CommonTree=null;
            var char_literal14_tree:CommonTree=null;
            var char_literal16_tree:CommonTree=null;
            var string_literal18_tree:CommonTree=null;
            var string_literal20_tree:CommonTree=null;
            var char_literal21_tree:CommonTree=null;
            var char_literal23_tree:CommonTree=null;
            var stream_35:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 35");
            var stream_36:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 36");
            var stream_34:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 34");
            var stream_37:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 37");
            var stream_exp:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule exp");
            var stream_block:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule block");
            var stream_ifStmt:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule ifStmt");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 4) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:70:2: ( 'if' '(' exp ')' l= block 'else' r= block -> ^( IfStmt exp $l $r) | 'if' '(' exp ')' block 'else' ifStmt -> ^( IfStmt exp block ifStmt ) | 'if' '(' exp ')' block -> ^( IfStmt exp block ) )
                var alt4:int=3;
                var LA4_0:int = input.LA(1);

                if ( (LA4_0==34) ) {
                    var LA4_1:int = input.LA(2);

                    if ( (synpred5_Expression()) ) {
                        alt4=1;
                    }
                    else if ( (synpred6_Expression()) ) {
                        alt4=2;
                    }
                    else if ( (true) ) {
                        alt4=3;
                    }
                    else {
                        if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                        throw new NoViableAltException("", 4, 1, input);

                    }
                }
                else {
                    if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                    throw new NoViableAltException("", 4, 0, input);

                }
                switch (alt4) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:70:4: 'if' '(' exp ')' l= block 'else' r= block
                        {
                        string_literal8=Token(matchStream(input,34,FOLLOW_34_in_ifStmt226)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_34.add(string_literal8);

                        char_literal9=Token(matchStream(input,35,FOLLOW_35_in_ifStmt228)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_35.add(char_literal9);

                        pushFollow(FOLLOW_exp_in_ifStmt230);
                        exp10=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp10.tree);
                        char_literal11=Token(matchStream(input,36,FOLLOW_36_in_ifStmt232)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_36.add(char_literal11);

                        pushFollow(FOLLOW_block_in_ifStmt236);
                        l=block();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_block.add(l.tree);
                        string_literal12=Token(matchStream(input,37,FOLLOW_37_in_ifStmt238)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_37.add(string_literal12);

                        pushFollow(FOLLOW_block_in_ifStmt242);
                        r=block();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_block.add(r.tree);


                        // AST REWRITE
                        // elements: r, exp, l
                        // token labels: 
                        // rule labels: retval, r, l
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);
                        var stream_r:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule r",r!=null?r.tree:null);
                        var stream_l:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule l",l!=null?l.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 70:44: -> ^( IfStmt exp $l $r)
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:70:47: ^( IfStmt exp $l $r)
                            {
                            var root_1:CommonTree = CommonTree(adaptor.nil());
                            root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(IfStmt, "IfStmt")), root_1));

                            adaptor.addChild(root_1, stream_exp.nextTree());
                            adaptor.addChild(root_1, stream_l.nextTree());
                            adaptor.addChild(root_1, stream_r.nextTree());

                            adaptor.addChild(root_0, root_1);
                            }

                        }

                        retval.tree = root_0;}
                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:71:4: 'if' '(' exp ')' block 'else' ifStmt
                        {
                        string_literal13=Token(matchStream(input,34,FOLLOW_34_in_ifStmt261)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_34.add(string_literal13);

                        char_literal14=Token(matchStream(input,35,FOLLOW_35_in_ifStmt263)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_35.add(char_literal14);

                        pushFollow(FOLLOW_exp_in_ifStmt265);
                        exp15=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp15.tree);
                        char_literal16=Token(matchStream(input,36,FOLLOW_36_in_ifStmt267)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_36.add(char_literal16);

                        pushFollow(FOLLOW_block_in_ifStmt269);
                        block17=block();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_block.add(block17.tree);
                        string_literal18=Token(matchStream(input,37,FOLLOW_37_in_ifStmt271)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_37.add(string_literal18);

                        pushFollow(FOLLOW_ifStmt_in_ifStmt273);
                        ifStmt19=ifStmt();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_ifStmt.add(ifStmt19.tree);


                        // AST REWRITE
                        // elements: block, exp, ifStmt
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 71:41: -> ^( IfStmt exp block ifStmt )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:71:44: ^( IfStmt exp block ifStmt )
                            {
                            var root_1:CommonTree = CommonTree(adaptor.nil());
                            root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(IfStmt, "IfStmt")), root_1));

                            adaptor.addChild(root_1, stream_exp.nextTree());
                            adaptor.addChild(root_1, stream_block.nextTree());
                            adaptor.addChild(root_1, stream_ifStmt.nextTree());

                            adaptor.addChild(root_0, root_1);
                            }

                        }

                        retval.tree = root_0;}
                        }
                        break;
                    case 3 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:72:4: 'if' '(' exp ')' block
                        {
                        string_literal20=Token(matchStream(input,34,FOLLOW_34_in_ifStmt290)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_34.add(string_literal20);

                        char_literal21=Token(matchStream(input,35,FOLLOW_35_in_ifStmt292)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_35.add(char_literal21);

                        pushFollow(FOLLOW_exp_in_ifStmt294);
                        exp22=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp22.tree);
                        char_literal23=Token(matchStream(input,36,FOLLOW_36_in_ifStmt296)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_36.add(char_literal23);

                        pushFollow(FOLLOW_block_in_ifStmt298);
                        block24=block();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_block.add(block24.tree);


                        // AST REWRITE
                        // elements: block, exp
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 72:29: -> ^( IfStmt exp block )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:72:32: ^( IfStmt exp block )
                            {
                            var root_1:CommonTree = CommonTree(adaptor.nil());
                            root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(IfStmt, "IfStmt")), root_1));

                            adaptor.addChild(root_1, stream_exp.nextTree());
                            adaptor.addChild(root_1, stream_block.nextTree());

                            adaptor.addChild(root_0, root_1);
                            }

                        }

                        retval.tree = root_0;}
                        }
                        break;

                }
                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 4, ifStmt_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end ifStmt

        // $ANTLR start whileStmt
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:75:1: whileStmt : 'while' '(' exp ')' block -> ^( WhileStmt exp block ) ;
        public final function whileStmt():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var whileStmt_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var string_literal25:Token=null;
            var char_literal26:Token=null;
            var char_literal28:Token=null;
            var exp27:ParserRuleReturnScope = null;

            var block29:ParserRuleReturnScope = null;


            var string_literal25_tree:CommonTree=null;
            var char_literal26_tree:CommonTree=null;
            var char_literal28_tree:CommonTree=null;
            var stream_35:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 35");
            var stream_36:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 36");
            var stream_38:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 38");
            var stream_exp:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule exp");
            var stream_block:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule block");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 5) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:76:2: ( 'while' '(' exp ')' block -> ^( WhileStmt exp block ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:76:4: 'while' '(' exp ')' block
                {
                string_literal25=Token(matchStream(input,38,FOLLOW_38_in_whileStmt322)); if (this.state.failed) return retval; 
                if ( this.state.backtracking==0 ) stream_38.add(string_literal25);

                char_literal26=Token(matchStream(input,35,FOLLOW_35_in_whileStmt324)); if (this.state.failed) return retval; 
                if ( this.state.backtracking==0 ) stream_35.add(char_literal26);

                pushFollow(FOLLOW_exp_in_whileStmt326);
                exp27=exp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) stream_exp.add(exp27.tree);
                char_literal28=Token(matchStream(input,36,FOLLOW_36_in_whileStmt328)); if (this.state.failed) return retval; 
                if ( this.state.backtracking==0 ) stream_36.add(char_literal28);

                pushFollow(FOLLOW_block_in_whileStmt330);
                block29=block();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) stream_block.add(block29.tree);


                // AST REWRITE
                // elements: exp, block
                // token labels: 
                // rule labels: retval
                // token list labels: 
                // rule list labels: 
                if ( this.state.backtracking==0 ) {
                retval.tree = root_0;
                var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                root_0 = CommonTree(adaptor.nil());
                // 76:31: -> ^( WhileStmt exp block )
                {
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:76:34: ^( WhileStmt exp block )
                    {
                    var root_1:CommonTree = CommonTree(adaptor.nil());
                    root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(WhileStmt, "WhileStmt")), root_1));

                    adaptor.addChild(root_1, stream_exp.nextTree());
                    adaptor.addChild(root_1, stream_block.nextTree());

                    adaptor.addChild(root_0, root_1);
                    }

                }

                retval.tree = root_0;}
                }

                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 5, whileStmt_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end whileStmt

        // $ANTLR start block
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:79:1: block : '{' stmtList '}' -> ^( stmtList ) ;
        public final function block():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var block_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal30:Token=null;
            var char_literal32:Token=null;
            var stmtList31:ParserRuleReturnScope = null;


            var char_literal30_tree:CommonTree=null;
            var char_literal32_tree:CommonTree=null;
            var stream_40:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 40");
            var stream_39:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 39");
            var stream_stmtList:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule stmtList");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 6) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:80:2: ( '{' stmtList '}' -> ^( stmtList ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:80:4: '{' stmtList '}'
                {
                char_literal30=Token(matchStream(input,39,FOLLOW_39_in_block353)); if (this.state.failed) return retval; 
                if ( this.state.backtracking==0 ) stream_39.add(char_literal30);

                pushFollow(FOLLOW_stmtList_in_block355);
                stmtList31=stmtList();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) stream_stmtList.add(stmtList31.tree);
                char_literal32=Token(matchStream(input,40,FOLLOW_40_in_block357)); if (this.state.failed) return retval; 
                if ( this.state.backtracking==0 ) stream_40.add(char_literal32);



                // AST REWRITE
                // elements: stmtList
                // token labels: 
                // rule labels: retval
                // token list labels: 
                // rule list labels: 
                if ( this.state.backtracking==0 ) {
                retval.tree = root_0;
                var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                root_0 = CommonTree(adaptor.nil());
                // 80:23: -> ^( stmtList )
                {
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:80:26: ^( stmtList )
                    {
                    var root_1:CommonTree = CommonTree(adaptor.nil());
                    root_1 = CommonTree(adaptor.becomeRoot(stream_stmtList.nextNode(), root_1));

                    adaptor.addChild(root_0, root_1);
                    }

                }

                retval.tree = root_0;}
                }

                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 6, block_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end block

        // $ANTLR start instrList
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:83:1: instrList : instr ( ';' instr | ';' )* -> ^( InstrList ( instr )+ ) ;
        public final function instrList():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var instrList_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal34:Token=null;
            var char_literal36:Token=null;
            var instr33:ParserRuleReturnScope = null;

            var instr35:ParserRuleReturnScope = null;


            var char_literal34_tree:CommonTree=null;
            var char_literal36_tree:CommonTree=null;
            var stream_41:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 41");
            var stream_instr:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule instr");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 7) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:84:2: ( instr ( ';' instr | ';' )* -> ^( InstrList ( instr )+ ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:84:4: instr ( ';' instr | ';' )*
                {
                pushFollow(FOLLOW_instr_in_instrList376);
                instr33=instr();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) stream_instr.add(instr33.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:85:3: ( ';' instr | ';' )*
                loop5:
                do {
                    var alt5:int=3;
                    alt5 = dfa5.predict(input);
                    switch (alt5) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:86:4: ';' instr
                	    {
                	    char_literal34=Token(matchStream(input,41,FOLLOW_41_in_instrList385)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_41.add(char_literal34);

                	    pushFollow(FOLLOW_instr_in_instrList387);
                	    instr35=instr();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) stream_instr.add(instr35.tree);

                	    }
                	    break;
                	case 2 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:87:5: ';'
                	    {
                	    char_literal36=Token(matchStream(input,41,FOLLOW_41_in_instrList393)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_41.add(char_literal36);


                	    }
                	    break;

                	default :
                	    break loop5;
                    }
                } while (true);



                // AST REWRITE
                // elements: instr
                // token labels: 
                // rule labels: retval
                // token list labels: 
                // rule list labels: 
                if ( this.state.backtracking==0 ) {
                retval.tree = root_0;
                var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                root_0 = CommonTree(adaptor.nil());
                // 88:10: -> ^( InstrList ( instr )+ )
                {
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:88:13: ^( InstrList ( instr )+ )
                    {
                    var root_1:CommonTree = CommonTree(adaptor.nil());
                    root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(InstrList, "InstrList")), root_1));

                    if ( !(stream_instr.hasNext) ) {
                        throw new RewriteEarlyExitException();
                    }
                    while ( stream_instr.hasNext ) {
                        adaptor.addChild(root_1, stream_instr.nextTree());

                    }
                    stream_instr.reset();

                    adaptor.addChild(root_0, root_1);
                    }

                }

                retval.tree = root_0;}
                }

                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 7, instrList_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end instrList

        // $ANTLR start instr
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:91:1: instr : ( exp | ret );
        public final function instr():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var instr_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var exp37:ParserRuleReturnScope = null;

            var ret38:ParserRuleReturnScope = null;



            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 8) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:92:2: ( exp | ret )
                var alt6:int=2;
                var LA6_0:int = input.LA(1);

                if ( ((LA6_0>=22 && LA6_0<=24)||LA6_0==35||LA6_0==39||LA6_0==54||(LA6_0>=79 && LA6_0<=80)||(LA6_0>=84 && LA6_0<=91)||LA6_0==94) ) {
                    alt6=1;
                }
                else if ( (LA6_0==96) ) {
                    alt6=2;
                }
                else {
                    if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                    throw new NoViableAltException("", 6, 0, input);

                }
                switch (alt6) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:92:4: exp
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_exp_in_instr423);
                        exp37=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, exp37.tree);

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:93:4: ret
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_ret_in_instr428);
                        ret38=ret();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, ret38.tree);

                        }
                        break;

                }
                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 8, instr_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end instr

        // $ANTLR start exp
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:96:1: exp : ( assignExp | local | condExp );
        public final function exp():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var exp_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var assignExp39:ParserRuleReturnScope = null;

            var local40:ParserRuleReturnScope = null;

            var condExp41:ParserRuleReturnScope = null;



            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 9) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:97:2: ( assignExp | local | condExp )
                var alt7:int=3;
                alt7 = dfa7.predict(input);
                switch (alt7) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:97:4: assignExp
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_assignExp_in_exp441);
                        assignExp39=assignExp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) root_0 = CommonTree(adaptor.becomeRoot(assignExp39.tree, root_0));

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:98:4: local
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_local_in_exp447);
                        local40=local();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) root_0 = CommonTree(adaptor.becomeRoot(local40.tree, root_0));

                        }
                        break;
                    case 3 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:99:4: condExp
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_condExp_in_exp453);
                        condExp41=condExp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) root_0 = CommonTree(adaptor.becomeRoot(condExp41.tree, root_0));

                        }
                        break;

                }
                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 9, exp_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end exp

        // $ANTLR start assignExp
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:102:1: assignExp : reference ( '=' exp -> ^( '=' exp reference ) | '*=' exp -> ^( '*=' exp reference ) | '/=' exp -> ^( '/=' exp reference ) | '%=' exp -> ^( '%=' exp reference ) | '+=' exp -> ^( '+=' exp reference ) | '-=' exp -> ^( '-=' exp reference ) | '<<=' exp -> ^( '<<=' exp reference ) | '>>=' exp -> ^( '>>=' exp reference ) | '>>>=' exp -> ^( '>>>=' exp reference ) | '&=' exp -> ^( '&=' exp reference ) | '^=' exp -> ^( '^=' exp reference ) | '|=' exp -> ^( '|=' exp reference ) ) ;
        public final function assignExp():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var assignExp_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal43:Token=null;
            var string_literal45:Token=null;
            var string_literal47:Token=null;
            var string_literal49:Token=null;
            var string_literal51:Token=null;
            var string_literal53:Token=null;
            var string_literal55:Token=null;
            var string_literal57:Token=null;
            var string_literal59:Token=null;
            var string_literal61:Token=null;
            var string_literal63:Token=null;
            var string_literal65:Token=null;
            var reference42:ParserRuleReturnScope = null;

            var exp44:ParserRuleReturnScope = null;

            var exp46:ParserRuleReturnScope = null;

            var exp48:ParserRuleReturnScope = null;

            var exp50:ParserRuleReturnScope = null;

            var exp52:ParserRuleReturnScope = null;

            var exp54:ParserRuleReturnScope = null;

            var exp56:ParserRuleReturnScope = null;

            var exp58:ParserRuleReturnScope = null;

            var exp60:ParserRuleReturnScope = null;

            var exp62:ParserRuleReturnScope = null;

            var exp64:ParserRuleReturnScope = null;

            var exp66:ParserRuleReturnScope = null;


            var char_literal43_tree:CommonTree=null;
            var string_literal45_tree:CommonTree=null;
            var string_literal47_tree:CommonTree=null;
            var string_literal49_tree:CommonTree=null;
            var string_literal51_tree:CommonTree=null;
            var string_literal53_tree:CommonTree=null;
            var string_literal55_tree:CommonTree=null;
            var string_literal57_tree:CommonTree=null;
            var string_literal59_tree:CommonTree=null;
            var string_literal61_tree:CommonTree=null;
            var string_literal63_tree:CommonTree=null;
            var string_literal65_tree:CommonTree=null;
            var stream_49:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 49");
            var stream_48:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 48");
            var stream_43:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 43");
            var stream_45:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 45");
            var stream_44:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 44");
            var stream_42:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 42");
            var stream_47:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 47");
            var stream_46:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 46");
            var stream_51:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 51");
            var stream_52:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 52");
            var stream_53:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 53");
            var stream_50:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 50");
            var stream_exp:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule exp");
            var stream_reference:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule reference");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 10) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:103:2: ( reference ( '=' exp -> ^( '=' exp reference ) | '*=' exp -> ^( '*=' exp reference ) | '/=' exp -> ^( '/=' exp reference ) | '%=' exp -> ^( '%=' exp reference ) | '+=' exp -> ^( '+=' exp reference ) | '-=' exp -> ^( '-=' exp reference ) | '<<=' exp -> ^( '<<=' exp reference ) | '>>=' exp -> ^( '>>=' exp reference ) | '>>>=' exp -> ^( '>>>=' exp reference ) | '&=' exp -> ^( '&=' exp reference ) | '^=' exp -> ^( '^=' exp reference ) | '|=' exp -> ^( '|=' exp reference ) ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:103:4: reference ( '=' exp -> ^( '=' exp reference ) | '*=' exp -> ^( '*=' exp reference ) | '/=' exp -> ^( '/=' exp reference ) | '%=' exp -> ^( '%=' exp reference ) | '+=' exp -> ^( '+=' exp reference ) | '-=' exp -> ^( '-=' exp reference ) | '<<=' exp -> ^( '<<=' exp reference ) | '>>=' exp -> ^( '>>=' exp reference ) | '>>>=' exp -> ^( '>>>=' exp reference ) | '&=' exp -> ^( '&=' exp reference ) | '^=' exp -> ^( '^=' exp reference ) | '|=' exp -> ^( '|=' exp reference ) )
                {
                pushFollow(FOLLOW_reference_in_assignExp466);
                reference42=reference();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) stream_reference.add(reference42.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:104:3: ( '=' exp -> ^( '=' exp reference ) | '*=' exp -> ^( '*=' exp reference ) | '/=' exp -> ^( '/=' exp reference ) | '%=' exp -> ^( '%=' exp reference ) | '+=' exp -> ^( '+=' exp reference ) | '-=' exp -> ^( '-=' exp reference ) | '<<=' exp -> ^( '<<=' exp reference ) | '>>=' exp -> ^( '>>=' exp reference ) | '>>>=' exp -> ^( '>>>=' exp reference ) | '&=' exp -> ^( '&=' exp reference ) | '^=' exp -> ^( '^=' exp reference ) | '|=' exp -> ^( '|=' exp reference ) )
                var alt8:int=12;
                switch ( input.LA(1) ) {
                case 42:
                    {
                    alt8=1;
                    }
                    break;
                case 43:
                    {
                    alt8=2;
                    }
                    break;
                case 44:
                    {
                    alt8=3;
                    }
                    break;
                case 45:
                    {
                    alt8=4;
                    }
                    break;
                case 46:
                    {
                    alt8=5;
                    }
                    break;
                case 47:
                    {
                    alt8=6;
                    }
                    break;
                case 48:
                    {
                    alt8=7;
                    }
                    break;
                case 49:
                    {
                    alt8=8;
                    }
                    break;
                case 50:
                    {
                    alt8=9;
                    }
                    break;
                case 51:
                    {
                    alt8=10;
                    }
                    break;
                case 52:
                    {
                    alt8=11;
                    }
                    break;
                case 53:
                    {
                    alt8=12;
                    }
                    break;
                default:
                    if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                    throw new NoViableAltException("", 8, 0, input);

                }

                switch (alt8) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:105:4: '=' exp
                        {
                        char_literal43=Token(matchStream(input,42,FOLLOW_42_in_assignExp475)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_42.add(char_literal43);

                        pushFollow(FOLLOW_exp_in_assignExp477);
                        exp44=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp44.tree);


                        // AST REWRITE
                        // elements: reference, exp, 42
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 105:15: -> ^( '=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:105:18: ^( '=' exp reference )
                            {
                            var root_1:CommonTree = CommonTree(adaptor.nil());
                            root_1 = CommonTree(adaptor.becomeRoot(stream_42.nextNode(), root_1));

                            adaptor.addChild(root_1, stream_exp.nextTree());
                            adaptor.addChild(root_1, stream_reference.nextTree());

                            adaptor.addChild(root_0, root_1);
                            }

                        }

                        retval.tree = root_0;}
                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:106:5: '*=' exp
                        {
                        string_literal45=Token(matchStream(input,43,FOLLOW_43_in_assignExp496)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_43.add(string_literal45);

                        pushFollow(FOLLOW_exp_in_assignExp498);
                        exp46=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp46.tree);


                        // AST REWRITE
                        // elements: 43, reference, exp
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 106:16: -> ^( '*=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:106:19: ^( '*=' exp reference )
                            {
                            var root_1:CommonTree = CommonTree(adaptor.nil());
                            root_1 = CommonTree(adaptor.becomeRoot(stream_43.nextNode(), root_1));

                            adaptor.addChild(root_1, stream_exp.nextTree());
                            adaptor.addChild(root_1, stream_reference.nextTree());

                            adaptor.addChild(root_0, root_1);
                            }

                        }

                        retval.tree = root_0;}
                        }
                        break;
                    case 3 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:107:5: '/=' exp
                        {
                        string_literal47=Token(matchStream(input,44,FOLLOW_44_in_assignExp516)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_44.add(string_literal47);

                        pushFollow(FOLLOW_exp_in_assignExp518);
                        exp48=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp48.tree);


                        // AST REWRITE
                        // elements: exp, reference, 44
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 107:16: -> ^( '/=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:107:19: ^( '/=' exp reference )
                            {
                            var root_1:CommonTree = CommonTree(adaptor.nil());
                            root_1 = CommonTree(adaptor.becomeRoot(stream_44.nextNode(), root_1));

                            adaptor.addChild(root_1, stream_exp.nextTree());
                            adaptor.addChild(root_1, stream_reference.nextTree());

                            adaptor.addChild(root_0, root_1);
                            }

                        }

                        retval.tree = root_0;}
                        }
                        break;
                    case 4 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:108:5: '%=' exp
                        {
                        string_literal49=Token(matchStream(input,45,FOLLOW_45_in_assignExp536)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_45.add(string_literal49);

                        pushFollow(FOLLOW_exp_in_assignExp538);
                        exp50=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp50.tree);


                        // AST REWRITE
                        // elements: reference, exp, 45
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 108:16: -> ^( '%=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:108:19: ^( '%=' exp reference )
                            {
                            var root_1:CommonTree = CommonTree(adaptor.nil());
                            root_1 = CommonTree(adaptor.becomeRoot(stream_45.nextNode(), root_1));

                            adaptor.addChild(root_1, stream_exp.nextTree());
                            adaptor.addChild(root_1, stream_reference.nextTree());

                            adaptor.addChild(root_0, root_1);
                            }

                        }

                        retval.tree = root_0;}
                        }
                        break;
                    case 5 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:109:5: '+=' exp
                        {
                        string_literal51=Token(matchStream(input,46,FOLLOW_46_in_assignExp556)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_46.add(string_literal51);

                        pushFollow(FOLLOW_exp_in_assignExp558);
                        exp52=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp52.tree);


                        // AST REWRITE
                        // elements: exp, 46, reference
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 109:16: -> ^( '+=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:109:19: ^( '+=' exp reference )
                            {
                            var root_1:CommonTree = CommonTree(adaptor.nil());
                            root_1 = CommonTree(adaptor.becomeRoot(stream_46.nextNode(), root_1));

                            adaptor.addChild(root_1, stream_exp.nextTree());
                            adaptor.addChild(root_1, stream_reference.nextTree());

                            adaptor.addChild(root_0, root_1);
                            }

                        }

                        retval.tree = root_0;}
                        }
                        break;
                    case 6 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:110:5: '-=' exp
                        {
                        string_literal53=Token(matchStream(input,47,FOLLOW_47_in_assignExp576)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_47.add(string_literal53);

                        pushFollow(FOLLOW_exp_in_assignExp578);
                        exp54=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp54.tree);


                        // AST REWRITE
                        // elements: reference, 47, exp
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 110:16: -> ^( '-=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:110:19: ^( '-=' exp reference )
                            {
                            var root_1:CommonTree = CommonTree(adaptor.nil());
                            root_1 = CommonTree(adaptor.becomeRoot(stream_47.nextNode(), root_1));

                            adaptor.addChild(root_1, stream_exp.nextTree());
                            adaptor.addChild(root_1, stream_reference.nextTree());

                            adaptor.addChild(root_0, root_1);
                            }

                        }

                        retval.tree = root_0;}
                        }
                        break;
                    case 7 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:111:5: '<<=' exp
                        {
                        string_literal55=Token(matchStream(input,48,FOLLOW_48_in_assignExp596)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_48.add(string_literal55);

                        pushFollow(FOLLOW_exp_in_assignExp598);
                        exp56=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp56.tree);


                        // AST REWRITE
                        // elements: exp, reference, 48
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 111:17: -> ^( '<<=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:111:20: ^( '<<=' exp reference )
                            {
                            var root_1:CommonTree = CommonTree(adaptor.nil());
                            root_1 = CommonTree(adaptor.becomeRoot(stream_48.nextNode(), root_1));

                            adaptor.addChild(root_1, stream_exp.nextTree());
                            adaptor.addChild(root_1, stream_reference.nextTree());

                            adaptor.addChild(root_0, root_1);
                            }

                        }

                        retval.tree = root_0;}
                        }
                        break;
                    case 8 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:112:5: '>>=' exp
                        {
                        string_literal57=Token(matchStream(input,49,FOLLOW_49_in_assignExp616)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_49.add(string_literal57);

                        pushFollow(FOLLOW_exp_in_assignExp618);
                        exp58=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp58.tree);


                        // AST REWRITE
                        // elements: 49, exp, reference
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 112:17: -> ^( '>>=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:112:20: ^( '>>=' exp reference )
                            {
                            var root_1:CommonTree = CommonTree(adaptor.nil());
                            root_1 = CommonTree(adaptor.becomeRoot(stream_49.nextNode(), root_1));

                            adaptor.addChild(root_1, stream_exp.nextTree());
                            adaptor.addChild(root_1, stream_reference.nextTree());

                            adaptor.addChild(root_0, root_1);
                            }

                        }

                        retval.tree = root_0;}
                        }
                        break;
                    case 9 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:113:5: '>>>=' exp
                        {
                        string_literal59=Token(matchStream(input,50,FOLLOW_50_in_assignExp636)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_50.add(string_literal59);

                        pushFollow(FOLLOW_exp_in_assignExp638);
                        exp60=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp60.tree);


                        // AST REWRITE
                        // elements: reference, exp, 50
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 113:18: -> ^( '>>>=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:113:21: ^( '>>>=' exp reference )
                            {
                            var root_1:CommonTree = CommonTree(adaptor.nil());
                            root_1 = CommonTree(adaptor.becomeRoot(stream_50.nextNode(), root_1));

                            adaptor.addChild(root_1, stream_exp.nextTree());
                            adaptor.addChild(root_1, stream_reference.nextTree());

                            adaptor.addChild(root_0, root_1);
                            }

                        }

                        retval.tree = root_0;}
                        }
                        break;
                    case 10 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:114:5: '&=' exp
                        {
                        string_literal61=Token(matchStream(input,51,FOLLOW_51_in_assignExp656)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_51.add(string_literal61);

                        pushFollow(FOLLOW_exp_in_assignExp658);
                        exp62=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp62.tree);


                        // AST REWRITE
                        // elements: reference, exp, 51
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 114:16: -> ^( '&=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:114:19: ^( '&=' exp reference )
                            {
                            var root_1:CommonTree = CommonTree(adaptor.nil());
                            root_1 = CommonTree(adaptor.becomeRoot(stream_51.nextNode(), root_1));

                            adaptor.addChild(root_1, stream_exp.nextTree());
                            adaptor.addChild(root_1, stream_reference.nextTree());

                            adaptor.addChild(root_0, root_1);
                            }

                        }

                        retval.tree = root_0;}
                        }
                        break;
                    case 11 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:115:5: '^=' exp
                        {
                        string_literal63=Token(matchStream(input,52,FOLLOW_52_in_assignExp676)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_52.add(string_literal63);

                        pushFollow(FOLLOW_exp_in_assignExp678);
                        exp64=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp64.tree);


                        // AST REWRITE
                        // elements: reference, exp, 52
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 115:16: -> ^( '^=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:115:19: ^( '^=' exp reference )
                            {
                            var root_1:CommonTree = CommonTree(adaptor.nil());
                            root_1 = CommonTree(adaptor.becomeRoot(stream_52.nextNode(), root_1));

                            adaptor.addChild(root_1, stream_exp.nextTree());
                            adaptor.addChild(root_1, stream_reference.nextTree());

                            adaptor.addChild(root_0, root_1);
                            }

                        }

                        retval.tree = root_0;}
                        }
                        break;
                    case 12 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:116:5: '|=' exp
                        {
                        string_literal65=Token(matchStream(input,53,FOLLOW_53_in_assignExp696)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_53.add(string_literal65);

                        pushFollow(FOLLOW_exp_in_assignExp698);
                        exp66=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp66.tree);


                        // AST REWRITE
                        // elements: reference, 53, exp
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 116:16: -> ^( '|=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:116:19: ^( '|=' exp reference )
                            {
                            var root_1:CommonTree = CommonTree(adaptor.nil());
                            root_1 = CommonTree(adaptor.becomeRoot(stream_53.nextNode(), root_1));

                            adaptor.addChild(root_1, stream_exp.nextTree());
                            adaptor.addChild(root_1, stream_reference.nextTree());

                            adaptor.addChild(root_0, root_1);
                            }

                        }

                        retval.tree = root_0;}
                        }
                        break;

                }


                }

                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 10, assignExp_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end assignExp

        // $ANTLR start local
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:120:1: local : ( 'var' i= Identifier -> ^( Local $i) | 'var' i= Identifier '=' exp -> ^( Local exp $i) );
        public final function local():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var local_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var i:Token=null;
            var string_literal67:Token=null;
            var string_literal68:Token=null;
            var char_literal69:Token=null;
            var exp70:ParserRuleReturnScope = null;


            var i_tree:CommonTree=null;
            var string_literal67_tree:CommonTree=null;
            var string_literal68_tree:CommonTree=null;
            var char_literal69_tree:CommonTree=null;
            var stream_42:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 42");
            var stream_54:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 54");
            var stream_Identifier:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token Identifier");
            var stream_exp:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule exp");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 11) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:120:7: ( 'var' i= Identifier -> ^( Local $i) | 'var' i= Identifier '=' exp -> ^( Local exp $i) )
                var alt9:int=2;
                var LA9_0:int = input.LA(1);

                if ( (LA9_0==54) ) {
                    var LA9_1:int = input.LA(2);

                    if ( (LA9_1==22) ) {
                        var LA9_2:int = input.LA(3);

                        if ( (LA9_2==42) ) {
                            alt9=2;
                        }
                        else if ( (LA9_2==-1||(LA9_2>=22 && LA9_2<=24)||(LA9_2>=34 && LA9_2<=36)||(LA9_2>=38 && LA9_2<=41)||(LA9_2>=54 && LA9_2<=56)||(LA9_2>=79 && LA9_2<=80)||(LA9_2>=84 && LA9_2<=92)||(LA9_2>=94 && LA9_2<=96)) ) {
                            alt9=1;
                        }
                        else {
                            if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                            throw new NoViableAltException("", 9, 2, input);

                        }
                    }
                    else {
                        if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                        throw new NoViableAltException("", 9, 1, input);

                    }
                }
                else {
                    if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                    throw new NoViableAltException("", 9, 0, input);

                }
                switch (alt9) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:120:9: 'var' i= Identifier
                        {
                        string_literal67=Token(matchStream(input,54,FOLLOW_54_in_local726)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_54.add(string_literal67);

                        i=Token(matchStream(input,Identifier,FOLLOW_Identifier_in_local730)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_Identifier.add(i);



                        // AST REWRITE
                        // elements: i
                        // token labels: i
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_i:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token i",i);
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 120:30: -> ^( Local $i)
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:120:33: ^( Local $i)
                            {
                            var root_1:CommonTree = CommonTree(adaptor.nil());
                            root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(Local, "Local")), root_1));

                            adaptor.addChild(root_1, stream_i.nextNode());

                            adaptor.addChild(root_0, root_1);
                            }

                        }

                        retval.tree = root_0;}
                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:121:4: 'var' i= Identifier '=' exp
                        {
                        string_literal68=Token(matchStream(input,54,FOLLOW_54_in_local746)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_54.add(string_literal68);

                        i=Token(matchStream(input,Identifier,FOLLOW_Identifier_in_local750)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_Identifier.add(i);

                        char_literal69=Token(matchStream(input,42,FOLLOW_42_in_local752)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_42.add(char_literal69);

                        pushFollow(FOLLOW_exp_in_local754);
                        exp70=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp70.tree);


                        // AST REWRITE
                        // elements: exp, i
                        // token labels: i
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_i:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token i",i);
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 121:32: -> ^( Local exp $i)
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:121:35: ^( Local exp $i)
                            {
                            var root_1:CommonTree = CommonTree(adaptor.nil());
                            root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(Local, "Local")), root_1));

                            adaptor.addChild(root_1, stream_exp.nextTree());
                            adaptor.addChild(root_1, stream_i.nextNode());

                            adaptor.addChild(root_0, root_1);
                            }

                        }

                        retval.tree = root_0;}
                        }
                        break;

                }
                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 11, local_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end local

        // $ANTLR start condExp
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:124:1: condExp : (l= logicalOr -> $l) ( '?' e1= exp ':' e2= exp -> ^( CondExp $condExp $e1 $e2) )* ;
        public final function condExp():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var condExp_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal71:Token=null;
            var char_literal72:Token=null;
            var l:ParserRuleReturnScope = null;

            var e1:ParserRuleReturnScope = null;

            var e2:ParserRuleReturnScope = null;


            var char_literal71_tree:CommonTree=null;
            var char_literal72_tree:CommonTree=null;
            var stream_56:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 56");
            var stream_55:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 55");
            var stream_exp:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule exp");
            var stream_logicalOr:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule logicalOr");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 12) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:125:2: ( (l= logicalOr -> $l) ( '?' e1= exp ':' e2= exp -> ^( CondExp $condExp $e1 $e2) )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:125:4: (l= logicalOr -> $l) ( '?' e1= exp ':' e2= exp -> ^( CondExp $condExp $e1 $e2) )*
                {
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:125:4: (l= logicalOr -> $l)
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:125:5: l= logicalOr
                {
                pushFollow(FOLLOW_logicalOr_in_condExp781);
                l=logicalOr();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) stream_logicalOr.add(l.tree);


                // AST REWRITE
                // elements: l
                // token labels: 
                // rule labels: retval, l
                // token list labels: 
                // rule list labels: 
                if ( this.state.backtracking==0 ) {
                retval.tree = root_0;
                var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);
                var stream_l:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule l",l!=null?l.tree:null);

                root_0 = CommonTree(adaptor.nil());
                // 125:20: -> $l
                {
                    adaptor.addChild(root_0, stream_l.nextTree());

                }

                retval.tree = root_0;}
                }

                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:126:3: ( '?' e1= exp ':' e2= exp -> ^( CondExp $condExp $e1 $e2) )*
                loop10:
                do {
                    var alt10:int=2;
                    var LA10_0:int = input.LA(1);

                    if ( (LA10_0==55) ) {
                        var LA10_2:int = input.LA(2);

                        if ( (synpred24_Expression()) ) {
                            alt10=1;
                        }


                    }


                    switch (alt10) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:127:4: '?' e1= exp ':' e2= exp
                	    {
                	    char_literal71=Token(matchStream(input,55,FOLLOW_55_in_condExp799)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_55.add(char_literal71);

                	    pushFollow(FOLLOW_exp_in_condExp806);
                	    e1=exp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) stream_exp.add(e1.tree);
                	    char_literal72=Token(matchStream(input,56,FOLLOW_56_in_condExp811)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_56.add(char_literal72);

                	    pushFollow(FOLLOW_exp_in_condExp818);
                	    e2=exp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) stream_exp.add(e2.tree);


                	    // AST REWRITE
                	    // elements: e1, e2, condExp
                	    // token labels: 
                	    // rule labels: retval, e1, e2
                	    // token list labels: 
                	    // rule list labels: 
                	    if ( this.state.backtracking==0 ) {
                	    retval.tree = root_0;
                	    var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);
                	    var stream_e1:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule e1",e1!=null?e1.tree:null);
                	    var stream_e2:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule e2",e2!=null?e2.tree:null);

                	    root_0 = CommonTree(adaptor.nil());
                	    // 130:14: -> ^( CondExp $condExp $e1 $e2)
                	    {
                	        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:130:17: ^( CondExp $condExp $e1 $e2)
                	        {
                	        var root_1:CommonTree = CommonTree(adaptor.nil());
                	        root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(CondExp, "CondExp")), root_1));

                	        adaptor.addChild(root_1, stream_retval.nextTree());
                	        adaptor.addChild(root_1, stream_e1.nextTree());
                	        adaptor.addChild(root_1, stream_e2.nextTree());

                	        adaptor.addChild(root_0, root_1);
                	        }

                	    }

                	    retval.tree = root_0;}
                	    }
                	    break;

                	default :
                	    break loop10;
                    }
                } while (true);


                }

                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 12, condExp_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end condExp

        // $ANTLR start logicalOr
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:134:1: logicalOr : logicalAnd ( '||' logicalAnd | 'or' logicalAnd )* ;
        public final function logicalOr():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var logicalOr_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var string_literal74:Token=null;
            var string_literal76:Token=null;
            var logicalAnd73:ParserRuleReturnScope = null;

            var logicalAnd75:ParserRuleReturnScope = null;

            var logicalAnd77:ParserRuleReturnScope = null;


            var string_literal74_tree:CommonTree=null;
            var string_literal76_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 13) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:135:2: ( logicalAnd ( '||' logicalAnd | 'or' logicalAnd )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:135:4: logicalAnd ( '||' logicalAnd | 'or' logicalAnd )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_logicalAnd_in_logicalOr852);
                logicalAnd73=logicalAnd();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, logicalAnd73.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:136:3: ( '||' logicalAnd | 'or' logicalAnd )*
                loop11:
                do {
                    var alt11:int=3;
                    var LA11_0:int = input.LA(1);

                    if ( (LA11_0==57) ) {
                        alt11=1;
                    }
                    else if ( (LA11_0==58) ) {
                        alt11=2;
                    }


                    switch (alt11) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:137:4: '||' logicalAnd
                	    {
                	    string_literal74=Token(matchStream(input,57,FOLLOW_57_in_logicalOr861)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal74_tree = CommonTree(adaptor.create(string_literal74));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal74_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_logicalAnd_in_logicalOr864);
                	    logicalAnd75=logicalAnd();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, logicalAnd75.tree);

                	    }
                	    break;
                	case 2 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:138:5: 'or' logicalAnd
                	    {
                	    string_literal76=Token(matchStream(input,58,FOLLOW_58_in_logicalOr870)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal76_tree = CommonTree(adaptor.create(string_literal76));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal76_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_logicalAnd_in_logicalOr873);
                	    logicalAnd77=logicalAnd();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, logicalAnd77.tree);

                	    }
                	    break;

                	default :
                	    break loop11;
                    }
                } while (true);


                }

                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 13, logicalOr_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end logicalOr

        // $ANTLR start logicalAnd
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:142:1: logicalAnd : bitwiseOr ( '&&' bitwiseOr | 'and' bitwiseOr )* ;
        public final function logicalAnd():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var logicalAnd_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var string_literal79:Token=null;
            var string_literal81:Token=null;
            var bitwiseOr78:ParserRuleReturnScope = null;

            var bitwiseOr80:ParserRuleReturnScope = null;

            var bitwiseOr82:ParserRuleReturnScope = null;


            var string_literal79_tree:CommonTree=null;
            var string_literal81_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 14) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:143:2: ( bitwiseOr ( '&&' bitwiseOr | 'and' bitwiseOr )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:143:4: bitwiseOr ( '&&' bitwiseOr | 'and' bitwiseOr )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_bitwiseOr_in_logicalAnd890);
                bitwiseOr78=bitwiseOr();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, bitwiseOr78.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:144:3: ( '&&' bitwiseOr | 'and' bitwiseOr )*
                loop12:
                do {
                    var alt12:int=3;
                    var LA12_0:int = input.LA(1);

                    if ( (LA12_0==59) ) {
                        alt12=1;
                    }
                    else if ( (LA12_0==60) ) {
                        alt12=2;
                    }


                    switch (alt12) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:145:4: '&&' bitwiseOr
                	    {
                	    string_literal79=Token(matchStream(input,59,FOLLOW_59_in_logicalAnd899)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal79_tree = CommonTree(adaptor.create(string_literal79));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal79_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_bitwiseOr_in_logicalAnd902);
                	    bitwiseOr80=bitwiseOr();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, bitwiseOr80.tree);

                	    }
                	    break;
                	case 2 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:146:5: 'and' bitwiseOr
                	    {
                	    string_literal81=Token(matchStream(input,60,FOLLOW_60_in_logicalAnd908)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal81_tree = CommonTree(adaptor.create(string_literal81));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal81_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_bitwiseOr_in_logicalAnd911);
                	    bitwiseOr82=bitwiseOr();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, bitwiseOr82.tree);

                	    }
                	    break;

                	default :
                	    break loop12;
                    }
                } while (true);


                }

                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 14, logicalAnd_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end logicalAnd

        // $ANTLR start bitwiseOr
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:150:1: bitwiseOr : bitwiseXor ( '|' bitwiseXor )* ;
        public final function bitwiseOr():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var bitwiseOr_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal84:Token=null;
            var bitwiseXor83:ParserRuleReturnScope = null;

            var bitwiseXor85:ParserRuleReturnScope = null;


            var char_literal84_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 15) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:151:2: ( bitwiseXor ( '|' bitwiseXor )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:151:4: bitwiseXor ( '|' bitwiseXor )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_bitwiseXor_in_bitwiseOr927);
                bitwiseXor83=bitwiseXor();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, bitwiseXor83.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:152:3: ( '|' bitwiseXor )*
                loop13:
                do {
                    var alt13:int=2;
                    var LA13_0:int = input.LA(1);

                    if ( (LA13_0==61) ) {
                        alt13=1;
                    }


                    switch (alt13) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:153:4: '|' bitwiseXor
                	    {
                	    char_literal84=Token(matchStream(input,61,FOLLOW_61_in_bitwiseOr936)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    char_literal84_tree = CommonTree(adaptor.create(char_literal84));
                	    root_0 = CommonTree(adaptor.becomeRoot(char_literal84_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_bitwiseXor_in_bitwiseOr939);
                	    bitwiseXor85=bitwiseXor();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, bitwiseXor85.tree);

                	    }
                	    break;

                	default :
                	    break loop13;
                    }
                } while (true);


                }

                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 15, bitwiseOr_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end bitwiseOr

        // $ANTLR start bitwiseXor
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:157:1: bitwiseXor : bitwiseAnd ( '^' bitwiseAnd )? ;
        public final function bitwiseXor():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var bitwiseXor_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal87:Token=null;
            var bitwiseAnd86:ParserRuleReturnScope = null;

            var bitwiseAnd88:ParserRuleReturnScope = null;


            var char_literal87_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 16) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:158:2: ( bitwiseAnd ( '^' bitwiseAnd )? )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:158:4: bitwiseAnd ( '^' bitwiseAnd )?
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_bitwiseAnd_in_bitwiseXor955);
                bitwiseAnd86=bitwiseAnd();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, bitwiseAnd86.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:159:3: ( '^' bitwiseAnd )?
                var alt14:int=2;
                var LA14_0:int = input.LA(1);

                if ( (LA14_0==62) ) {
                    alt14=1;
                }
                switch (alt14) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:160:4: '^' bitwiseAnd
                        {
                        char_literal87=Token(matchStream(input,62,FOLLOW_62_in_bitwiseXor964)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        char_literal87_tree = CommonTree(adaptor.create(char_literal87));
                        root_0 = CommonTree(adaptor.becomeRoot(char_literal87_tree, root_0));
                        }
                        pushFollow(FOLLOW_bitwiseAnd_in_bitwiseXor967);
                        bitwiseAnd88=bitwiseAnd();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, bitwiseAnd88.tree);

                        }
                        break;

                }


                }

                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 16, bitwiseXor_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end bitwiseXor

        // $ANTLR start bitwiseAnd
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:164:1: bitwiseAnd : equalExp ( '&' equalExp )* ;
        public final function bitwiseAnd():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var bitwiseAnd_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal90:Token=null;
            var equalExp89:ParserRuleReturnScope = null;

            var equalExp91:ParserRuleReturnScope = null;


            var char_literal90_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 17) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:165:2: ( equalExp ( '&' equalExp )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:165:4: equalExp ( '&' equalExp )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_equalExp_in_bitwiseAnd983);
                equalExp89=equalExp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, equalExp89.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:166:3: ( '&' equalExp )*
                loop15:
                do {
                    var alt15:int=2;
                    var LA15_0:int = input.LA(1);

                    if ( (LA15_0==63) ) {
                        alt15=1;
                    }


                    switch (alt15) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:167:4: '&' equalExp
                	    {
                	    char_literal90=Token(matchStream(input,63,FOLLOW_63_in_bitwiseAnd992)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    char_literal90_tree = CommonTree(adaptor.create(char_literal90));
                	    root_0 = CommonTree(adaptor.becomeRoot(char_literal90_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_equalExp_in_bitwiseAnd995);
                	    equalExp91=equalExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, equalExp91.tree);

                	    }
                	    break;

                	default :
                	    break loop15;
                    }
                } while (true);


                }

                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 17, bitwiseAnd_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end bitwiseAnd

        // $ANTLR start equalExp
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:171:1: equalExp : relExp ( '==' relExp | '!=' relExp | '===' relExp | '!==' relExp )* ;
        public final function equalExp():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var equalExp_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var string_literal93:Token=null;
            var string_literal95:Token=null;
            var string_literal97:Token=null;
            var string_literal99:Token=null;
            var relExp92:ParserRuleReturnScope = null;

            var relExp94:ParserRuleReturnScope = null;

            var relExp96:ParserRuleReturnScope = null;

            var relExp98:ParserRuleReturnScope = null;

            var relExp100:ParserRuleReturnScope = null;


            var string_literal93_tree:CommonTree=null;
            var string_literal95_tree:CommonTree=null;
            var string_literal97_tree:CommonTree=null;
            var string_literal99_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 18) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:172:2: ( relExp ( '==' relExp | '!=' relExp | '===' relExp | '!==' relExp )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:172:4: relExp ( '==' relExp | '!=' relExp | '===' relExp | '!==' relExp )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_relExp_in_equalExp1011);
                relExp92=relExp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, relExp92.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:173:3: ( '==' relExp | '!=' relExp | '===' relExp | '!==' relExp )*
                loop16:
                do {
                    var alt16:int=5;
                    switch ( input.LA(1) ) {
                    case 64:
                        {
                        alt16=1;
                        }
                        break;
                    case 65:
                        {
                        alt16=2;
                        }
                        break;
                    case 66:
                        {
                        alt16=3;
                        }
                        break;
                    case 67:
                        {
                        alt16=4;
                        }
                        break;

                    }

                    switch (alt16) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:174:4: '==' relExp
                	    {
                	    string_literal93=Token(matchStream(input,64,FOLLOW_64_in_equalExp1020)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal93_tree = CommonTree(adaptor.create(string_literal93));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal93_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_relExp_in_equalExp1023);
                	    relExp94=relExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, relExp94.tree);

                	    }
                	    break;
                	case 2 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:175:5: '!=' relExp
                	    {
                	    string_literal95=Token(matchStream(input,65,FOLLOW_65_in_equalExp1029)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal95_tree = CommonTree(adaptor.create(string_literal95));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal95_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_relExp_in_equalExp1032);
                	    relExp96=relExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, relExp96.tree);

                	    }
                	    break;
                	case 3 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:176:5: '===' relExp
                	    {
                	    string_literal97=Token(matchStream(input,66,FOLLOW_66_in_equalExp1038)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal97_tree = CommonTree(adaptor.create(string_literal97));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal97_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_relExp_in_equalExp1041);
                	    relExp98=relExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, relExp98.tree);

                	    }
                	    break;
                	case 4 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:177:5: '!==' relExp
                	    {
                	    string_literal99=Token(matchStream(input,67,FOLLOW_67_in_equalExp1047)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal99_tree = CommonTree(adaptor.create(string_literal99));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal99_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_relExp_in_equalExp1050);
                	    relExp100=relExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, relExp100.tree);

                	    }
                	    break;

                	default :
                	    break loop16;
                    }
                } while (true);


                }

                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 18, equalExp_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end equalExp

        // $ANTLR start relExp
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:181:1: relExp : shiftExp ( '<' shiftExp | 'lt' shiftExp | '>' shiftExp | 'gt' shiftExp | '<=' shiftExp | 'lte' shiftExp | '>=' shiftExp | 'gte' shiftExp )* ;
        public final function relExp():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var relExp_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal102:Token=null;
            var string_literal104:Token=null;
            var char_literal106:Token=null;
            var string_literal108:Token=null;
            var string_literal110:Token=null;
            var string_literal112:Token=null;
            var string_literal114:Token=null;
            var string_literal116:Token=null;
            var shiftExp101:ParserRuleReturnScope = null;

            var shiftExp103:ParserRuleReturnScope = null;

            var shiftExp105:ParserRuleReturnScope = null;

            var shiftExp107:ParserRuleReturnScope = null;

            var shiftExp109:ParserRuleReturnScope = null;

            var shiftExp111:ParserRuleReturnScope = null;

            var shiftExp113:ParserRuleReturnScope = null;

            var shiftExp115:ParserRuleReturnScope = null;

            var shiftExp117:ParserRuleReturnScope = null;


            var char_literal102_tree:CommonTree=null;
            var string_literal104_tree:CommonTree=null;
            var char_literal106_tree:CommonTree=null;
            var string_literal108_tree:CommonTree=null;
            var string_literal110_tree:CommonTree=null;
            var string_literal112_tree:CommonTree=null;
            var string_literal114_tree:CommonTree=null;
            var string_literal116_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 19) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:182:2: ( shiftExp ( '<' shiftExp | 'lt' shiftExp | '>' shiftExp | 'gt' shiftExp | '<=' shiftExp | 'lte' shiftExp | '>=' shiftExp | 'gte' shiftExp )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:182:4: shiftExp ( '<' shiftExp | 'lt' shiftExp | '>' shiftExp | 'gt' shiftExp | '<=' shiftExp | 'lte' shiftExp | '>=' shiftExp | 'gte' shiftExp )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_shiftExp_in_relExp1067);
                shiftExp101=shiftExp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, shiftExp101.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:183:3: ( '<' shiftExp | 'lt' shiftExp | '>' shiftExp | 'gt' shiftExp | '<=' shiftExp | 'lte' shiftExp | '>=' shiftExp | 'gte' shiftExp )*
                loop17:
                do {
                    var alt17:int=9;
                    switch ( input.LA(1) ) {
                    case 68:
                        {
                        alt17=1;
                        }
                        break;
                    case 69:
                        {
                        alt17=2;
                        }
                        break;
                    case 70:
                        {
                        alt17=3;
                        }
                        break;
                    case 71:
                        {
                        alt17=4;
                        }
                        break;
                    case 72:
                        {
                        alt17=5;
                        }
                        break;
                    case 73:
                        {
                        alt17=6;
                        }
                        break;
                    case 74:
                        {
                        alt17=7;
                        }
                        break;
                    case 75:
                        {
                        alt17=8;
                        }
                        break;

                    }

                    switch (alt17) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:184:4: '<' shiftExp
                	    {
                	    char_literal102=Token(matchStream(input,68,FOLLOW_68_in_relExp1076)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    char_literal102_tree = CommonTree(adaptor.create(char_literal102));
                	    root_0 = CommonTree(adaptor.becomeRoot(char_literal102_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_shiftExp_in_relExp1079);
                	    shiftExp103=shiftExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, shiftExp103.tree);

                	    }
                	    break;
                	case 2 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:185:5: 'lt' shiftExp
                	    {
                	    string_literal104=Token(matchStream(input,69,FOLLOW_69_in_relExp1085)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal104_tree = CommonTree(adaptor.create(string_literal104));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal104_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_shiftExp_in_relExp1088);
                	    shiftExp105=shiftExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, shiftExp105.tree);

                	    }
                	    break;
                	case 3 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:186:5: '>' shiftExp
                	    {
                	    char_literal106=Token(matchStream(input,70,FOLLOW_70_in_relExp1094)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    char_literal106_tree = CommonTree(adaptor.create(char_literal106));
                	    root_0 = CommonTree(adaptor.becomeRoot(char_literal106_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_shiftExp_in_relExp1097);
                	    shiftExp107=shiftExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, shiftExp107.tree);

                	    }
                	    break;
                	case 4 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:187:5: 'gt' shiftExp
                	    {
                	    string_literal108=Token(matchStream(input,71,FOLLOW_71_in_relExp1103)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal108_tree = CommonTree(adaptor.create(string_literal108));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal108_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_shiftExp_in_relExp1106);
                	    shiftExp109=shiftExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, shiftExp109.tree);

                	    }
                	    break;
                	case 5 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:188:5: '<=' shiftExp
                	    {
                	    string_literal110=Token(matchStream(input,72,FOLLOW_72_in_relExp1112)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal110_tree = CommonTree(adaptor.create(string_literal110));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal110_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_shiftExp_in_relExp1115);
                	    shiftExp111=shiftExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, shiftExp111.tree);

                	    }
                	    break;
                	case 6 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:189:5: 'lte' shiftExp
                	    {
                	    string_literal112=Token(matchStream(input,73,FOLLOW_73_in_relExp1121)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal112_tree = CommonTree(adaptor.create(string_literal112));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal112_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_shiftExp_in_relExp1124);
                	    shiftExp113=shiftExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, shiftExp113.tree);

                	    }
                	    break;
                	case 7 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:190:5: '>=' shiftExp
                	    {
                	    string_literal114=Token(matchStream(input,74,FOLLOW_74_in_relExp1130)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal114_tree = CommonTree(adaptor.create(string_literal114));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal114_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_shiftExp_in_relExp1133);
                	    shiftExp115=shiftExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, shiftExp115.tree);

                	    }
                	    break;
                	case 8 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:191:5: 'gte' shiftExp
                	    {
                	    string_literal116=Token(matchStream(input,75,FOLLOW_75_in_relExp1139)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal116_tree = CommonTree(adaptor.create(string_literal116));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal116_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_shiftExp_in_relExp1142);
                	    shiftExp117=shiftExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, shiftExp117.tree);

                	    }
                	    break;

                	default :
                	    break loop17;
                    }
                } while (true);


                }

                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 19, relExp_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end relExp

        // $ANTLR start shiftExp
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:195:1: shiftExp : addExp ( '<<' addExp | '>>' addExp | '>>>' addExp )* ;
        public final function shiftExp():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var shiftExp_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var string_literal119:Token=null;
            var string_literal121:Token=null;
            var string_literal123:Token=null;
            var addExp118:ParserRuleReturnScope = null;

            var addExp120:ParserRuleReturnScope = null;

            var addExp122:ParserRuleReturnScope = null;

            var addExp124:ParserRuleReturnScope = null;


            var string_literal119_tree:CommonTree=null;
            var string_literal121_tree:CommonTree=null;
            var string_literal123_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 20) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:196:2: ( addExp ( '<<' addExp | '>>' addExp | '>>>' addExp )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:196:4: addExp ( '<<' addExp | '>>' addExp | '>>>' addExp )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_addExp_in_shiftExp1158);
                addExp118=addExp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, addExp118.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:197:3: ( '<<' addExp | '>>' addExp | '>>>' addExp )*
                loop18:
                do {
                    var alt18:int=4;
                    switch ( input.LA(1) ) {
                    case 76:
                        {
                        alt18=1;
                        }
                        break;
                    case 77:
                        {
                        alt18=2;
                        }
                        break;
                    case 78:
                        {
                        alt18=3;
                        }
                        break;

                    }

                    switch (alt18) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:198:4: '<<' addExp
                	    {
                	    string_literal119=Token(matchStream(input,76,FOLLOW_76_in_shiftExp1167)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal119_tree = CommonTree(adaptor.create(string_literal119));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal119_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_addExp_in_shiftExp1170);
                	    addExp120=addExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, addExp120.tree);

                	    }
                	    break;
                	case 2 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:199:5: '>>' addExp
                	    {
                	    string_literal121=Token(matchStream(input,77,FOLLOW_77_in_shiftExp1176)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal121_tree = CommonTree(adaptor.create(string_literal121));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal121_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_addExp_in_shiftExp1179);
                	    addExp122=addExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, addExp122.tree);

                	    }
                	    break;
                	case 3 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:200:5: '>>>' addExp
                	    {
                	    string_literal123=Token(matchStream(input,78,FOLLOW_78_in_shiftExp1185)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal123_tree = CommonTree(adaptor.create(string_literal123));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal123_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_addExp_in_shiftExp1188);
                	    addExp124=addExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, addExp124.tree);

                	    }
                	    break;

                	default :
                	    break loop18;
                    }
                } while (true);


                }

                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 20, shiftExp_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end shiftExp

        // $ANTLR start addExp
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:204:1: addExp : multExp ( '+' multExp | '-' multExp )* ;
        public final function addExp():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var addExp_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal126:Token=null;
            var char_literal128:Token=null;
            var multExp125:ParserRuleReturnScope = null;

            var multExp127:ParserRuleReturnScope = null;

            var multExp129:ParserRuleReturnScope = null;


            var char_literal126_tree:CommonTree=null;
            var char_literal128_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 21) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:205:2: ( multExp ( '+' multExp | '-' multExp )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:205:4: multExp ( '+' multExp | '-' multExp )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_multExp_in_addExp1204);
                multExp125=multExp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, multExp125.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:206:3: ( '+' multExp | '-' multExp )*
                loop19:
                do {
                    var alt19:int=3;
                    alt19 = dfa19.predict(input);
                    switch (alt19) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:207:4: '+' multExp
                	    {
                	    char_literal126=Token(matchStream(input,79,FOLLOW_79_in_addExp1213)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    char_literal126_tree = CommonTree(adaptor.create(char_literal126));
                	    root_0 = CommonTree(adaptor.becomeRoot(char_literal126_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_multExp_in_addExp1216);
                	    multExp127=multExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, multExp127.tree);

                	    }
                	    break;
                	case 2 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:208:5: '-' multExp
                	    {
                	    char_literal128=Token(matchStream(input,80,FOLLOW_80_in_addExp1222)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    char_literal128_tree = CommonTree(adaptor.create(char_literal128));
                	    root_0 = CommonTree(adaptor.becomeRoot(char_literal128_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_multExp_in_addExp1225);
                	    multExp129=multExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, multExp129.tree);

                	    }
                	    break;

                	default :
                	    break loop19;
                    }
                } while (true);


                }

                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 21, addExp_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end addExp

        // $ANTLR start multExp
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:212:1: multExp : unaryExp ( '*' unaryExp | '/' unaryExp | '%' unaryExp )* ;
        public final function multExp():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var multExp_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal131:Token=null;
            var char_literal133:Token=null;
            var char_literal135:Token=null;
            var unaryExp130:ParserRuleReturnScope = null;

            var unaryExp132:ParserRuleReturnScope = null;

            var unaryExp134:ParserRuleReturnScope = null;

            var unaryExp136:ParserRuleReturnScope = null;


            var char_literal131_tree:CommonTree=null;
            var char_literal133_tree:CommonTree=null;
            var char_literal135_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 22) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:213:2: ( unaryExp ( '*' unaryExp | '/' unaryExp | '%' unaryExp )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:213:5: unaryExp ( '*' unaryExp | '/' unaryExp | '%' unaryExp )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_unaryExp_in_multExp1243);
                unaryExp130=unaryExp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, unaryExp130.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:214:3: ( '*' unaryExp | '/' unaryExp | '%' unaryExp )*
                loop20:
                do {
                    var alt20:int=4;
                    switch ( input.LA(1) ) {
                    case 81:
                        {
                        alt20=1;
                        }
                        break;
                    case 82:
                        {
                        alt20=2;
                        }
                        break;
                    case 83:
                        {
                        alt20=3;
                        }
                        break;

                    }

                    switch (alt20) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:215:4: '*' unaryExp
                	    {
                	    char_literal131=Token(matchStream(input,81,FOLLOW_81_in_multExp1252)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    char_literal131_tree = CommonTree(adaptor.create(char_literal131));
                	    root_0 = CommonTree(adaptor.becomeRoot(char_literal131_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_unaryExp_in_multExp1255);
                	    unaryExp132=unaryExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, unaryExp132.tree);

                	    }
                	    break;
                	case 2 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:216:5: '/' unaryExp
                	    {
                	    char_literal133=Token(matchStream(input,82,FOLLOW_82_in_multExp1261)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    char_literal133_tree = CommonTree(adaptor.create(char_literal133));
                	    root_0 = CommonTree(adaptor.becomeRoot(char_literal133_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_unaryExp_in_multExp1264);
                	    unaryExp134=unaryExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, unaryExp134.tree);

                	    }
                	    break;
                	case 3 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:217:5: '%' unaryExp
                	    {
                	    char_literal135=Token(matchStream(input,83,FOLLOW_83_in_multExp1270)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    char_literal135_tree = CommonTree(adaptor.create(char_literal135));
                	    root_0 = CommonTree(adaptor.becomeRoot(char_literal135_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_unaryExp_in_multExp1273);
                	    unaryExp136=unaryExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, unaryExp136.tree);

                	    }
                	    break;

                	default :
                	    break loop20;
                    }
                } while (true);


                }

                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 22, multExp_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end multExp

        // $ANTLR start unaryExp
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:221:1: unaryExp : ( '+' postFix | '-' postFix | '~' postFix | '!' postFix | '++' reference -> ^( PreInc reference ) | '--' reference -> ^( PreDec reference ) | postFix );
        public final function unaryExp():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var unaryExp_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal137:Token=null;
            var char_literal139:Token=null;
            var char_literal141:Token=null;
            var char_literal143:Token=null;
            var string_literal145:Token=null;
            var string_literal147:Token=null;
            var postFix138:ParserRuleReturnScope = null;

            var postFix140:ParserRuleReturnScope = null;

            var postFix142:ParserRuleReturnScope = null;

            var postFix144:ParserRuleReturnScope = null;

            var reference146:ParserRuleReturnScope = null;

            var reference148:ParserRuleReturnScope = null;

            var postFix149:ParserRuleReturnScope = null;


            var char_literal137_tree:CommonTree=null;
            var char_literal139_tree:CommonTree=null;
            var char_literal141_tree:CommonTree=null;
            var char_literal143_tree:CommonTree=null;
            var string_literal145_tree:CommonTree=null;
            var string_literal147_tree:CommonTree=null;
            var stream_86:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 86");
            var stream_87:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 87");
            var stream_reference:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule reference");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 23) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:222:2: ( '+' postFix | '-' postFix | '~' postFix | '!' postFix | '++' reference -> ^( PreInc reference ) | '--' reference -> ^( PreDec reference ) | postFix )
                var alt21:int=7;
                switch ( input.LA(1) ) {
                case 79:
                    {
                    alt21=1;
                    }
                    break;
                case 80:
                    {
                    alt21=2;
                    }
                    break;
                case 84:
                    {
                    alt21=3;
                    }
                    break;
                case 85:
                    {
                    alt21=4;
                    }
                    break;
                case 86:
                    {
                    alt21=5;
                    }
                    break;
                case 87:
                    {
                    alt21=6;
                    }
                    break;
                case Identifier:
                case NumberLiteral:
                case StringLiteral:
                case 35:
                case 39:
                case 88:
                case 89:
                case 90:
                case 91:
                case 94:
                    {
                    alt21=7;
                    }
                    break;
                default:
                    if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                    throw new NoViableAltException("", 21, 0, input);

                }

                switch (alt21) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:222:4: '+' postFix
                        {
                        root_0 = CommonTree(adaptor.nil());

                        char_literal137=Token(matchStream(input,79,FOLLOW_79_in_unaryExp1292)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        char_literal137_tree = CommonTree(adaptor.create(char_literal137));
                        root_0 = CommonTree(adaptor.becomeRoot(char_literal137_tree, root_0));
                        }
                        pushFollow(FOLLOW_postFix_in_unaryExp1295);
                        postFix138=postFix();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, postFix138.tree);

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:223:4: '-' postFix
                        {
                        root_0 = CommonTree(adaptor.nil());

                        char_literal139=Token(matchStream(input,80,FOLLOW_80_in_unaryExp1300)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        char_literal139_tree = CommonTree(adaptor.create(char_literal139));
                        root_0 = CommonTree(adaptor.becomeRoot(char_literal139_tree, root_0));
                        }
                        pushFollow(FOLLOW_postFix_in_unaryExp1303);
                        postFix140=postFix();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, postFix140.tree);

                        }
                        break;
                    case 3 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:224:4: '~' postFix
                        {
                        root_0 = CommonTree(adaptor.nil());

                        char_literal141=Token(matchStream(input,84,FOLLOW_84_in_unaryExp1308)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        char_literal141_tree = CommonTree(adaptor.create(char_literal141));
                        root_0 = CommonTree(adaptor.becomeRoot(char_literal141_tree, root_0));
                        }
                        pushFollow(FOLLOW_postFix_in_unaryExp1311);
                        postFix142=postFix();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, postFix142.tree);

                        }
                        break;
                    case 4 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:225:4: '!' postFix
                        {
                        root_0 = CommonTree(adaptor.nil());

                        char_literal143=Token(matchStream(input,85,FOLLOW_85_in_unaryExp1316)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        char_literal143_tree = CommonTree(adaptor.create(char_literal143));
                        root_0 = CommonTree(adaptor.becomeRoot(char_literal143_tree, root_0));
                        }
                        pushFollow(FOLLOW_postFix_in_unaryExp1319);
                        postFix144=postFix();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, postFix144.tree);

                        }
                        break;
                    case 5 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:226:4: '++' reference
                        {
                        string_literal145=Token(matchStream(input,86,FOLLOW_86_in_unaryExp1324)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_86.add(string_literal145);

                        pushFollow(FOLLOW_reference_in_unaryExp1326);
                        reference146=reference();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_reference.add(reference146.tree);


                        // AST REWRITE
                        // elements: reference
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 226:22: -> ^( PreInc reference )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:226:25: ^( PreInc reference )
                            {
                            var root_1:CommonTree = CommonTree(adaptor.nil());
                            root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(PreInc, "PreInc")), root_1));

                            adaptor.addChild(root_1, stream_reference.nextTree());

                            adaptor.addChild(root_0, root_1);
                            }

                        }

                        retval.tree = root_0;}
                        }
                        break;
                    case 6 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:227:4: '--' reference
                        {
                        string_literal147=Token(matchStream(input,87,FOLLOW_87_in_unaryExp1342)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_87.add(string_literal147);

                        pushFollow(FOLLOW_reference_in_unaryExp1344);
                        reference148=reference();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_reference.add(reference148.tree);


                        // AST REWRITE
                        // elements: reference
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 227:22: -> ^( PreDec reference )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:227:25: ^( PreDec reference )
                            {
                            var root_1:CommonTree = CommonTree(adaptor.nil());
                            root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(PreDec, "PreDec")), root_1));

                            adaptor.addChild(root_1, stream_reference.nextTree());

                            adaptor.addChild(root_0, root_1);
                            }

                        }

                        retval.tree = root_0;}
                        }
                        break;
                    case 7 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:228:5: postFix
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_postFix_in_unaryExp1361);
                        postFix149=postFix();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, postFix149.tree);

                        }
                        break;

                }
                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 23, unaryExp_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end unaryExp

        // $ANTLR start postFix
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:231:1: postFix : ( reference '++' -> ^( PostInc reference ) | reference '--' -> ^( PostDec reference ) | atom );
        public final function postFix():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var postFix_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var string_literal151:Token=null;
            var string_literal153:Token=null;
            var reference150:ParserRuleReturnScope = null;

            var reference152:ParserRuleReturnScope = null;

            var atom154:ParserRuleReturnScope = null;


            var string_literal151_tree:CommonTree=null;
            var string_literal153_tree:CommonTree=null;
            var stream_86:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 86");
            var stream_87:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 87");
            var stream_reference:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule reference");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 24) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:232:2: ( reference '++' -> ^( PostInc reference ) | reference '--' -> ^( PostDec reference ) | atom )
                var alt22:int=3;
                alt22 = dfa22.predict(input);
                switch (alt22) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:232:4: reference '++'
                        {
                        pushFollow(FOLLOW_reference_in_postFix1373);
                        reference150=reference();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_reference.add(reference150.tree);
                        string_literal151=Token(matchStream(input,86,FOLLOW_86_in_postFix1375)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_86.add(string_literal151);



                        // AST REWRITE
                        // elements: reference
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 232:22: -> ^( PostInc reference )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:232:25: ^( PostInc reference )
                            {
                            var root_1:CommonTree = CommonTree(adaptor.nil());
                            root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(PostInc, "PostInc")), root_1));

                            adaptor.addChild(root_1, stream_reference.nextTree());

                            adaptor.addChild(root_0, root_1);
                            }

                        }

                        retval.tree = root_0;}
                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:233:4: reference '--'
                        {
                        pushFollow(FOLLOW_reference_in_postFix1391);
                        reference152=reference();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_reference.add(reference152.tree);
                        string_literal153=Token(matchStream(input,87,FOLLOW_87_in_postFix1393)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_87.add(string_literal153);



                        // AST REWRITE
                        // elements: reference
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 233:22: -> ^( PostDec reference )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:233:25: ^( PostDec reference )
                            {
                            var root_1:CommonTree = CommonTree(adaptor.nil());
                            root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(PostDec, "PostDec")), root_1));

                            adaptor.addChild(root_1, stream_reference.nextTree());

                            adaptor.addChild(root_0, root_1);
                            }

                        }

                        retval.tree = root_0;}
                        }
                        break;
                    case 3 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:234:4: atom
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_atom_in_postFix1409);
                        atom154=atom();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, atom154.tree);

                        }
                        break;

                }
                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 24, postFix_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end postFix

        // $ANTLR start atom
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:237:1: atom : ( NumberLiteral | StringLiteral | 'true' | 'false' | 'null' | referenceOrFuncCall | funcDef | '(' exp ')' );
        public final function atom():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var atom_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var NumberLiteral155:Token=null;
            var StringLiteral156:Token=null;
            var string_literal157:Token=null;
            var string_literal158:Token=null;
            var string_literal159:Token=null;
            var char_literal162:Token=null;
            var char_literal164:Token=null;
            var referenceOrFuncCall160:ParserRuleReturnScope = null;

            var funcDef161:ParserRuleReturnScope = null;

            var exp163:ParserRuleReturnScope = null;


            var NumberLiteral155_tree:CommonTree=null;
            var StringLiteral156_tree:CommonTree=null;
            var string_literal157_tree:CommonTree=null;
            var string_literal158_tree:CommonTree=null;
            var string_literal159_tree:CommonTree=null;
            var char_literal162_tree:CommonTree=null;
            var char_literal164_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 25) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:238:2: ( NumberLiteral | StringLiteral | 'true' | 'false' | 'null' | referenceOrFuncCall | funcDef | '(' exp ')' )
                var alt23:int=8;
                switch ( input.LA(1) ) {
                case NumberLiteral:
                    {
                    alt23=1;
                    }
                    break;
                case StringLiteral:
                    {
                    alt23=2;
                    }
                    break;
                case 88:
                    {
                    alt23=3;
                    }
                    break;
                case 89:
                    {
                    alt23=4;
                    }
                    break;
                case 90:
                    {
                    alt23=5;
                    }
                    break;
                case Identifier:
                case 39:
                case 91:
                    {
                    alt23=6;
                    }
                    break;
                case 94:
                    {
                    alt23=7;
                    }
                    break;
                case 35:
                    {
                    alt23=8;
                    }
                    break;
                default:
                    if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                    throw new NoViableAltException("", 23, 0, input);

                }

                switch (alt23) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:238:4: NumberLiteral
                        {
                        root_0 = CommonTree(adaptor.nil());

                        NumberLiteral155=Token(matchStream(input,NumberLiteral,FOLLOW_NumberLiteral_in_atom1421)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        NumberLiteral155_tree = CommonTree(adaptor.create(NumberLiteral155));
                        adaptor.addChild(root_0, NumberLiteral155_tree);
                        }

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:239:4: StringLiteral
                        {
                        root_0 = CommonTree(adaptor.nil());

                        StringLiteral156=Token(matchStream(input,StringLiteral,FOLLOW_StringLiteral_in_atom1426)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        StringLiteral156_tree = CommonTree(adaptor.create(StringLiteral156));
                        adaptor.addChild(root_0, StringLiteral156_tree);
                        }

                        }
                        break;
                    case 3 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:240:4: 'true'
                        {
                        root_0 = CommonTree(adaptor.nil());

                        string_literal157=Token(matchStream(input,88,FOLLOW_88_in_atom1431)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        string_literal157_tree = CommonTree(adaptor.create(string_literal157));
                        adaptor.addChild(root_0, string_literal157_tree);
                        }

                        }
                        break;
                    case 4 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:241:4: 'false'
                        {
                        root_0 = CommonTree(adaptor.nil());

                        string_literal158=Token(matchStream(input,89,FOLLOW_89_in_atom1436)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        string_literal158_tree = CommonTree(adaptor.create(string_literal158));
                        adaptor.addChild(root_0, string_literal158_tree);
                        }

                        }
                        break;
                    case 5 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:242:4: 'null'
                        {
                        root_0 = CommonTree(adaptor.nil());

                        string_literal159=Token(matchStream(input,90,FOLLOW_90_in_atom1441)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        string_literal159_tree = CommonTree(adaptor.create(string_literal159));
                        adaptor.addChild(root_0, string_literal159_tree);
                        }

                        }
                        break;
                    case 6 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:243:4: referenceOrFuncCall
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_referenceOrFuncCall_in_atom1446);
                        referenceOrFuncCall160=referenceOrFuncCall();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, referenceOrFuncCall160.tree);

                        }
                        break;
                    case 7 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:244:4: funcDef
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_funcDef_in_atom1451);
                        funcDef161=funcDef();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, funcDef161.tree);

                        }
                        break;
                    case 8 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:245:4: '(' exp ')'
                        {
                        root_0 = CommonTree(adaptor.nil());

                        char_literal162=Token(matchStream(input,35,FOLLOW_35_in_atom1456)); if (this.state.failed) return retval;
                        pushFollow(FOLLOW_exp_in_atom1459);
                        exp163=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, exp163.tree);
                        char_literal164=Token(matchStream(input,36,FOLLOW_36_in_atom1461)); if (this.state.failed) return retval;

                        }
                        break;

                }
                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 25, atom_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end atom

        // $ANTLR start reference
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:248:1: reference : (l= object -> $l) ( '[' e= exp ']' -> ^( PropExp $reference $e) | '.' i= Identifier -> ^( PropRef $reference $i) | '(' (p= params )? ')' '[' e= exp ']' -> ^( PropExp ^( FuncCall $reference $p) $e) | '(' (p= params )? ')' '.' i= Identifier -> ^( PropRef ^( FuncCall $reference $p) $i) )* ;
        public final function reference():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var reference_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var i:Token=null;
            var char_literal165:Token=null;
            var char_literal166:Token=null;
            var char_literal167:Token=null;
            var char_literal168:Token=null;
            var char_literal169:Token=null;
            var char_literal170:Token=null;
            var char_literal171:Token=null;
            var char_literal172:Token=null;
            var char_literal173:Token=null;
            var char_literal174:Token=null;
            var l:ParserRuleReturnScope = null;

            var e:ParserRuleReturnScope = null;

            var p:ParserRuleReturnScope = null;


            var i_tree:CommonTree=null;
            var char_literal165_tree:CommonTree=null;
            var char_literal166_tree:CommonTree=null;
            var char_literal167_tree:CommonTree=null;
            var char_literal168_tree:CommonTree=null;
            var char_literal169_tree:CommonTree=null;
            var char_literal170_tree:CommonTree=null;
            var char_literal171_tree:CommonTree=null;
            var char_literal172_tree:CommonTree=null;
            var char_literal173_tree:CommonTree=null;
            var char_literal174_tree:CommonTree=null;
            var stream_93:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 93");
            var stream_92:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 92");
            var stream_91:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 91");
            var stream_35:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 35");
            var stream_36:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 36");
            var stream_Identifier:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token Identifier");
            var stream_exp:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule exp");
            var stream_object:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule object");
            var stream_params:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule params");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 26) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:249:2: ( (l= object -> $l) ( '[' e= exp ']' -> ^( PropExp $reference $e) | '.' i= Identifier -> ^( PropRef $reference $i) | '(' (p= params )? ')' '[' e= exp ']' -> ^( PropExp ^( FuncCall $reference $p) $e) | '(' (p= params )? ')' '.' i= Identifier -> ^( PropRef ^( FuncCall $reference $p) $i) )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:249:4: (l= object -> $l) ( '[' e= exp ']' -> ^( PropExp $reference $e) | '.' i= Identifier -> ^( PropRef $reference $i) | '(' (p= params )? ')' '[' e= exp ']' -> ^( PropExp ^( FuncCall $reference $p) $e) | '(' (p= params )? ')' '.' i= Identifier -> ^( PropRef ^( FuncCall $reference $p) $i) )*
                {
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:249:4: (l= object -> $l)
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:249:5: l= object
                {
                pushFollow(FOLLOW_object_in_reference1476);
                l=object();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) stream_object.add(l.tree);


                // AST REWRITE
                // elements: l
                // token labels: 
                // rule labels: retval, l
                // token list labels: 
                // rule list labels: 
                if ( this.state.backtracking==0 ) {
                retval.tree = root_0;
                var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);
                var stream_l:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule l",l!=null?l.tree:null);

                root_0 = CommonTree(adaptor.nil());
                // 249:18: -> $l
                {
                    adaptor.addChild(root_0, stream_l.nextTree());

                }

                retval.tree = root_0;}
                }

                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:250:3: ( '[' e= exp ']' -> ^( PropExp $reference $e) | '.' i= Identifier -> ^( PropRef $reference $i) | '(' (p= params )? ')' '[' e= exp ']' -> ^( PropExp ^( FuncCall $reference $p) $e) | '(' (p= params )? ')' '.' i= Identifier -> ^( PropRef ^( FuncCall $reference $p) $i) )*
                loop26:
                do {
                    var alt26:int=5;
                    alt26 = dfa26.predict(input);
                    switch (alt26) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:251:4: '[' e= exp ']'
                	    {
                	    char_literal165=Token(matchStream(input,91,FOLLOW_91_in_reference1495)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_91.add(char_literal165);

                	    pushFollow(FOLLOW_exp_in_reference1499);
                	    e=exp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) stream_exp.add(e.tree);
                	    char_literal166=Token(matchStream(input,92,FOLLOW_92_in_reference1501)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_92.add(char_literal166);



                	    // AST REWRITE
                	    // elements: e, reference
                	    // token labels: 
                	    // rule labels: retval, e
                	    // token list labels: 
                	    // rule list labels: 
                	    if ( this.state.backtracking==0 ) {
                	    retval.tree = root_0;
                	    var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);
                	    var stream_e:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule e",e!=null?e.tree:null);

                	    root_0 = CommonTree(adaptor.nil());
                	    // 251:20: -> ^( PropExp $reference $e)
                	    {
                	        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:251:23: ^( PropExp $reference $e)
                	        {
                	        var root_1:CommonTree = CommonTree(adaptor.nil());
                	        root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(PropExp, "PropExp")), root_1));

                	        adaptor.addChild(root_1, stream_retval.nextTree());
                	        adaptor.addChild(root_1, stream_e.nextTree());

                	        adaptor.addChild(root_0, root_1);
                	        }

                	    }

                	    retval.tree = root_0;}
                	    }
                	    break;
                	case 2 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:253:5: '.' i= Identifier
                	    {
                	    char_literal167=Token(matchStream(input,93,FOLLOW_93_in_reference1525)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_93.add(char_literal167);

                	    i=Token(matchStream(input,Identifier,FOLLOW_Identifier_in_reference1529)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_Identifier.add(i);



                	    // AST REWRITE
                	    // elements: i, reference
                	    // token labels: i
                	    // rule labels: retval
                	    // token list labels: 
                	    // rule list labels: 
                	    if ( this.state.backtracking==0 ) {
                	    retval.tree = root_0;
                	    var stream_i:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token i",i);
                	    var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                	    root_0 = CommonTree(adaptor.nil());
                	    // 253:23: -> ^( PropRef $reference $i)
                	    {
                	        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:253:26: ^( PropRef $reference $i)
                	        {
                	        var root_1:CommonTree = CommonTree(adaptor.nil());
                	        root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(PropRef, "PropRef")), root_1));

                	        adaptor.addChild(root_1, stream_retval.nextTree());
                	        adaptor.addChild(root_1, stream_i.nextNode());

                	        adaptor.addChild(root_0, root_1);
                	        }

                	    }

                	    retval.tree = root_0;}
                	    }
                	    break;
                	case 3 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:255:5: '(' (p= params )? ')' '[' e= exp ']'
                	    {
                	    char_literal168=Token(matchStream(input,35,FOLLOW_35_in_reference1551)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_35.add(char_literal168);

                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:255:10: (p= params )?
                	    var alt24:int=2;
                	    var LA24_0:int = input.LA(1);

                	    if ( ((LA24_0>=22 && LA24_0<=24)||LA24_0==35||LA24_0==39||LA24_0==54||(LA24_0>=79 && LA24_0<=80)||(LA24_0>=84 && LA24_0<=91)||LA24_0==94) ) {
                	        alt24=1;
                	    }
                	    switch (alt24) {
                	        case 1 :
                	            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:0:0: p= params
                	            {
                	            pushFollow(FOLLOW_params_in_reference1555);
                	            p=params();

                	            state._fsp = state._fsp - 1;
                	            if (this.state.failed) return retval;
                	            if ( this.state.backtracking==0 ) stream_params.add(p.tree);

                	            }
                	            break;

                	    }

                	    char_literal169=Token(matchStream(input,36,FOLLOW_36_in_reference1558)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_36.add(char_literal169);

                	    char_literal170=Token(matchStream(input,91,FOLLOW_91_in_reference1563)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_91.add(char_literal170);

                	    pushFollow(FOLLOW_exp_in_reference1567);
                	    e=exp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) stream_exp.add(e.tree);
                	    char_literal171=Token(matchStream(input,92,FOLLOW_92_in_reference1569)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_92.add(char_literal171);



                	    // AST REWRITE
                	    // elements: p, reference, e
                	    // token labels: 
                	    // rule labels: retval, e, p
                	    // token list labels: 
                	    // rule list labels: 
                	    if ( this.state.backtracking==0 ) {
                	    retval.tree = root_0;
                	    var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);
                	    var stream_e:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule e",e!=null?e.tree:null);
                	    var stream_p:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule p",p!=null?p.tree:null);

                	    root_0 = CommonTree(adaptor.nil());
                	    // 256:20: -> ^( PropExp ^( FuncCall $reference $p) $e)
                	    {
                	        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:256:23: ^( PropExp ^( FuncCall $reference $p) $e)
                	        {
                	        var root_1:CommonTree = CommonTree(adaptor.nil());
                	        root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(PropExp, "PropExp")), root_1));

                	        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:256:33: ^( FuncCall $reference $p)
                	        {
                	        var root_2:CommonTree = CommonTree(adaptor.nil());
                	        root_2 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(FuncCall, "FuncCall")), root_2));

                	        adaptor.addChild(root_2, stream_retval.nextTree());
                	        adaptor.addChild(root_2, stream_p.nextTree());

                	        adaptor.addChild(root_1, root_2);
                	        }
                	        adaptor.addChild(root_1, stream_e.nextTree());

                	        adaptor.addChild(root_0, root_1);
                	        }

                	    }

                	    retval.tree = root_0;}
                	    }
                	    break;
                	case 4 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:258:5: '(' (p= params )? ')' '.' i= Identifier
                	    {
                	    char_literal172=Token(matchStream(input,35,FOLLOW_35_in_reference1600)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_35.add(char_literal172);

                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:258:10: (p= params )?
                	    var alt25:int=2;
                	    var LA25_0:int = input.LA(1);

                	    if ( ((LA25_0>=22 && LA25_0<=24)||LA25_0==35||LA25_0==39||LA25_0==54||(LA25_0>=79 && LA25_0<=80)||(LA25_0>=84 && LA25_0<=91)||LA25_0==94) ) {
                	        alt25=1;
                	    }
                	    switch (alt25) {
                	        case 1 :
                	            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:0:0: p= params
                	            {
                	            pushFollow(FOLLOW_params_in_reference1604);
                	            p=params();

                	            state._fsp = state._fsp - 1;
                	            if (this.state.failed) return retval;
                	            if ( this.state.backtracking==0 ) stream_params.add(p.tree);

                	            }
                	            break;

                	    }

                	    char_literal173=Token(matchStream(input,36,FOLLOW_36_in_reference1607)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_36.add(char_literal173);

                	    char_literal174=Token(matchStream(input,93,FOLLOW_93_in_reference1612)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_93.add(char_literal174);

                	    i=Token(matchStream(input,Identifier,FOLLOW_Identifier_in_reference1616)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_Identifier.add(i);



                	    // AST REWRITE
                	    // elements: reference, i, p
                	    // token labels: i
                	    // rule labels: retval, p
                	    // token list labels: 
                	    // rule list labels: 
                	    if ( this.state.backtracking==0 ) {
                	    retval.tree = root_0;
                	    var stream_i:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token i",i);
                	    var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);
                	    var stream_p:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule p",p!=null?p.tree:null);

                	    root_0 = CommonTree(adaptor.nil());
                	    // 259:22: -> ^( PropRef ^( FuncCall $reference $p) $i)
                	    {
                	        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:259:25: ^( PropRef ^( FuncCall $reference $p) $i)
                	        {
                	        var root_1:CommonTree = CommonTree(adaptor.nil());
                	        root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(PropRef, "PropRef")), root_1));

                	        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:259:35: ^( FuncCall $reference $p)
                	        {
                	        var root_2:CommonTree = CommonTree(adaptor.nil());
                	        root_2 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(FuncCall, "FuncCall")), root_2));

                	        adaptor.addChild(root_2, stream_retval.nextTree());
                	        adaptor.addChild(root_2, stream_p.nextTree());

                	        adaptor.addChild(root_1, root_2);
                	        }
                	        adaptor.addChild(root_1, stream_i.nextNode());

                	        adaptor.addChild(root_0, root_1);
                	        }

                	    }

                	    retval.tree = root_0;}
                	    }
                	    break;

                	default :
                	    break loop26;
                    }
                } while (true);


                }

                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 26, reference_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end reference

        // $ANTLR start referenceOrFuncCall
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:263:1: referenceOrFuncCall : (l= object -> $l) ( '[' e= exp ']' -> ^( PropExp $referenceOrFuncCall $e) | '.' i= Identifier -> ^( PropRef $referenceOrFuncCall $i) | '(' p= params ')' -> ^( FuncCall $referenceOrFuncCall $p) | '(' ')' -> ^( FuncCall $referenceOrFuncCall) )* ;
        public final function referenceOrFuncCall():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var referenceOrFuncCall_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var i:Token=null;
            var char_literal175:Token=null;
            var char_literal176:Token=null;
            var char_literal177:Token=null;
            var char_literal178:Token=null;
            var char_literal179:Token=null;
            var char_literal180:Token=null;
            var char_literal181:Token=null;
            var l:ParserRuleReturnScope = null;

            var e:ParserRuleReturnScope = null;

            var p:ParserRuleReturnScope = null;


            var i_tree:CommonTree=null;
            var char_literal175_tree:CommonTree=null;
            var char_literal176_tree:CommonTree=null;
            var char_literal177_tree:CommonTree=null;
            var char_literal178_tree:CommonTree=null;
            var char_literal179_tree:CommonTree=null;
            var char_literal180_tree:CommonTree=null;
            var char_literal181_tree:CommonTree=null;
            var stream_93:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 93");
            var stream_92:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 92");
            var stream_91:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 91");
            var stream_35:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 35");
            var stream_36:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 36");
            var stream_Identifier:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token Identifier");
            var stream_exp:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule exp");
            var stream_object:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule object");
            var stream_params:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule params");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 27) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:264:2: ( (l= object -> $l) ( '[' e= exp ']' -> ^( PropExp $referenceOrFuncCall $e) | '.' i= Identifier -> ^( PropRef $referenceOrFuncCall $i) | '(' p= params ')' -> ^( FuncCall $referenceOrFuncCall $p) | '(' ')' -> ^( FuncCall $referenceOrFuncCall) )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:264:4: (l= object -> $l) ( '[' e= exp ']' -> ^( PropExp $referenceOrFuncCall $e) | '.' i= Identifier -> ^( PropRef $referenceOrFuncCall $i) | '(' p= params ')' -> ^( FuncCall $referenceOrFuncCall $p) | '(' ')' -> ^( FuncCall $referenceOrFuncCall) )*
                {
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:264:4: (l= object -> $l)
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:264:5: l= object
                {
                pushFollow(FOLLOW_object_in_referenceOrFuncCall1656);
                l=object();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) stream_object.add(l.tree);


                // AST REWRITE
                // elements: l
                // token labels: 
                // rule labels: retval, l
                // token list labels: 
                // rule list labels: 
                if ( this.state.backtracking==0 ) {
                retval.tree = root_0;
                var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);
                var stream_l:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule l",l!=null?l.tree:null);

                root_0 = CommonTree(adaptor.nil());
                // 264:18: -> $l
                {
                    adaptor.addChild(root_0, stream_l.nextTree());

                }

                retval.tree = root_0;}
                }

                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:265:3: ( '[' e= exp ']' -> ^( PropExp $referenceOrFuncCall $e) | '.' i= Identifier -> ^( PropRef $referenceOrFuncCall $i) | '(' p= params ')' -> ^( FuncCall $referenceOrFuncCall $p) | '(' ')' -> ^( FuncCall $referenceOrFuncCall) )*
                loop27:
                do {
                    var alt27:int=5;
                    alt27 = dfa27.predict(input);
                    switch (alt27) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:266:4: '[' e= exp ']'
                	    {
                	    char_literal175=Token(matchStream(input,91,FOLLOW_91_in_referenceOrFuncCall1675)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_91.add(char_literal175);

                	    pushFollow(FOLLOW_exp_in_referenceOrFuncCall1679);
                	    e=exp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) stream_exp.add(e.tree);
                	    char_literal176=Token(matchStream(input,92,FOLLOW_92_in_referenceOrFuncCall1681)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_92.add(char_literal176);



                	    // AST REWRITE
                	    // elements: e, referenceOrFuncCall
                	    // token labels: 
                	    // rule labels: retval, e
                	    // token list labels: 
                	    // rule list labels: 
                	    if ( this.state.backtracking==0 ) {
                	    retval.tree = root_0;
                	    var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);
                	    var stream_e:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule e",e!=null?e.tree:null);

                	    root_0 = CommonTree(adaptor.nil());
                	    // 266:20: -> ^( PropExp $referenceOrFuncCall $e)
                	    {
                	        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:266:23: ^( PropExp $referenceOrFuncCall $e)
                	        {
                	        var root_1:CommonTree = CommonTree(adaptor.nil());
                	        root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(PropExp, "PropExp")), root_1));

                	        adaptor.addChild(root_1, stream_retval.nextTree());
                	        adaptor.addChild(root_1, stream_e.nextTree());

                	        adaptor.addChild(root_0, root_1);
                	        }

                	    }

                	    retval.tree = root_0;}
                	    }
                	    break;
                	case 2 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:267:5: '.' i= Identifier
                	    {
                	    char_literal177=Token(matchStream(input,93,FOLLOW_93_in_referenceOrFuncCall1701)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_93.add(char_literal177);

                	    i=Token(matchStream(input,Identifier,FOLLOW_Identifier_in_referenceOrFuncCall1705)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_Identifier.add(i);



                	    // AST REWRITE
                	    // elements: i, referenceOrFuncCall
                	    // token labels: i
                	    // rule labels: retval
                	    // token list labels: 
                	    // rule list labels: 
                	    if ( this.state.backtracking==0 ) {
                	    retval.tree = root_0;
                	    var stream_i:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token i",i);
                	    var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                	    root_0 = CommonTree(adaptor.nil());
                	    // 267:23: -> ^( PropRef $referenceOrFuncCall $i)
                	    {
                	        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:267:26: ^( PropRef $referenceOrFuncCall $i)
                	        {
                	        var root_1:CommonTree = CommonTree(adaptor.nil());
                	        root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(PropRef, "PropRef")), root_1));

                	        adaptor.addChild(root_1, stream_retval.nextTree());
                	        adaptor.addChild(root_1, stream_i.nextNode());

                	        adaptor.addChild(root_0, root_1);
                	        }

                	    }

                	    retval.tree = root_0;}
                	    }
                	    break;
                	case 3 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:268:5: '(' p= params ')'
                	    {
                	    char_literal178=Token(matchStream(input,35,FOLLOW_35_in_referenceOrFuncCall1724)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_35.add(char_literal178);

                	    pushFollow(FOLLOW_params_in_referenceOrFuncCall1728);
                	    p=params();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) stream_params.add(p.tree);
                	    char_literal179=Token(matchStream(input,36,FOLLOW_36_in_referenceOrFuncCall1730)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_36.add(char_literal179);



                	    // AST REWRITE
                	    // elements: referenceOrFuncCall, p
                	    // token labels: 
                	    // rule labels: retval, p
                	    // token list labels: 
                	    // rule list labels: 
                	    if ( this.state.backtracking==0 ) {
                	    retval.tree = root_0;
                	    var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);
                	    var stream_p:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule p",p!=null?p.tree:null);

                	    root_0 = CommonTree(adaptor.nil());
                	    // 268:23: -> ^( FuncCall $referenceOrFuncCall $p)
                	    {
                	        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:268:26: ^( FuncCall $referenceOrFuncCall $p)
                	        {
                	        var root_1:CommonTree = CommonTree(adaptor.nil());
                	        root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(FuncCall, "FuncCall")), root_1));

                	        adaptor.addChild(root_1, stream_retval.nextTree());
                	        adaptor.addChild(root_1, stream_p.nextTree());

                	        adaptor.addChild(root_0, root_1);
                	        }

                	    }

                	    retval.tree = root_0;}
                	    }
                	    break;
                	case 4 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:269:5: '(' ')'
                	    {
                	    char_literal180=Token(matchStream(input,35,FOLLOW_35_in_referenceOrFuncCall1749)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_35.add(char_literal180);

                	    char_literal181=Token(matchStream(input,36,FOLLOW_36_in_referenceOrFuncCall1751)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_36.add(char_literal181);



                	    // AST REWRITE
                	    // elements: referenceOrFuncCall
                	    // token labels: 
                	    // rule labels: retval
                	    // token list labels: 
                	    // rule list labels: 
                	    if ( this.state.backtracking==0 ) {
                	    retval.tree = root_0;
                	    var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                	    root_0 = CommonTree(adaptor.nil());
                	    // 269:16: -> ^( FuncCall $referenceOrFuncCall)
                	    {
                	        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:269:19: ^( FuncCall $referenceOrFuncCall)
                	        {
                	        var root_1:CommonTree = CommonTree(adaptor.nil());
                	        root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(FuncCall, "FuncCall")), root_1));

                	        adaptor.addChild(root_1, stream_retval.nextTree());

                	        adaptor.addChild(root_0, root_1);
                	        }

                	    }

                	    retval.tree = root_0;}
                	    }
                	    break;

                	default :
                	    break loop27;
                    }
                } while (true);


                }

                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 27, referenceOrFuncCall_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end referenceOrFuncCall

        // $ANTLR start funcDef
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:273:1: funcDef : 'function' ( '(' a= args ')' b= block -> ^( FuncDef $a $b) | '(' ')' b= block -> ^( FuncDef $b) ) ;
        public final function funcDef():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var funcDef_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var string_literal182:Token=null;
            var char_literal183:Token=null;
            var char_literal184:Token=null;
            var char_literal185:Token=null;
            var char_literal186:Token=null;
            var a:ParserRuleReturnScope = null;

            var b:ParserRuleReturnScope = null;


            var string_literal182_tree:CommonTree=null;
            var char_literal183_tree:CommonTree=null;
            var char_literal184_tree:CommonTree=null;
            var char_literal185_tree:CommonTree=null;
            var char_literal186_tree:CommonTree=null;
            var stream_94:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 94");
            var stream_35:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 35");
            var stream_36:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 36");
            var stream_args:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule args");
            var stream_block:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule block");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 28) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:274:2: ( 'function' ( '(' a= args ')' b= block -> ^( FuncDef $a $b) | '(' ')' b= block -> ^( FuncDef $b) ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:274:4: 'function' ( '(' a= args ')' b= block -> ^( FuncDef $a $b) | '(' ')' b= block -> ^( FuncDef $b) )
                {
                string_literal182=Token(matchStream(input,94,FOLLOW_94_in_funcDef1780)); if (this.state.failed) return retval; 
                if ( this.state.backtracking==0 ) stream_94.add(string_literal182);

                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:275:3: ( '(' a= args ')' b= block -> ^( FuncDef $a $b) | '(' ')' b= block -> ^( FuncDef $b) )
                var alt28:int=2;
                var LA28_0:int = input.LA(1);

                if ( (LA28_0==35) ) {
                    var LA28_1:int = input.LA(2);

                    if ( (LA28_1==36) ) {
                        alt28=2;
                    }
                    else if ( (LA28_1==22) ) {
                        alt28=1;
                    }
                    else {
                        if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                        throw new NoViableAltException("", 28, 1, input);

                    }
                }
                else {
                    if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                    throw new NoViableAltException("", 28, 0, input);

                }
                switch (alt28) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:276:4: '(' a= args ')' b= block
                        {
                        char_literal183=Token(matchStream(input,35,FOLLOW_35_in_funcDef1789)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_35.add(char_literal183);

                        pushFollow(FOLLOW_args_in_funcDef1793);
                        a=args();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_args.add(a.tree);
                        char_literal184=Token(matchStream(input,36,FOLLOW_36_in_funcDef1795)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_36.add(char_literal184);

                        pushFollow(FOLLOW_block_in_funcDef1799);
                        b=block();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_block.add(b.tree);


                        // AST REWRITE
                        // elements: b, a
                        // token labels: 
                        // rule labels: retval, b, a
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);
                        var stream_b:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule b",b!=null?b.tree:null);
                        var stream_a:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule a",a!=null?a.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 276:28: -> ^( FuncDef $a $b)
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:276:31: ^( FuncDef $a $b)
                            {
                            var root_1:CommonTree = CommonTree(adaptor.nil());
                            root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(FuncDef, "FuncDef")), root_1));

                            adaptor.addChild(root_1, stream_a.nextTree());
                            adaptor.addChild(root_1, stream_b.nextTree());

                            adaptor.addChild(root_0, root_1);
                            }

                        }

                        retval.tree = root_0;}
                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:277:5: '(' ')' b= block
                        {
                        char_literal185=Token(matchStream(input,35,FOLLOW_35_in_funcDef1819)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_35.add(char_literal185);

                        char_literal186=Token(matchStream(input,36,FOLLOW_36_in_funcDef1821)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_36.add(char_literal186);

                        pushFollow(FOLLOW_block_in_funcDef1825);
                        b=block();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_block.add(b.tree);


                        // AST REWRITE
                        // elements: b
                        // token labels: 
                        // rule labels: retval, b
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);
                        var stream_b:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule b",b!=null?b.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 277:23: -> ^( FuncDef $b)
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:277:26: ^( FuncDef $b)
                            {
                            var root_1:CommonTree = CommonTree(adaptor.nil());
                            root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(FuncDef, "FuncDef")), root_1));

                            adaptor.addChild(root_1, stream_b.nextTree());

                            adaptor.addChild(root_0, root_1);
                            }

                        }

                        retval.tree = root_0;}
                        }
                        break;

                }


                }

                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 28, funcDef_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end funcDef

        // $ANTLR start args
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:281:1: args : Identifier ( ',' Identifier )* ;
        public final function args():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var args_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var Identifier187:Token=null;
            var char_literal188:Token=null;
            var Identifier189:Token=null;

            var Identifier187_tree:CommonTree=null;
            var char_literal188_tree:CommonTree=null;
            var Identifier189_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 29) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:282:2: ( Identifier ( ',' Identifier )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:282:4: Identifier ( ',' Identifier )*
                {
                root_0 = CommonTree(adaptor.nil());

                Identifier187=Token(matchStream(input,Identifier,FOLLOW_Identifier_in_args1852)); if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) {
                Identifier187_tree = CommonTree(adaptor.create(Identifier187));
                adaptor.addChild(root_0, Identifier187_tree);
                }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:283:3: ( ',' Identifier )*
                loop29:
                do {
                    var alt29:int=2;
                    var LA29_0:int = input.LA(1);

                    if ( (LA29_0==95) ) {
                        alt29=1;
                    }


                    switch (alt29) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:284:4: ',' Identifier
                	    {
                	    char_literal188=Token(matchStream(input,95,FOLLOW_95_in_args1861)); if (this.state.failed) return retval;
                	    Identifier189=Token(matchStream(input,Identifier,FOLLOW_Identifier_in_args1867)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    Identifier189_tree = CommonTree(adaptor.create(Identifier189));
                	    adaptor.addChild(root_0, Identifier189_tree);
                	    }

                	    }
                	    break;

                	default :
                	    break loop29;
                    }
                } while (true);


                }

                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 29, args_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end args

        // $ANTLR start object
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:289:1: object : ( Identifier | array | createObj );
        public final function object():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var object_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var Identifier190:Token=null;
            var array191:ParserRuleReturnScope = null;

            var createObj192:ParserRuleReturnScope = null;


            var Identifier190_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 30) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:290:2: ( Identifier | array | createObj )
                var alt30:int=3;
                switch ( input.LA(1) ) {
                case Identifier:
                    {
                    alt30=1;
                    }
                    break;
                case 91:
                    {
                    alt30=2;
                    }
                    break;
                case 39:
                    {
                    alt30=3;
                    }
                    break;
                default:
                    if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                    throw new NoViableAltException("", 30, 0, input);

                }

                switch (alt30) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:290:4: Identifier
                        {
                        root_0 = CommonTree(adaptor.nil());

                        Identifier190=Token(matchStream(input,Identifier,FOLLOW_Identifier_in_object1884)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        Identifier190_tree = CommonTree(adaptor.create(Identifier190));
                        adaptor.addChild(root_0, Identifier190_tree);
                        }

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:291:4: array
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_array_in_object1889);
                        array191=array();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, array191.tree);

                        }
                        break;
                    case 3 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:292:4: createObj
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_createObj_in_object1894);
                        createObj192=createObj();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, createObj192.tree);

                        }
                        break;

                }
                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 30, object_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end object

        // $ANTLR start params
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:295:1: params : exp ( ',' exp )* ;
        public final function params():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var params_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal194:Token=null;
            var exp193:ParserRuleReturnScope = null;

            var exp195:ParserRuleReturnScope = null;


            var char_literal194_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 31) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:296:2: ( exp ( ',' exp )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:296:4: exp ( ',' exp )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_exp_in_params1906);
                exp193=exp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, exp193.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:297:3: ( ',' exp )*
                loop31:
                do {
                    var alt31:int=2;
                    var LA31_0:int = input.LA(1);

                    if ( (LA31_0==95) ) {
                        alt31=1;
                    }


                    switch (alt31) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:298:4: ',' exp
                	    {
                	    char_literal194=Token(matchStream(input,95,FOLLOW_95_in_params1915)); if (this.state.failed) return retval;
                	    pushFollow(FOLLOW_exp_in_params1921);
                	    exp195=exp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, exp195.tree);

                	    }
                	    break;

                	default :
                	    break loop31;
                    }
                } while (true);


                }

                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 31, params_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end params

        // $ANTLR start array
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:303:1: array : ( '[' i= items ']' -> ^( CreateArray $i) | '[' ']' -> ^( CreateArray ) );
        public final function array():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var array_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal196:Token=null;
            var char_literal197:Token=null;
            var char_literal198:Token=null;
            var char_literal199:Token=null;
            var i:ParserRuleReturnScope = null;


            var char_literal196_tree:CommonTree=null;
            var char_literal197_tree:CommonTree=null;
            var char_literal198_tree:CommonTree=null;
            var char_literal199_tree:CommonTree=null;
            var stream_92:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 92");
            var stream_91:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 91");
            var stream_items:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule items");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 32) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:304:2: ( '[' i= items ']' -> ^( CreateArray $i) | '[' ']' -> ^( CreateArray ) )
                var alt32:int=2;
                var LA32_0:int = input.LA(1);

                if ( (LA32_0==91) ) {
                    var LA32_1:int = input.LA(2);

                    if ( (LA32_1==92) ) {
                        alt32=2;
                    }
                    else if ( ((LA32_1>=22 && LA32_1<=24)||LA32_1==35||LA32_1==39||LA32_1==54||(LA32_1>=79 && LA32_1<=80)||(LA32_1>=84 && LA32_1<=91)||LA32_1==94) ) {
                        alt32=1;
                    }
                    else {
                        if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                        throw new NoViableAltException("", 32, 1, input);

                    }
                }
                else {
                    if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                    throw new NoViableAltException("", 32, 0, input);

                }
                switch (alt32) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:304:4: '[' i= items ']'
                        {
                        char_literal196=Token(matchStream(input,91,FOLLOW_91_in_array1938)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_91.add(char_literal196);

                        pushFollow(FOLLOW_items_in_array1942);
                        i=items();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_items.add(i.tree);
                        char_literal197=Token(matchStream(input,92,FOLLOW_92_in_array1944)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_92.add(char_literal197);



                        // AST REWRITE
                        // elements: i
                        // token labels: 
                        // rule labels: retval, i
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);
                        var stream_i:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule i",i!=null?i.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 304:22: -> ^( CreateArray $i)
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:304:25: ^( CreateArray $i)
                            {
                            var root_1:CommonTree = CommonTree(adaptor.nil());
                            root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(CreateArray, "CreateArray")), root_1));

                            adaptor.addChild(root_1, stream_i.nextTree());

                            adaptor.addChild(root_0, root_1);
                            }

                        }

                        retval.tree = root_0;}
                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:305:4: '[' ']'
                        {
                        char_literal198=Token(matchStream(input,91,FOLLOW_91_in_array1960)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_91.add(char_literal198);

                        char_literal199=Token(matchStream(input,92,FOLLOW_92_in_array1962)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_92.add(char_literal199);



                        // AST REWRITE
                        // elements: 
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 305:16: -> ^( CreateArray )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:305:19: ^( CreateArray )
                            {
                            var root_1:CommonTree = CommonTree(adaptor.nil());
                            root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(CreateArray, "CreateArray")), root_1));

                            adaptor.addChild(root_0, root_1);
                            }

                        }

                        retval.tree = root_0;}
                        }
                        break;

                }
                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 32, array_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end array

        // $ANTLR start items
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:308:1: items : exp ( ',' exp )* ;
        public final function items():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var items_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal201:Token=null;
            var exp200:ParserRuleReturnScope = null;

            var exp202:ParserRuleReturnScope = null;


            var char_literal201_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 33) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:309:2: ( exp ( ',' exp )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:309:4: exp ( ',' exp )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_exp_in_items1984);
                exp200=exp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, exp200.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:310:3: ( ',' exp )*
                loop33:
                do {
                    var alt33:int=2;
                    var LA33_0:int = input.LA(1);

                    if ( (LA33_0==95) ) {
                        alt33=1;
                    }


                    switch (alt33) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:311:4: ',' exp
                	    {
                	    char_literal201=Token(matchStream(input,95,FOLLOW_95_in_items1993)); if (this.state.failed) return retval;
                	    pushFollow(FOLLOW_exp_in_items1999);
                	    exp202=exp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, exp202.tree);

                	    }
                	    break;

                	default :
                	    break loop33;
                    }
                } while (true);


                }

                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 33, items_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end items

        // $ANTLR start createObj
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:316:1: createObj : ( '{' o= objItems '}' -> ^( CreateObject $o) | '{' '}' -> ^( CreateObject $o) );
        public final function createObj():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var createObj_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal203:Token=null;
            var char_literal204:Token=null;
            var char_literal205:Token=null;
            var char_literal206:Token=null;
            var o:ParserRuleReturnScope = null;


            var char_literal203_tree:CommonTree=null;
            var char_literal204_tree:CommonTree=null;
            var char_literal205_tree:CommonTree=null;
            var char_literal206_tree:CommonTree=null;
            var stream_40:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 40");
            var stream_39:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 39");
            var stream_objItems:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule objItems");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 34) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:317:2: ( '{' o= objItems '}' -> ^( CreateObject $o) | '{' '}' -> ^( CreateObject $o) )
                var alt34:int=2;
                var LA34_0:int = input.LA(1);

                if ( (LA34_0==39) ) {
                    var LA34_1:int = input.LA(2);

                    if ( (LA34_1==40) ) {
                        alt34=2;
                    }
                    else if ( (LA34_1==22||LA34_1==24) ) {
                        alt34=1;
                    }
                    else {
                        if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                        throw new NoViableAltException("", 34, 1, input);

                    }
                }
                else {
                    if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                    throw new NoViableAltException("", 34, 0, input);

                }
                switch (alt34) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:317:4: '{' o= objItems '}'
                        {
                        char_literal203=Token(matchStream(input,39,FOLLOW_39_in_createObj2016)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_39.add(char_literal203);

                        pushFollow(FOLLOW_objItems_in_createObj2020);
                        o=objItems();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_objItems.add(o.tree);
                        char_literal204=Token(matchStream(input,40,FOLLOW_40_in_createObj2022)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_40.add(char_literal204);



                        // AST REWRITE
                        // elements: o
                        // token labels: 
                        // rule labels: retval, o
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);
                        var stream_o:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule o",o!=null?o.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 317:25: -> ^( CreateObject $o)
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:317:28: ^( CreateObject $o)
                            {
                            var root_1:CommonTree = CommonTree(adaptor.nil());
                            root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(CreateObject, "CreateObject")), root_1));

                            adaptor.addChild(root_1, stream_o.nextTree());

                            adaptor.addChild(root_0, root_1);
                            }

                        }

                        retval.tree = root_0;}
                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:318:4: '{' '}'
                        {
                        char_literal205=Token(matchStream(input,39,FOLLOW_39_in_createObj2038)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_39.add(char_literal205);

                        char_literal206=Token(matchStream(input,40,FOLLOW_40_in_createObj2040)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_40.add(char_literal206);



                        // AST REWRITE
                        // elements: o
                        // token labels: 
                        // rule labels: retval, o
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);
                        var stream_o:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule o",o!=null?o.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 318:16: -> ^( CreateObject $o)
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:318:19: ^( CreateObject $o)
                            {
                            var root_1:CommonTree = CommonTree(adaptor.nil());
                            root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(CreateObject, "CreateObject")), root_1));

                            adaptor.addChild(root_1, stream_o.nextTree());

                            adaptor.addChild(root_0, root_1);
                            }

                        }

                        retval.tree = root_0;}
                        }
                        break;

                }
                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 34, createObj_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end createObj

        // $ANTLR start objItems
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:321:1: objItems : ( Identifier | StringLiteral ) ':' exp ( ',' ( Identifier | StringLiteral ) ':' exp )* ;
        public final function objItems():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var objItems_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var set207:Token=null;
            var char_literal208:Token=null;
            var char_literal210:Token=null;
            var set211:Token=null;
            var char_literal212:Token=null;
            var exp209:ParserRuleReturnScope = null;

            var exp213:ParserRuleReturnScope = null;


            var set207_tree:CommonTree=null;
            var char_literal208_tree:CommonTree=null;
            var char_literal210_tree:CommonTree=null;
            var set211_tree:CommonTree=null;
            var char_literal212_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 35) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:322:2: ( ( Identifier | StringLiteral ) ':' exp ( ',' ( Identifier | StringLiteral ) ':' exp )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:322:4: ( Identifier | StringLiteral ) ':' exp ( ',' ( Identifier | StringLiteral ) ':' exp )*
                {
                root_0 = CommonTree(adaptor.nil());

                set207=Token(input.LT(1));
                if ( input.LA(1)==22||input.LA(1)==24 ) {
                    input.consume();
                    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, CommonTree(adaptor.create(set207)));
                    this.state.errorRecovery=false;this.state.failed=false;
                }
                else {
                    if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                    throw new MismatchedSetException(null,input);
                }

                char_literal208=Token(matchStream(input,56,FOLLOW_56_in_objItems2073)); if (this.state.failed) return retval;
                pushFollow(FOLLOW_exp_in_objItems2076);
                exp209=exp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, exp209.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:323:3: ( ',' ( Identifier | StringLiteral ) ':' exp )*
                loop35:
                do {
                    var alt35:int=2;
                    var LA35_0:int = input.LA(1);

                    if ( (LA35_0==95) ) {
                        alt35=1;
                    }


                    switch (alt35) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:324:4: ',' ( Identifier | StringLiteral ) ':' exp
                	    {
                	    char_literal210=Token(matchStream(input,95,FOLLOW_95_in_objItems2085)); if (this.state.failed) return retval;
                	    set211=Token(input.LT(1));
                	    if ( input.LA(1)==22||input.LA(1)==24 ) {
                	        input.consume();
                	        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, CommonTree(adaptor.create(set211)));
                	        this.state.errorRecovery=false;this.state.failed=false;
                	    }
                	    else {
                	        if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                	        throw new MismatchedSetException(null,input);
                	    }

                	    char_literal212=Token(matchStream(input,56,FOLLOW_56_in_objItems2099)); if (this.state.failed) return retval;
                	    pushFollow(FOLLOW_exp_in_objItems2102);
                	    exp213=exp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, exp213.tree);

                	    }
                	    break;

                	default :
                	    break loop35;
                    }
                } while (true);


                }

                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 35, objItems_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end objItems

        // $ANTLR start ret
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:329:1: ret : ( 'return' e= exp -> ^( Return $e) | 'return' -> ^( Return ) );
        public final function ret():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var ret_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var string_literal214:Token=null;
            var string_literal215:Token=null;
            var e:ParserRuleReturnScope = null;


            var string_literal214_tree:CommonTree=null;
            var string_literal215_tree:CommonTree=null;
            var stream_96:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 96");
            var stream_exp:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule exp");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 36) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:330:2: ( 'return' e= exp -> ^( Return $e) | 'return' -> ^( Return ) )
                var alt36:int=2;
                var LA36_0:int = input.LA(1);

                if ( (LA36_0==96) ) {
                    var LA36_1:int = input.LA(2);

                    if ( (synpred88_Expression()) ) {
                        alt36=1;
                    }
                    else if ( (true) ) {
                        alt36=2;
                    }
                    else {
                        if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                        throw new NoViableAltException("", 36, 1, input);

                    }
                }
                else {
                    if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                    throw new NoViableAltException("", 36, 0, input);

                }
                switch (alt36) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:331:3: 'return' e= exp
                        {
                        string_literal214=Token(matchStream(input,96,FOLLOW_96_in_ret2120)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_96.add(string_literal214);

                        pushFollow(FOLLOW_exp_in_ret2124);
                        e=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(e.tree);


                        // AST REWRITE
                        // elements: e
                        // token labels: 
                        // rule labels: retval, e
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);
                        var stream_e:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule e",e!=null?e.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 331:20: -> ^( Return $e)
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:331:23: ^( Return $e)
                            {
                            var root_1:CommonTree = CommonTree(adaptor.nil());
                            root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(Return, "Return")), root_1));

                            adaptor.addChild(root_1, stream_e.nextTree());

                            adaptor.addChild(root_0, root_1);
                            }

                        }

                        retval.tree = root_0;}
                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:332:4: 'return'
                        {
                        string_literal215=Token(matchStream(input,96,FOLLOW_96_in_ret2140)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_96.add(string_literal215);



                        // AST REWRITE
                        // elements: 
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 332:15: -> ^( Return )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:332:18: ^( Return )
                            {
                            var root_1:CommonTree = CommonTree(adaptor.nil());
                            root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(Return, "Return")), root_1));

                            adaptor.addChild(root_0, root_1);
                            }

                        }

                        retval.tree = root_0;}
                        }
                        break;

                }
                retval.stop = input.LT(-1);

                if ( this.state.backtracking==0 ) {

                retval.tree = CommonTree(adaptor.rulePostProcessing(root_0));
                adaptor.setTokenBoundaries(retval.tree, Token(retval.start), Token(retval.stop));
                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
                retval.tree = CommonTree(adaptor.errorNode(input, Token(retval.start), input.LT(-1), re));

            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 36, ret_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end ret

        // $ANTLR start synpred1_Expression
        public final function synpred1_Expression_fragment():void {
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:55:4: ( stmtList EOF )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:55:4: stmtList EOF
            {
            pushFollow(FOLLOW_stmtList_in_synpred1_Expression152);
            stmtList();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            matchStream(input,EOF,FOLLOW_EOF_in_synpred1_Expression155); if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred1_Expression

        // $ANTLR start synpred5_Expression
        public final function synpred5_Expression_fragment():void {
            var l:ParserRuleReturnScope = null;

            var r:ParserRuleReturnScope = null;


            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:70:4: ( 'if' '(' exp ')' l= block 'else' r= block )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:70:4: 'if' '(' exp ')' l= block 'else' r= block
            {
            matchStream(input,34,FOLLOW_34_in_synpred5_Expression226); if (this.state.failed) return ;
            matchStream(input,35,FOLLOW_35_in_synpred5_Expression228); if (this.state.failed) return ;
            pushFollow(FOLLOW_exp_in_synpred5_Expression230);
            exp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            matchStream(input,36,FOLLOW_36_in_synpred5_Expression232); if (this.state.failed) return ;
            pushFollow(FOLLOW_block_in_synpred5_Expression236);
            l=block();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            matchStream(input,37,FOLLOW_37_in_synpred5_Expression238); if (this.state.failed) return ;
            pushFollow(FOLLOW_block_in_synpred5_Expression242);
            r=block();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred5_Expression

        // $ANTLR start synpred6_Expression
        public final function synpred6_Expression_fragment():void {
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:71:4: ( 'if' '(' exp ')' block 'else' ifStmt )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:71:4: 'if' '(' exp ')' block 'else' ifStmt
            {
            matchStream(input,34,FOLLOW_34_in_synpred6_Expression261); if (this.state.failed) return ;
            matchStream(input,35,FOLLOW_35_in_synpred6_Expression263); if (this.state.failed) return ;
            pushFollow(FOLLOW_exp_in_synpred6_Expression265);
            exp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            matchStream(input,36,FOLLOW_36_in_synpred6_Expression267); if (this.state.failed) return ;
            pushFollow(FOLLOW_block_in_synpred6_Expression269);
            block();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            matchStream(input,37,FOLLOW_37_in_synpred6_Expression271); if (this.state.failed) return ;
            pushFollow(FOLLOW_ifStmt_in_synpred6_Expression273);
            ifStmt();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred6_Expression

        // $ANTLR start synpred7_Expression
        public final function synpred7_Expression_fragment():void {
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:86:4: ( ';' instr )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:86:4: ';' instr
            {
            matchStream(input,41,FOLLOW_41_in_synpred7_Expression385); if (this.state.failed) return ;
            pushFollow(FOLLOW_instr_in_synpred7_Expression387);
            instr();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred7_Expression

        // $ANTLR start synpred8_Expression
        public final function synpred8_Expression_fragment():void {
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:87:5: ( ';' )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:87:5: ';'
            {
            matchStream(input,41,FOLLOW_41_in_synpred8_Expression393); if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred8_Expression

        // $ANTLR start synpred10_Expression
        public final function synpred10_Expression_fragment():void {
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:97:4: ( assignExp )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:97:4: assignExp
            {
            pushFollow(FOLLOW_assignExp_in_synpred10_Expression441);
            assignExp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred10_Expression

        // $ANTLR start synpred24_Expression
        public final function synpred24_Expression_fragment():void {
            var e1:ParserRuleReturnScope = null;

            var e2:ParserRuleReturnScope = null;


            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:127:4: ( '?' e1= exp ':' e2= exp )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:127:4: '?' e1= exp ':' e2= exp
            {
            matchStream(input,55,FOLLOW_55_in_synpred24_Expression799); if (this.state.failed) return ;
            pushFollow(FOLLOW_exp_in_synpred24_Expression806);
            e1=exp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            matchStream(input,56,FOLLOW_56_in_synpred24_Expression811); if (this.state.failed) return ;
            pushFollow(FOLLOW_exp_in_synpred24_Expression818);
            e2=exp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred24_Expression

        // $ANTLR start synpred47_Expression
        public final function synpred47_Expression_fragment():void {
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:207:4: ( '+' multExp )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:207:4: '+' multExp
            {
            matchStream(input,79,FOLLOW_79_in_synpred47_Expression1213); if (this.state.failed) return ;
            pushFollow(FOLLOW_multExp_in_synpred47_Expression1216);
            multExp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred47_Expression

        // $ANTLR start synpred48_Expression
        public final function synpred48_Expression_fragment():void {
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:208:5: ( '-' multExp )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:208:5: '-' multExp
            {
            matchStream(input,80,FOLLOW_80_in_synpred48_Expression1222); if (this.state.failed) return ;
            pushFollow(FOLLOW_multExp_in_synpred48_Expression1225);
            multExp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred48_Expression

        // $ANTLR start synpred58_Expression
        public final function synpred58_Expression_fragment():void {
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:232:4: ( reference '++' )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:232:4: reference '++'
            {
            pushFollow(FOLLOW_reference_in_synpred58_Expression1373);
            reference();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            matchStream(input,86,FOLLOW_86_in_synpred58_Expression1375); if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred58_Expression

        // $ANTLR start synpred59_Expression
        public final function synpred59_Expression_fragment():void {
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:233:4: ( reference '--' )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:233:4: reference '--'
            {
            pushFollow(FOLLOW_reference_in_synpred59_Expression1391);
            reference();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            matchStream(input,87,FOLLOW_87_in_synpred59_Expression1393); if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred59_Expression

        // $ANTLR start synpred67_Expression
        public final function synpred67_Expression_fragment():void {
            var e:ParserRuleReturnScope = null;


            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:251:4: ( '[' e= exp ']' )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:251:4: '[' e= exp ']'
            {
            matchStream(input,91,FOLLOW_91_in_synpred67_Expression1495); if (this.state.failed) return ;
            pushFollow(FOLLOW_exp_in_synpred67_Expression1499);
            e=exp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            matchStream(input,92,FOLLOW_92_in_synpred67_Expression1501); if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred67_Expression

        // $ANTLR start synpred70_Expression
        public final function synpred70_Expression_fragment():void {
            var p:ParserRuleReturnScope = null;

            var e:ParserRuleReturnScope = null;


            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:255:5: ( '(' (p= params )? ')' '[' e= exp ']' )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:255:5: '(' (p= params )? ')' '[' e= exp ']'
            {
            matchStream(input,35,FOLLOW_35_in_synpred70_Expression1551); if (this.state.failed) return ;
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:255:10: (p= params )?
            var alt37:int=2;
            var LA37_0:int = input.LA(1);

            if ( ((LA37_0>=22 && LA37_0<=24)||LA37_0==35||LA37_0==39||LA37_0==54||(LA37_0>=79 && LA37_0<=80)||(LA37_0>=84 && LA37_0<=91)||LA37_0==94) ) {
                alt37=1;
            }
            switch (alt37) {
                case 1 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:0:0: p= params
                    {
                    pushFollow(FOLLOW_params_in_synpred70_Expression1555);
                    p=params();

                    state._fsp = state._fsp - 1;
                    if (this.state.failed) return ;

                    }
                    break;

            }

            matchStream(input,36,FOLLOW_36_in_synpred70_Expression1558); if (this.state.failed) return ;
            matchStream(input,91,FOLLOW_91_in_synpred70_Expression1563); if (this.state.failed) return ;
            pushFollow(FOLLOW_exp_in_synpred70_Expression1567);
            e=exp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            matchStream(input,92,FOLLOW_92_in_synpred70_Expression1569); if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred70_Expression

        // $ANTLR start synpred72_Expression
        public final function synpred72_Expression_fragment():void {
            var i:Token=null;
            var p:ParserRuleReturnScope = null;


            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:258:5: ( '(' (p= params )? ')' '.' i= Identifier )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:258:5: '(' (p= params )? ')' '.' i= Identifier
            {
            matchStream(input,35,FOLLOW_35_in_synpred72_Expression1600); if (this.state.failed) return ;
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:258:10: (p= params )?
            var alt38:int=2;
            var LA38_0:int = input.LA(1);

            if ( ((LA38_0>=22 && LA38_0<=24)||LA38_0==35||LA38_0==39||LA38_0==54||(LA38_0>=79 && LA38_0<=80)||(LA38_0>=84 && LA38_0<=91)||LA38_0==94) ) {
                alt38=1;
            }
            switch (alt38) {
                case 1 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:0:0: p= params
                    {
                    pushFollow(FOLLOW_params_in_synpred72_Expression1604);
                    p=params();

                    state._fsp = state._fsp - 1;
                    if (this.state.failed) return ;

                    }
                    break;

            }

            matchStream(input,36,FOLLOW_36_in_synpred72_Expression1607); if (this.state.failed) return ;
            matchStream(input,93,FOLLOW_93_in_synpred72_Expression1612); if (this.state.failed) return ;
            i=Token(matchStream(input,Identifier,FOLLOW_Identifier_in_synpred72_Expression1616)); if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred72_Expression

        // $ANTLR start synpred73_Expression
        public final function synpred73_Expression_fragment():void {
            var e:ParserRuleReturnScope = null;


            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:266:4: ( '[' e= exp ']' )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:266:4: '[' e= exp ']'
            {
            matchStream(input,91,FOLLOW_91_in_synpred73_Expression1675); if (this.state.failed) return ;
            pushFollow(FOLLOW_exp_in_synpred73_Expression1679);
            e=exp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            matchStream(input,92,FOLLOW_92_in_synpred73_Expression1681); if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred73_Expression

        // $ANTLR start synpred75_Expression
        public final function synpred75_Expression_fragment():void {
            var p:ParserRuleReturnScope = null;


            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:268:5: ( '(' p= params ')' )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:268:5: '(' p= params ')'
            {
            matchStream(input,35,FOLLOW_35_in_synpred75_Expression1724); if (this.state.failed) return ;
            pushFollow(FOLLOW_params_in_synpred75_Expression1728);
            p=params();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            matchStream(input,36,FOLLOW_36_in_synpred75_Expression1730); if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred75_Expression

        // $ANTLR start synpred76_Expression
        public final function synpred76_Expression_fragment():void {
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:269:5: ( '(' ')' )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:269:5: '(' ')'
            {
            matchStream(input,35,FOLLOW_35_in_synpred76_Expression1749); if (this.state.failed) return ;
            matchStream(input,36,FOLLOW_36_in_synpred76_Expression1751); if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred76_Expression

        // $ANTLR start synpred88_Expression
        public final function synpred88_Expression_fragment():void {
            var e:ParserRuleReturnScope = null;


            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:331:3: ( 'return' e= exp )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:331:3: 'return' e= exp
            {
            matchStream(input,96,FOLLOW_96_in_synpred88_Expression2120); if (this.state.failed) return ;
            pushFollow(FOLLOW_exp_in_synpred88_Expression2124);
            e=exp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred88_Expression


           // Delegated rules

        public final function synpred47_Expression():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred47_Expression_fragment(); // can never throw exception
            } catch (re:RecognitionException) {
                trace("impossible: "+re);
            }
            var success:Boolean = !this.state.failed;
            input.rewindTo(start);
            this.state.backtracking--;
            this.state.failed=false;
            return success;
        }
        public final function synpred76_Expression():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred76_Expression_fragment(); // can never throw exception
            } catch (re:RecognitionException) {
                trace("impossible: "+re);
            }
            var success:Boolean = !this.state.failed;
            input.rewindTo(start);
            this.state.backtracking--;
            this.state.failed=false;
            return success;
        }
        public final function synpred59_Expression():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred59_Expression_fragment(); // can never throw exception
            } catch (re:RecognitionException) {
                trace("impossible: "+re);
            }
            var success:Boolean = !this.state.failed;
            input.rewindTo(start);
            this.state.backtracking--;
            this.state.failed=false;
            return success;
        }
        public final function synpred1_Expression():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred1_Expression_fragment(); // can never throw exception
            } catch (re:RecognitionException) {
                trace("impossible: "+re);
            }
            var success:Boolean = !this.state.failed;
            input.rewindTo(start);
            this.state.backtracking--;
            this.state.failed=false;
            return success;
        }
        public final function synpred75_Expression():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred75_Expression_fragment(); // can never throw exception
            } catch (re:RecognitionException) {
                trace("impossible: "+re);
            }
            var success:Boolean = !this.state.failed;
            input.rewindTo(start);
            this.state.backtracking--;
            this.state.failed=false;
            return success;
        }
        public final function synpred10_Expression():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred10_Expression_fragment(); // can never throw exception
            } catch (re:RecognitionException) {
                trace("impossible: "+re);
            }
            var success:Boolean = !this.state.failed;
            input.rewindTo(start);
            this.state.backtracking--;
            this.state.failed=false;
            return success;
        }
        public final function synpred72_Expression():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred72_Expression_fragment(); // can never throw exception
            } catch (re:RecognitionException) {
                trace("impossible: "+re);
            }
            var success:Boolean = !this.state.failed;
            input.rewindTo(start);
            this.state.backtracking--;
            this.state.failed=false;
            return success;
        }
        public final function synpred70_Expression():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred70_Expression_fragment(); // can never throw exception
            } catch (re:RecognitionException) {
                trace("impossible: "+re);
            }
            var success:Boolean = !this.state.failed;
            input.rewindTo(start);
            this.state.backtracking--;
            this.state.failed=false;
            return success;
        }
        public final function synpred48_Expression():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred48_Expression_fragment(); // can never throw exception
            } catch (re:RecognitionException) {
                trace("impossible: "+re);
            }
            var success:Boolean = !this.state.failed;
            input.rewindTo(start);
            this.state.backtracking--;
            this.state.failed=false;
            return success;
        }
        public final function synpred24_Expression():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred24_Expression_fragment(); // can never throw exception
            } catch (re:RecognitionException) {
                trace("impossible: "+re);
            }
            var success:Boolean = !this.state.failed;
            input.rewindTo(start);
            this.state.backtracking--;
            this.state.failed=false;
            return success;
        }
        public final function synpred73_Expression():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred73_Expression_fragment(); // can never throw exception
            } catch (re:RecognitionException) {
                trace("impossible: "+re);
            }
            var success:Boolean = !this.state.failed;
            input.rewindTo(start);
            this.state.backtracking--;
            this.state.failed=false;
            return success;
        }
        public final function synpred7_Expression():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred7_Expression_fragment(); // can never throw exception
            } catch (re:RecognitionException) {
                trace("impossible: "+re);
            }
            var success:Boolean = !this.state.failed;
            input.rewindTo(start);
            this.state.backtracking--;
            this.state.failed=false;
            return success;
        }
        public final function synpred8_Expression():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred8_Expression_fragment(); // can never throw exception
            } catch (re:RecognitionException) {
                trace("impossible: "+re);
            }
            var success:Boolean = !this.state.failed;
            input.rewindTo(start);
            this.state.backtracking--;
            this.state.failed=false;
            return success;
        }
        public final function synpred67_Expression():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred67_Expression_fragment(); // can never throw exception
            } catch (re:RecognitionException) {
                trace("impossible: "+re);
            }
            var success:Boolean = !this.state.failed;
            input.rewindTo(start);
            this.state.backtracking--;
            this.state.failed=false;
            return success;
        }
        public final function synpred88_Expression():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred88_Expression_fragment(); // can never throw exception
            } catch (re:RecognitionException) {
                trace("impossible: "+re);
            }
            var success:Boolean = !this.state.failed;
            input.rewindTo(start);
            this.state.backtracking--;
            this.state.failed=false;
            return success;
        }
        public final function synpred58_Expression():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred58_Expression_fragment(); // can never throw exception
            } catch (re:RecognitionException) {
                trace("impossible: "+re);
            }
            var success:Boolean = !this.state.failed;
            input.rewindTo(start);
            this.state.backtracking--;
            this.state.failed=false;
            return success;
        }
        public final function synpred6_Expression():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred6_Expression_fragment(); // can never throw exception
            } catch (re:RecognitionException) {
                trace("impossible: "+re);
            }
            var success:Boolean = !this.state.failed;
            input.rewindTo(start);
            this.state.backtracking--;
            this.state.failed=false;
            return success;
        }
        public final function synpred5_Expression():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred5_Expression_fragment(); // can never throw exception
            } catch (re:RecognitionException) {
                trace("impossible: "+re);
            }
            var success:Boolean = !this.state.failed;
            input.rewindTo(start);
            this.state.backtracking--;
            this.state.failed=false;
            return success;
        }



        private const DFA5_eot:Array =
            DFA.unpackEncodedString("\x1a\u80ff\xff");
        private const DFA5_eof:Array =
            DFA.unpackEncodedString("\x01\x01\x19\u80ff\xff");
        private const DFA5_min:Array =
            DFA.unpackEncodedString("\x01\x16\x16\u80ff\xff\x01\x00\x02"+
            "\u80ff\xff", true);
        private const DFA5_max:Array =
            DFA.unpackEncodedString("\x01\x60\x16\u80ff\xff\x01\x00\x02"+
            "\u80ff\xff", true);
        private const DFA5_accept:Array =
            DFA.unpackEncodedString("\x01\u80ff\xff\x01\x03\x16\u80ff\xff"+
            "\x01\x01\x01\x02");
        private const DFA5_special:Array =
            DFA.unpackEncodedString("\x17\u80ff\xff\x01\x00\x02\u80ff\xff");
        private const DFA5_transition:Array = [
                DFA.unpackEncodedString("\x03\x01\x09\u80ff\xff\x02\x01"+
                "\x02\u80ff\xff\x03\x01\x01\x17\x0c\u80ff\xff\x01\x01\x18"+
                "\u80ff\xff\x02\x01\x03\u80ff\xff\x08\x01\x02\u80ff\xff\x01"+
                "\x01\x01\u80ff\xff\x01\x01"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x01\u80ff\xff"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("")
        ];
            private function DFA5_specialStateTransition(dfa:DFA, s:int, _input:IntStream):int {
                var input:TokenStream = TokenStream(_input);
            	var _s:int = s;
                switch ( s ) {
                        case 0 : 
                            var LA5_23:int = input.LA(1);

                             
                            var index5_23:int = input.index;
                            input.rewind();
                            s = -1;
                            if ( (synpred7_Expression()) ) {s = 24;}

                            else if ( (synpred8_Expression()) ) {s = 25;}

                             
                            input.seek(index5_23);
                            if ( s>=0 ) return s;
                            break;
                }
                if (this.state.backtracking>0) {this.state.failed=true; return -1;}
                throw dfa.error(new NoViableAltException(dfa.description, 5, _s, input));
            }

        protected var dfa5:DFA;  // initialized in constructor

        private const DFA7_eot:Array =
            DFA.unpackEncodedString("\x13\u80ff\xff");
        private const DFA7_eof:Array =
            DFA.unpackEncodedString("\x13\u80ff\xff");
        private const DFA7_min:Array =
            DFA.unpackEncodedString("\x01\x16\x03\x00\x0f\u80ff\xff", true);
        private const DFA7_max:Array =
            DFA.unpackEncodedString("\x01\x5e\x03\x00\x0f\u80ff\xff", true);
        private const DFA7_accept:Array =
            DFA.unpackEncodedString("\x04\u80ff\xff\x01\x02\x01\x03\x0c"+
            "\u80ff\xff\x01\x01");
        private const DFA7_special:Array =
            DFA.unpackEncodedString("\x01\u80ff\xff\x01\x00\x01\x01\x01"+
            "\x02\x0f\u80ff\xff");
        private const DFA7_transition:Array = [
                DFA.unpackEncodedString("\x01\x01\x02\x05\x0a\u80ff\xff"+
                "\x01\x05\x03\u80ff\xff\x01\x03\x0e\u80ff\xff\x01\x04\x18"+
                "\u80ff\xff\x02\x05\x03\u80ff\xff\x07\x05\x01\x02\x02\u80ff\xff"+
                "\x01\x05"),
                DFA.unpackEncodedString("\x01\u80ff\xff"),
                DFA.unpackEncodedString("\x01\u80ff\xff"),
                DFA.unpackEncodedString("\x01\u80ff\xff"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("")
        ];
            private function DFA7_specialStateTransition(dfa:DFA, s:int, _input:IntStream):int {
                var input:TokenStream = TokenStream(_input);
            	var _s:int = s;
                switch ( s ) {
                        case 0 : 
                            var LA7_1:int = input.LA(1);

                             
                            var index7_1:int = input.index;
                            input.rewind();
                            s = -1;
                            if ( (synpred10_Expression()) ) {s = 18;}

                            else if ( (true) ) {s = 5;}

                             
                            input.seek(index7_1);
                            if ( s>=0 ) return s;
                            break;
                        case 1 : 
                            var LA7_2:int = input.LA(1);

                             
                            var index7_2:int = input.index;
                            input.rewind();
                            s = -1;
                            if ( (synpred10_Expression()) ) {s = 18;}

                            else if ( (true) ) {s = 5;}

                             
                            input.seek(index7_2);
                            if ( s>=0 ) return s;
                            break;
                        case 2 : 
                            var LA7_3:int = input.LA(1);

                             
                            var index7_3:int = input.index;
                            input.rewind();
                            s = -1;
                            if ( (synpred10_Expression()) ) {s = 18;}

                            else if ( (true) ) {s = 5;}

                             
                            input.seek(index7_3);
                            if ( s>=0 ) return s;
                            break;
                }
                if (this.state.backtracking>0) {this.state.failed=true; return -1;}
                throw dfa.error(new NoViableAltException(dfa.description, 7, _s, input));
            }

        protected var dfa7:DFA;  // initialized in constructor

        private const DFA19_eot:Array =
            DFA.unpackEncodedString("\x35\u80ff\xff");
        private const DFA19_eof:Array =
            DFA.unpackEncodedString("\x01\x01\x34\u80ff\xff");
        private const DFA19_min:Array =
            DFA.unpackEncodedString("\x01\x16\x21\u80ff\xff\x02\x00\x11"+
            "\u80ff\xff", true);
        private const DFA19_max:Array =
            DFA.unpackEncodedString("\x01\x60\x21\u80ff\xff\x02\x00\x11"+
            "\u80ff\xff", true);
        private const DFA19_accept:Array =
            DFA.unpackEncodedString("\x01\u80ff\xff\x01\x03\x31\u80ff\xff"+
            "\x01\x01\x01\x02");
        private const DFA19_special:Array =
            DFA.unpackEncodedString("\x22\u80ff\xff\x01\x00\x01\x01\x11"+
            "\u80ff\xff");
        private const DFA19_transition:Array = [
                DFA.unpackEncodedString("\x03\x01\x09\u80ff\xff\x03\x01"+
                "\x01\u80ff\xff\x04\x01\x0c\u80ff\xff\x19\x01\x01\x22\x01"+
                "\x23\x03\u80ff\xff\x09\x01\x01\u80ff\xff\x03\x01"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x01\u80ff\xff"),
                DFA.unpackEncodedString("\x01\u80ff\xff"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("")
        ];
            private function DFA19_specialStateTransition(dfa:DFA, s:int, _input:IntStream):int {
                var input:TokenStream = TokenStream(_input);
            	var _s:int = s;
                switch ( s ) {
                        case 0 : 
                            var LA19_34:int = input.LA(1);

                             
                            var index19_34:int = input.index;
                            input.rewind();
                            s = -1;
                            if ( (synpred47_Expression()) ) {s = 51;}

                            else if ( (true) ) {s = 1;}

                             
                            input.seek(index19_34);
                            if ( s>=0 ) return s;
                            break;
                        case 1 : 
                            var LA19_35:int = input.LA(1);

                             
                            var index19_35:int = input.index;
                            input.rewind();
                            s = -1;
                            if ( (synpred48_Expression()) ) {s = 52;}

                            else if ( (true) ) {s = 1;}

                             
                            input.seek(index19_35);
                            if ( s>=0 ) return s;
                            break;
                }
                if (this.state.backtracking>0) {this.state.failed=true; return -1;}
                throw dfa.error(new NoViableAltException(dfa.description, 19, _s, input));
            }

        protected var dfa19:DFA;  // initialized in constructor

        private const DFA22_eot:Array =
            DFA.unpackEncodedString("\x0d\u80ff\xff");
        private const DFA22_eof:Array =
            DFA.unpackEncodedString("\x0d\u80ff\xff");
        private const DFA22_min:Array =
            DFA.unpackEncodedString("\x01\x16\x03\x00\x09\u80ff\xff", true);
        private const DFA22_max:Array =
            DFA.unpackEncodedString("\x01\x5e\x03\x00\x09\u80ff\xff", true);
        private const DFA22_accept:Array =
            DFA.unpackEncodedString("\x04\u80ff\xff\x01\x03\x06\u80ff\xff"+
            "\x01\x01\x01\x02");
        private const DFA22_special:Array =
            DFA.unpackEncodedString("\x01\u80ff\xff\x01\x00\x01\x01\x01"+
            "\x02\x09\u80ff\xff");
        private const DFA22_transition:Array = [
                DFA.unpackEncodedString("\x01\x01\x02\x04\x0a\u80ff\xff"+
                "\x01\x04\x03\u80ff\xff\x01\x03\x30\u80ff\xff\x03\x04\x01"+
                "\x02\x02\u80ff\xff\x01\x04"),
                DFA.unpackEncodedString("\x01\u80ff\xff"),
                DFA.unpackEncodedString("\x01\u80ff\xff"),
                DFA.unpackEncodedString("\x01\u80ff\xff"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("")
        ];
            private function DFA22_specialStateTransition(dfa:DFA, s:int, _input:IntStream):int {
                var input:TokenStream = TokenStream(_input);
            	var _s:int = s;
                switch ( s ) {
                        case 0 : 
                            var LA22_1:int = input.LA(1);

                             
                            var index22_1:int = input.index;
                            input.rewind();
                            s = -1;
                            if ( (synpred58_Expression()) ) {s = 11;}

                            else if ( (synpred59_Expression()) ) {s = 12;}

                            else if ( (true) ) {s = 4;}

                             
                            input.seek(index22_1);
                            if ( s>=0 ) return s;
                            break;
                        case 1 : 
                            var LA22_2:int = input.LA(1);

                             
                            var index22_2:int = input.index;
                            input.rewind();
                            s = -1;
                            if ( (synpred58_Expression()) ) {s = 11;}

                            else if ( (synpred59_Expression()) ) {s = 12;}

                            else if ( (true) ) {s = 4;}

                             
                            input.seek(index22_2);
                            if ( s>=0 ) return s;
                            break;
                        case 2 : 
                            var LA22_3:int = input.LA(1);

                             
                            var index22_3:int = input.index;
                            input.rewind();
                            s = -1;
                            if ( (synpred58_Expression()) ) {s = 11;}

                            else if ( (synpred59_Expression()) ) {s = 12;}

                            else if ( (true) ) {s = 4;}

                             
                            input.seek(index22_3);
                            if ( s>=0 ) return s;
                            break;
                }
                if (this.state.backtracking>0) {this.state.failed=true; return -1;}
                throw dfa.error(new NoViableAltException(dfa.description, 22, _s, input));
            }

        protected var dfa22:DFA;  // initialized in constructor

        private const DFA26_eot:Array =
            DFA.unpackEncodedString("\x46\u80ff\xff");
        private const DFA26_eof:Array =
            DFA.unpackEncodedString("\x01\x01\x45\u80ff\xff");
        private const DFA26_min:Array =
            DFA.unpackEncodedString("\x01\x16\x2f\u80ff\xff\x01\x00\x0c"+
            "\u80ff\xff\x01\x00\x08\u80ff\xff", true);
        private const DFA26_max:Array =
            DFA.unpackEncodedString("\x01\x60\x2f\u80ff\xff\x01\x00\x0c"+
            "\u80ff\xff\x01\x00\x08\u80ff\xff", true);
        private const DFA26_accept:Array =
            DFA.unpackEncodedString("\x01\u80ff\xff\x01\x05\x40\u80ff\xff"+
            "\x01\x02\x01\x01\x01\x03\x01\x04");
        private const DFA26_special:Array =
            DFA.unpackEncodedString("\x30\u80ff\xff\x01\x00\x0c\u80ff\xff"+
            "\x01\x01\x08\u80ff\xff");
        private const DFA26_transition:Array = [
                DFA.unpackEncodedString("\x03\x01\x09\u80ff\xff\x01\x01"+
                "\x01\x3d\x01\x01\x01\u80ff\xff\x35\x01\x01\x30\x01\x01\x01"+
                "\x42\x03\x01"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x01\u80ff\xff"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x01\u80ff\xff"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("")
        ];
            private function DFA26_specialStateTransition(dfa:DFA, s:int, _input:IntStream):int {
                var input:TokenStream = TokenStream(_input);
            	var _s:int = s;
                switch ( s ) {
                        case 0 : 
                            var LA26_48:int = input.LA(1);

                             
                            var index26_48:int = input.index;
                            input.rewind();
                            s = -1;
                            if ( (synpred67_Expression()) ) {s = 67;}

                            else if ( (true) ) {s = 1;}

                             
                            input.seek(index26_48);
                            if ( s>=0 ) return s;
                            break;
                        case 1 : 
                            var LA26_61:int = input.LA(1);

                             
                            var index26_61:int = input.index;
                            input.rewind();
                            s = -1;
                            if ( (synpred70_Expression()) ) {s = 68;}

                            else if ( (synpred72_Expression()) ) {s = 69;}

                            else if ( (true) ) {s = 1;}

                             
                            input.seek(index26_61);
                            if ( s>=0 ) return s;
                            break;
                }
                if (this.state.backtracking>0) {this.state.failed=true; return -1;}
                throw dfa.error(new NoViableAltException(dfa.description, 26, _s, input));
            }

        protected var dfa26:DFA;  // initialized in constructor

        private const DFA27_eot:Array =
            DFA.unpackEncodedString("\x3a\u80ff\xff");
        private const DFA27_eof:Array =
            DFA.unpackEncodedString("\x01\x01\x39\u80ff\xff");
        private const DFA27_min:Array =
            DFA.unpackEncodedString("\x01\x16\x23\u80ff\xff\x01\x00\x0c"+
            "\u80ff\xff\x01\x00\x08\u80ff\xff", true);
        private const DFA27_max:Array =
            DFA.unpackEncodedString("\x01\x60\x23\u80ff\xff\x01\x00\x0c"+
            "\u80ff\xff\x01\x00\x08\u80ff\xff", true);
        private const DFA27_accept:Array =
            DFA.unpackEncodedString("\x01\u80ff\xff\x01\x05\x34\u80ff\xff"+
            "\x01\x02\x01\x01\x01\x03\x01\x04");
        private const DFA27_special:Array =
            DFA.unpackEncodedString("\x24\u80ff\xff\x01\x00\x0c\u80ff\xff"+
            "\x01\x01\x08\u80ff\xff");
        private const DFA27_transition:Array = [
                DFA.unpackEncodedString("\x03\x01\x09\u80ff\xff\x01\x01"+
                "\x01\x31\x01\x01\x01\u80ff\xff\x04\x01\x0c\u80ff\xff\x25"+
                "\x01\x01\x24\x01\x01\x01\x36\x03\x01"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x01\u80ff\xff"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x01\u80ff\xff"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("")
        ];
            private function DFA27_specialStateTransition(dfa:DFA, s:int, _input:IntStream):int {
                var input:TokenStream = TokenStream(_input);
            	var _s:int = s;
                switch ( s ) {
                        case 0 : 
                            var LA27_36:int = input.LA(1);

                             
                            var index27_36:int = input.index;
                            input.rewind();
                            s = -1;
                            if ( (synpred73_Expression()) ) {s = 55;}

                            else if ( (true) ) {s = 1;}

                             
                            input.seek(index27_36);
                            if ( s>=0 ) return s;
                            break;
                        case 1 : 
                            var LA27_49:int = input.LA(1);

                             
                            var index27_49:int = input.index;
                            input.rewind();
                            s = -1;
                            if ( (synpred75_Expression()) ) {s = 56;}

                            else if ( (synpred76_Expression()) ) {s = 57;}

                            else if ( (true) ) {s = 1;}

                             
                            input.seek(index27_49);
                            if ( s>=0 ) return s;
                            break;
                }
                if (this.state.backtracking>0) {this.state.failed=true; return -1;}
                throw dfa.error(new NoViableAltException(dfa.description, 27, _s, input));
            }

        protected var dfa27:DFA;  // initialized in constructor
     

        public static const FOLLOW_stmtList_in_main152:BitSet = new BitSet([0x00000000, 0x00000000]);
        public static const FOLLOW_EOF_in_main155:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_EOF_in_main161:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_stmt_in_stmtList173:BitSet = new BitSet([0x01C00002, 0x004000CC, 0x4FF18000, 0x00000001]);
        public static const FOLLOW_ifStmt_in_stmt201:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_whileStmt_in_stmt207:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_instrList_in_stmt213:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_34_in_ifStmt226:BitSet = new BitSet([0x00000000, 0x00000008]);
        public static const FOLLOW_35_in_ifStmt228:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_exp_in_ifStmt230:BitSet = new BitSet([0x00000000, 0x00000010]);
        public static const FOLLOW_36_in_ifStmt232:BitSet = new BitSet([0x00000000, 0x00000080]);
        public static const FOLLOW_block_in_ifStmt236:BitSet = new BitSet([0x00000000, 0x00000020]);
        public static const FOLLOW_37_in_ifStmt238:BitSet = new BitSet([0x00000000, 0x00000080]);
        public static const FOLLOW_block_in_ifStmt242:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_34_in_ifStmt261:BitSet = new BitSet([0x00000000, 0x00000008]);
        public static const FOLLOW_35_in_ifStmt263:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_exp_in_ifStmt265:BitSet = new BitSet([0x00000000, 0x00000010]);
        public static const FOLLOW_36_in_ifStmt267:BitSet = new BitSet([0x00000000, 0x00000080]);
        public static const FOLLOW_block_in_ifStmt269:BitSet = new BitSet([0x00000000, 0x00000020]);
        public static const FOLLOW_37_in_ifStmt271:BitSet = new BitSet([0x00000000, 0x00000004]);
        public static const FOLLOW_ifStmt_in_ifStmt273:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_34_in_ifStmt290:BitSet = new BitSet([0x00000000, 0x00000008]);
        public static const FOLLOW_35_in_ifStmt292:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_exp_in_ifStmt294:BitSet = new BitSet([0x00000000, 0x00000010]);
        public static const FOLLOW_36_in_ifStmt296:BitSet = new BitSet([0x00000000, 0x00000080]);
        public static const FOLLOW_block_in_ifStmt298:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_38_in_whileStmt322:BitSet = new BitSet([0x00000000, 0x00000008]);
        public static const FOLLOW_35_in_whileStmt324:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_exp_in_whileStmt326:BitSet = new BitSet([0x00000000, 0x00000010]);
        public static const FOLLOW_36_in_whileStmt328:BitSet = new BitSet([0x00000000, 0x00000080]);
        public static const FOLLOW_block_in_whileStmt330:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_39_in_block353:BitSet = new BitSet([0x01C00000, 0x004000CC, 0x4FF18000, 0x00000001]);
        public static const FOLLOW_stmtList_in_block355:BitSet = new BitSet([0x00000000, 0x00000100]);
        public static const FOLLOW_40_in_block357:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_instr_in_instrList376:BitSet = new BitSet([0x00000002, 0x00000200]);
        public static const FOLLOW_41_in_instrList385:BitSet = new BitSet([0x01C00000, 0x004002CC, 0x4FF18000, 0x00000001]);
        public static const FOLLOW_instr_in_instrList387:BitSet = new BitSet([0x00000002, 0x00000200]);
        public static const FOLLOW_41_in_instrList393:BitSet = new BitSet([0x00000002, 0x00000200]);
        public static const FOLLOW_exp_in_instr423:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_ret_in_instr428:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_assignExp_in_exp441:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_local_in_exp447:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_condExp_in_exp453:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_reference_in_assignExp466:BitSet = new BitSet([0x00000000, 0x003FFC00]);
        public static const FOLLOW_42_in_assignExp475:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp477:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_43_in_assignExp496:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp498:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_44_in_assignExp516:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp518:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_45_in_assignExp536:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp538:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_46_in_assignExp556:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp558:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_47_in_assignExp576:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp578:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_48_in_assignExp596:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp598:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_49_in_assignExp616:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp618:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_50_in_assignExp636:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp638:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_51_in_assignExp656:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp658:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_52_in_assignExp676:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp678:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_53_in_assignExp696:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp698:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_54_in_local726:BitSet = new BitSet([0x00400000, 0x00000000]);
        public static const FOLLOW_Identifier_in_local730:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_54_in_local746:BitSet = new BitSet([0x00400000, 0x00000000]);
        public static const FOLLOW_Identifier_in_local750:BitSet = new BitSet([0x00000000, 0x00000400]);
        public static const FOLLOW_42_in_local752:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_exp_in_local754:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_logicalOr_in_condExp781:BitSet = new BitSet([0x00000002, 0x00800000]);
        public static const FOLLOW_55_in_condExp799:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_exp_in_condExp806:BitSet = new BitSet([0x00000000, 0x01000000]);
        public static const FOLLOW_56_in_condExp811:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_exp_in_condExp818:BitSet = new BitSet([0x00000002, 0x00800000]);
        public static const FOLLOW_logicalAnd_in_logicalOr852:BitSet = new BitSet([0x00000002, 0x06000000]);
        public static const FOLLOW_57_in_logicalOr861:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_logicalAnd_in_logicalOr864:BitSet = new BitSet([0x00000002, 0x06000000]);
        public static const FOLLOW_58_in_logicalOr870:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_logicalAnd_in_logicalOr873:BitSet = new BitSet([0x00000002, 0x06000000]);
        public static const FOLLOW_bitwiseOr_in_logicalAnd890:BitSet = new BitSet([0x00000002, 0x18000000]);
        public static const FOLLOW_59_in_logicalAnd899:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_bitwiseOr_in_logicalAnd902:BitSet = new BitSet([0x00000002, 0x18000000]);
        public static const FOLLOW_60_in_logicalAnd908:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_bitwiseOr_in_logicalAnd911:BitSet = new BitSet([0x00000002, 0x18000000]);
        public static const FOLLOW_bitwiseXor_in_bitwiseOr927:BitSet = new BitSet([0x00000002, 0x20000000]);
        public static const FOLLOW_61_in_bitwiseOr936:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_bitwiseXor_in_bitwiseOr939:BitSet = new BitSet([0x00000002, 0x20000000]);
        public static const FOLLOW_bitwiseAnd_in_bitwiseXor955:BitSet = new BitSet([0x00000002, 0x40000000]);
        public static const FOLLOW_62_in_bitwiseXor964:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_bitwiseAnd_in_bitwiseXor967:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_equalExp_in_bitwiseAnd983:BitSet = new BitSet([0x00000002, 0x80000000]);
        public static const FOLLOW_63_in_bitwiseAnd992:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_equalExp_in_bitwiseAnd995:BitSet = new BitSet([0x00000002, 0x80000000]);
        public static const FOLLOW_relExp_in_equalExp1011:BitSet = new BitSet([0x00000002, 0x00000000, 0x0000000F, 0x00000000]);
        public static const FOLLOW_64_in_equalExp1020:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_relExp_in_equalExp1023:BitSet = new BitSet([0x00000002, 0x00000000, 0x0000000F, 0x00000000]);
        public static const FOLLOW_65_in_equalExp1029:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_relExp_in_equalExp1032:BitSet = new BitSet([0x00000002, 0x00000000, 0x0000000F, 0x00000000]);
        public static const FOLLOW_66_in_equalExp1038:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_relExp_in_equalExp1041:BitSet = new BitSet([0x00000002, 0x00000000, 0x0000000F, 0x00000000]);
        public static const FOLLOW_67_in_equalExp1047:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_relExp_in_equalExp1050:BitSet = new BitSet([0x00000002, 0x00000000, 0x0000000F, 0x00000000]);
        public static const FOLLOW_shiftExp_in_relExp1067:BitSet = new BitSet([0x00000002, 0x00000000, 0x00000FF0, 0x00000000]);
        public static const FOLLOW_68_in_relExp1076:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_shiftExp_in_relExp1079:BitSet = new BitSet([0x00000002, 0x00000000, 0x00000FF0, 0x00000000]);
        public static const FOLLOW_69_in_relExp1085:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_shiftExp_in_relExp1088:BitSet = new BitSet([0x00000002, 0x00000000, 0x00000FF0, 0x00000000]);
        public static const FOLLOW_70_in_relExp1094:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_shiftExp_in_relExp1097:BitSet = new BitSet([0x00000002, 0x00000000, 0x00000FF0, 0x00000000]);
        public static const FOLLOW_71_in_relExp1103:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_shiftExp_in_relExp1106:BitSet = new BitSet([0x00000002, 0x00000000, 0x00000FF0, 0x00000000]);
        public static const FOLLOW_72_in_relExp1112:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_shiftExp_in_relExp1115:BitSet = new BitSet([0x00000002, 0x00000000, 0x00000FF0, 0x00000000]);
        public static const FOLLOW_73_in_relExp1121:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_shiftExp_in_relExp1124:BitSet = new BitSet([0x00000002, 0x00000000, 0x00000FF0, 0x00000000]);
        public static const FOLLOW_74_in_relExp1130:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_shiftExp_in_relExp1133:BitSet = new BitSet([0x00000002, 0x00000000, 0x00000FF0, 0x00000000]);
        public static const FOLLOW_75_in_relExp1139:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_shiftExp_in_relExp1142:BitSet = new BitSet([0x00000002, 0x00000000, 0x00000FF0, 0x00000000]);
        public static const FOLLOW_addExp_in_shiftExp1158:BitSet = new BitSet([0x00000002, 0x00000000, 0x00007000, 0x00000000]);
        public static const FOLLOW_76_in_shiftExp1167:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_addExp_in_shiftExp1170:BitSet = new BitSet([0x00000002, 0x00000000, 0x00007000, 0x00000000]);
        public static const FOLLOW_77_in_shiftExp1176:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_addExp_in_shiftExp1179:BitSet = new BitSet([0x00000002, 0x00000000, 0x00007000, 0x00000000]);
        public static const FOLLOW_78_in_shiftExp1185:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_addExp_in_shiftExp1188:BitSet = new BitSet([0x00000002, 0x00000000, 0x00007000, 0x00000000]);
        public static const FOLLOW_multExp_in_addExp1204:BitSet = new BitSet([0x00000002, 0x00000000, 0x00018000, 0x00000000]);
        public static const FOLLOW_79_in_addExp1213:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_multExp_in_addExp1216:BitSet = new BitSet([0x00000002, 0x00000000, 0x00018000, 0x00000000]);
        public static const FOLLOW_80_in_addExp1222:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_multExp_in_addExp1225:BitSet = new BitSet([0x00000002, 0x00000000, 0x00018000, 0x00000000]);
        public static const FOLLOW_unaryExp_in_multExp1243:BitSet = new BitSet([0x00000002, 0x00000000, 0x000E0000, 0x00000000]);
        public static const FOLLOW_81_in_multExp1252:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_unaryExp_in_multExp1255:BitSet = new BitSet([0x00000002, 0x00000000, 0x000E0000, 0x00000000]);
        public static const FOLLOW_82_in_multExp1261:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_unaryExp_in_multExp1264:BitSet = new BitSet([0x00000002, 0x00000000, 0x000E0000, 0x00000000]);
        public static const FOLLOW_83_in_multExp1270:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_unaryExp_in_multExp1273:BitSet = new BitSet([0x00000002, 0x00000000, 0x000E0000, 0x00000000]);
        public static const FOLLOW_79_in_unaryExp1292:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_postFix_in_unaryExp1295:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_80_in_unaryExp1300:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_postFix_in_unaryExp1303:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_84_in_unaryExp1308:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_postFix_in_unaryExp1311:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_85_in_unaryExp1316:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_postFix_in_unaryExp1319:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_86_in_unaryExp1324:BitSet = new BitSet([0x00400000, 0x00000080, 0x08000000, 0x00000000]);
        public static const FOLLOW_reference_in_unaryExp1326:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_87_in_unaryExp1342:BitSet = new BitSet([0x00400000, 0x00000080, 0x08000000, 0x00000000]);
        public static const FOLLOW_reference_in_unaryExp1344:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_postFix_in_unaryExp1361:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_reference_in_postFix1373:BitSet = new BitSet([0x00000000, 0x00000000, 0x00400000, 0x00000000]);
        public static const FOLLOW_86_in_postFix1375:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_reference_in_postFix1391:BitSet = new BitSet([0x00000000, 0x00000000, 0x00800000, 0x00000000]);
        public static const FOLLOW_87_in_postFix1393:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_atom_in_postFix1409:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_NumberLiteral_in_atom1421:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_StringLiteral_in_atom1426:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_88_in_atom1431:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_89_in_atom1436:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_90_in_atom1441:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_referenceOrFuncCall_in_atom1446:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_funcDef_in_atom1451:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_35_in_atom1456:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_exp_in_atom1459:BitSet = new BitSet([0x00000000, 0x00000010]);
        public static const FOLLOW_36_in_atom1461:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_object_in_reference1476:BitSet = new BitSet([0x00000002, 0x00000008, 0x28000000, 0x00000000]);
        public static const FOLLOW_91_in_reference1495:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_exp_in_reference1499:BitSet = new BitSet([0x00000000, 0x00000000, 0x10000000, 0x00000000]);
        public static const FOLLOW_92_in_reference1501:BitSet = new BitSet([0x00000002, 0x00000008, 0x28000000, 0x00000000]);
        public static const FOLLOW_93_in_reference1525:BitSet = new BitSet([0x00400000, 0x00000000]);
        public static const FOLLOW_Identifier_in_reference1529:BitSet = new BitSet([0x00000002, 0x00000008, 0x28000000, 0x00000000]);
        public static const FOLLOW_35_in_reference1551:BitSet = new BitSet([0x01C00000, 0x00400098, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_params_in_reference1555:BitSet = new BitSet([0x00000000, 0x00000010]);
        public static const FOLLOW_36_in_reference1558:BitSet = new BitSet([0x00000000, 0x00000000, 0x08000000, 0x00000000]);
        public static const FOLLOW_91_in_reference1563:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_exp_in_reference1567:BitSet = new BitSet([0x00000000, 0x00000000, 0x10000000, 0x00000000]);
        public static const FOLLOW_92_in_reference1569:BitSet = new BitSet([0x00000002, 0x00000008, 0x28000000, 0x00000000]);
        public static const FOLLOW_35_in_reference1600:BitSet = new BitSet([0x01C00000, 0x00400098, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_params_in_reference1604:BitSet = new BitSet([0x00000000, 0x00000010]);
        public static const FOLLOW_36_in_reference1607:BitSet = new BitSet([0x00000000, 0x00000000, 0x20000000, 0x00000000]);
        public static const FOLLOW_93_in_reference1612:BitSet = new BitSet([0x00400000, 0x00000000]);
        public static const FOLLOW_Identifier_in_reference1616:BitSet = new BitSet([0x00000002, 0x00000008, 0x28000000, 0x00000000]);
        public static const FOLLOW_object_in_referenceOrFuncCall1656:BitSet = new BitSet([0x00000002, 0x00000008, 0x28000000, 0x00000000]);
        public static const FOLLOW_91_in_referenceOrFuncCall1675:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_exp_in_referenceOrFuncCall1679:BitSet = new BitSet([0x00000000, 0x00000000, 0x10000000, 0x00000000]);
        public static const FOLLOW_92_in_referenceOrFuncCall1681:BitSet = new BitSet([0x00000002, 0x00000008, 0x28000000, 0x00000000]);
        public static const FOLLOW_93_in_referenceOrFuncCall1701:BitSet = new BitSet([0x00400000, 0x00000000]);
        public static const FOLLOW_Identifier_in_referenceOrFuncCall1705:BitSet = new BitSet([0x00000002, 0x00000008, 0x28000000, 0x00000000]);
        public static const FOLLOW_35_in_referenceOrFuncCall1724:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_params_in_referenceOrFuncCall1728:BitSet = new BitSet([0x00000000, 0x00000010]);
        public static const FOLLOW_36_in_referenceOrFuncCall1730:BitSet = new BitSet([0x00000002, 0x00000008, 0x28000000, 0x00000000]);
        public static const FOLLOW_35_in_referenceOrFuncCall1749:BitSet = new BitSet([0x00000000, 0x00000010]);
        public static const FOLLOW_36_in_referenceOrFuncCall1751:BitSet = new BitSet([0x00000002, 0x00000008, 0x28000000, 0x00000000]);
        public static const FOLLOW_94_in_funcDef1780:BitSet = new BitSet([0x00000000, 0x00000008]);
        public static const FOLLOW_35_in_funcDef1789:BitSet = new BitSet([0x00400000, 0x00000000]);
        public static const FOLLOW_args_in_funcDef1793:BitSet = new BitSet([0x00000000, 0x00000010]);
        public static const FOLLOW_36_in_funcDef1795:BitSet = new BitSet([0x00000000, 0x00000080]);
        public static const FOLLOW_block_in_funcDef1799:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_35_in_funcDef1819:BitSet = new BitSet([0x00000000, 0x00000010]);
        public static const FOLLOW_36_in_funcDef1821:BitSet = new BitSet([0x00000000, 0x00000080]);
        public static const FOLLOW_block_in_funcDef1825:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_Identifier_in_args1852:BitSet = new BitSet([0x00000002, 0x00000000, 0x80000000, 0x00000000]);
        public static const FOLLOW_95_in_args1861:BitSet = new BitSet([0x00400000, 0x00000000]);
        public static const FOLLOW_Identifier_in_args1867:BitSet = new BitSet([0x00000002, 0x00000000, 0x80000000, 0x00000000]);
        public static const FOLLOW_Identifier_in_object1884:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_array_in_object1889:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_createObj_in_object1894:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_exp_in_params1906:BitSet = new BitSet([0x00000002, 0x00000000, 0x80000000, 0x00000000]);
        public static const FOLLOW_95_in_params1915:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_exp_in_params1921:BitSet = new BitSet([0x00000002, 0x00000000, 0x80000000, 0x00000000]);
        public static const FOLLOW_91_in_array1938:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_items_in_array1942:BitSet = new BitSet([0x00000000, 0x00000000, 0x10000000, 0x00000000]);
        public static const FOLLOW_92_in_array1944:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_91_in_array1960:BitSet = new BitSet([0x00000000, 0x00000000, 0x10000000, 0x00000000]);
        public static const FOLLOW_92_in_array1962:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_exp_in_items1984:BitSet = new BitSet([0x00000002, 0x00000000, 0x80000000, 0x00000000]);
        public static const FOLLOW_95_in_items1993:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_exp_in_items1999:BitSet = new BitSet([0x00000002, 0x00000000, 0x80000000, 0x00000000]);
        public static const FOLLOW_39_in_createObj2016:BitSet = new BitSet([0x01400000, 0x00000000]);
        public static const FOLLOW_objItems_in_createObj2020:BitSet = new BitSet([0x00000000, 0x00000100]);
        public static const FOLLOW_40_in_createObj2022:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_39_in_createObj2038:BitSet = new BitSet([0x00000000, 0x00000100]);
        public static const FOLLOW_40_in_createObj2040:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_set_in_objItems2065:BitSet = new BitSet([0x00000000, 0x01000000]);
        public static const FOLLOW_56_in_objItems2073:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_exp_in_objItems2076:BitSet = new BitSet([0x00000002, 0x00000000, 0x80000000, 0x00000000]);
        public static const FOLLOW_95_in_objItems2085:BitSet = new BitSet([0x01400000, 0x00000000]);
        public static const FOLLOW_set_in_objItems2091:BitSet = new BitSet([0x00000000, 0x01000000]);
        public static const FOLLOW_56_in_objItems2099:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_exp_in_objItems2102:BitSet = new BitSet([0x00000002, 0x00000000, 0x80000000, 0x00000000]);
        public static const FOLLOW_96_in_ret2120:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_exp_in_ret2124:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_96_in_ret2140:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_stmtList_in_synpred1_Expression152:BitSet = new BitSet([0x00000000, 0x00000000]);
        public static const FOLLOW_EOF_in_synpred1_Expression155:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_34_in_synpred5_Expression226:BitSet = new BitSet([0x00000000, 0x00000008]);
        public static const FOLLOW_35_in_synpred5_Expression228:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_exp_in_synpred5_Expression230:BitSet = new BitSet([0x00000000, 0x00000010]);
        public static const FOLLOW_36_in_synpred5_Expression232:BitSet = new BitSet([0x00000000, 0x00000080]);
        public static const FOLLOW_block_in_synpred5_Expression236:BitSet = new BitSet([0x00000000, 0x00000020]);
        public static const FOLLOW_37_in_synpred5_Expression238:BitSet = new BitSet([0x00000000, 0x00000080]);
        public static const FOLLOW_block_in_synpred5_Expression242:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_34_in_synpred6_Expression261:BitSet = new BitSet([0x00000000, 0x00000008]);
        public static const FOLLOW_35_in_synpred6_Expression263:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_exp_in_synpred6_Expression265:BitSet = new BitSet([0x00000000, 0x00000010]);
        public static const FOLLOW_36_in_synpred6_Expression267:BitSet = new BitSet([0x00000000, 0x00000080]);
        public static const FOLLOW_block_in_synpred6_Expression269:BitSet = new BitSet([0x00000000, 0x00000020]);
        public static const FOLLOW_37_in_synpred6_Expression271:BitSet = new BitSet([0x00000000, 0x00000004]);
        public static const FOLLOW_ifStmt_in_synpred6_Expression273:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_41_in_synpred7_Expression385:BitSet = new BitSet([0x01C00000, 0x004000CC, 0x4FF18000, 0x00000001]);
        public static const FOLLOW_instr_in_synpred7_Expression387:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_41_in_synpred8_Expression393:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_assignExp_in_synpred10_Expression441:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_55_in_synpred24_Expression799:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_exp_in_synpred24_Expression806:BitSet = new BitSet([0x00000000, 0x01000000]);
        public static const FOLLOW_56_in_synpred24_Expression811:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_exp_in_synpred24_Expression818:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_79_in_synpred47_Expression1213:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_multExp_in_synpred47_Expression1216:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_80_in_synpred48_Expression1222:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_multExp_in_synpred48_Expression1225:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_reference_in_synpred58_Expression1373:BitSet = new BitSet([0x00000000, 0x00000000, 0x00400000, 0x00000000]);
        public static const FOLLOW_86_in_synpred58_Expression1375:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_reference_in_synpred59_Expression1391:BitSet = new BitSet([0x00000000, 0x00000000, 0x00800000, 0x00000000]);
        public static const FOLLOW_87_in_synpred59_Expression1393:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_91_in_synpred67_Expression1495:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_exp_in_synpred67_Expression1499:BitSet = new BitSet([0x00000000, 0x00000000, 0x10000000, 0x00000000]);
        public static const FOLLOW_92_in_synpred67_Expression1501:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_35_in_synpred70_Expression1551:BitSet = new BitSet([0x01C00000, 0x00400098, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_params_in_synpred70_Expression1555:BitSet = new BitSet([0x00000000, 0x00000010]);
        public static const FOLLOW_36_in_synpred70_Expression1558:BitSet = new BitSet([0x00000000, 0x00000000, 0x08000000, 0x00000000]);
        public static const FOLLOW_91_in_synpred70_Expression1563:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_exp_in_synpred70_Expression1567:BitSet = new BitSet([0x00000000, 0x00000000, 0x10000000, 0x00000000]);
        public static const FOLLOW_92_in_synpred70_Expression1569:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_35_in_synpred72_Expression1600:BitSet = new BitSet([0x01C00000, 0x00400098, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_params_in_synpred72_Expression1604:BitSet = new BitSet([0x00000000, 0x00000010]);
        public static const FOLLOW_36_in_synpred72_Expression1607:BitSet = new BitSet([0x00000000, 0x00000000, 0x20000000, 0x00000000]);
        public static const FOLLOW_93_in_synpred72_Expression1612:BitSet = new BitSet([0x00400000, 0x00000000]);
        public static const FOLLOW_Identifier_in_synpred72_Expression1616:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_91_in_synpred73_Expression1675:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_exp_in_synpred73_Expression1679:BitSet = new BitSet([0x00000000, 0x00000000, 0x10000000, 0x00000000]);
        public static const FOLLOW_92_in_synpred73_Expression1681:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_35_in_synpred75_Expression1724:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_params_in_synpred75_Expression1728:BitSet = new BitSet([0x00000000, 0x00000010]);
        public static const FOLLOW_36_in_synpred75_Expression1730:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_35_in_synpred76_Expression1749:BitSet = new BitSet([0x00000000, 0x00000010]);
        public static const FOLLOW_36_in_synpred76_Expression1751:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_96_in_synpred88_Expression2120:BitSet = new BitSet([0x01C00000, 0x00400088, 0x4FF18000, 0x00000000]);
        public static const FOLLOW_exp_in_synpred88_Expression2124:BitSet = new BitSet([0x00000002, 0x00000000]);

    }
}