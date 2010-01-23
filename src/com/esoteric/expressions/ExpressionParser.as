// $ANTLR 3.2 Sep 23, 2009 12:02:23 C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g 2010-01-23 13:04:29
package com.esoteric.expressions {
    import org.antlr.runtime.*;
        

    import org.antlr.runtime.tree.*;


    public class ExpressionParser extends Parser {
        public static const tokenNames:Array = [
            "<invalid>", "<EOR>", "<DOWN>", "<UP>", "StmtList", "InstrList", "FuncCall", "PropRef", "PropExp", "CondExp", "CreateArray", "CreateObject", "IfStmt", "WhileStmt", "ForStmt", "FuncDef", "Return", "Local", "Identifier", "NumberLiteral", "StringLiteral", "LineComment", "MultilineComment", "Digit", "Exponent", "HexDigit", "EscapeSequence", "WhiteSpace", "Letter", "UnicodeEscapeChar", "'if'", "'('", "')'", "'else'", "'while'", "'{'", "'}'", "';'", "'='", "'*='", "'/='", "'%='", "'+='", "'-='", "'<<='", "'>>='", "'>>>='", "'&='", "'^='", "'|='", "'var'", "'?'", "':'", "'||'", "'or'", "'&&'", "'and'", "'|'", "'^'", "'&'", "'=='", "'!='", "'==='", "'!=='", "'<'", "'lt'", "'>'", "'gt'", "'<='", "'lte'", "'>='", "'gte'", "'<<'", "'>>'", "'>>>'", "'+'", "'-'", "'*'", "'/'", "'%'", "'~'", "'!'", "'true'", "'false'", "'null'", "'['", "']'", "'.'", "'function'", "','", "'return'"
        ];
        public static const T__68:int=68;
        public static const T__69:int=69;
        public static const T__66:int=66;
        public static const T__67:int=67;
        public static const StmtList:int=4;
        public static const T__64:int=64;
        public static const T__65:int=65;
        public static const T__62:int=62;
        public static const T__63:int=63;
        public static const CreateObject:int=11;
        public static const Exponent:int=24;
        public static const LineComment:int=21;
        public static const T__61:int=61;
        public static const EOF:int=-1;
        public static const T__60:int=60;
        public static const HexDigit:int=25;
        public static const PropExp:int=8;
        public static const Identifier:int=18;
        public static const T__55:int=55;
        public static const T__56:int=56;
        public static const T__57:int=57;
        public static const T__58:int=58;
        public static const T__51:int=51;
        public static const FuncDef:int=15;
        public static const T__90:int=90;
        public static const T__52:int=52;
        public static const T__53:int=53;
        public static const T__54:int=54;
        public static const WhileStmt:int=13;
        public static const T__59:int=59;
        public static const IfStmt:int=12;
        public static const CondExp:int=9;
        public static const WhiteSpace:int=27;
        public static const Return:int=16;
        public static const T__50:int=50;
        public static const ForStmt:int=14;
        public static const CreateArray:int=10;
        public static const T__42:int=42;
        public static const T__43:int=43;
        public static const T__40:int=40;
        public static const T__41:int=41;
        public static const T__80:int=80;
        public static const T__46:int=46;
        public static const T__81:int=81;
        public static const T__47:int=47;
        public static const T__82:int=82;
        public static const T__44:int=44;
        public static const T__83:int=83;
        public static const T__45:int=45;
        public static const UnicodeEscapeChar:int=29;
        public static const NumberLiteral:int=19;
        public static const T__48:int=48;
        public static const T__49:int=49;
        public static const InstrList:int=5;
        public static const Digit:int=23;
        public static const T__85:int=85;
        public static const T__84:int=84;
        public static const T__87:int=87;
        public static const T__86:int=86;
        public static const T__89:int=89;
        public static const T__88:int=88;
        public static const StringLiteral:int=20;
        public static const T__30:int=30;
        public static const T__31:int=31;
        public static const Local:int=17;
        public static const T__32:int=32;
        public static const T__71:int=71;
        public static const T__33:int=33;
        public static const T__72:int=72;
        public static const T__34:int=34;
        public static const T__35:int=35;
        public static const T__70:int=70;
        public static const T__36:int=36;
        public static const T__37:int=37;
        public static const FuncCall:int=6;
        public static const T__38:int=38;
        public static const T__39:int=39;
        public static const PropRef:int=7;
        public static const T__76:int=76;
        public static const MultilineComment:int=22;
        public static const T__75:int=75;
        public static const T__74:int=74;
        public static const Letter:int=28;
        public static const EscapeSequence:int=26;
        public static const T__73:int=73;
        public static const T__79:int=79;
        public static const T__78:int=78;
        public static const T__77:int=77;

        // delegates
        // delegators


            public function ExpressionParser(input:TokenStream, state:RecognizerSharedState = null) {
                super(input, state);

                dfa5 = new DFA(this, 5,
                            "()* loopback of 81:3: ( ';' instr | ';' )*",
                            DFA5_eot, DFA5_eof, DFA5_min,
                            DFA5_max, DFA5_accept, DFA5_special,
                            DFA5_transition, DFA5_specialStateTransition);

                dfa7 = new DFA(this, 7,
                            "92:1: exp : ( assignExp | local | condExp );",
                            DFA7_eot, DFA7_eof, DFA7_min,
                            DFA7_max, DFA7_accept, DFA7_special,
                            DFA7_transition, DFA7_specialStateTransition);

                dfa19 = new DFA(this, 19,
                            "()* loopback of 202:3: ( '+' multExp | '-' multExp )*",
                            DFA19_eot, DFA19_eof, DFA19_min,
                            DFA19_max, DFA19_accept, DFA19_special,
                            DFA19_transition, DFA19_specialStateTransition);

                dfa25 = new DFA(this, 25,
                            "()* loopback of 238:3: ( '[' e= exp ']' -> ^( PropExp $reference $e) | '.' i= Identifier -> ^( PropRef $reference $i) | '(' (p= params )? ')' '[' e= exp ']' -> ^( PropExp ^( FuncCall $reference $p) $e) | '(' (p= params )? ')' '.' i= Identifier -> ^( PropRef ^( FuncCall $reference $p) $i) )*",
                            DFA25_eot, DFA25_eof, DFA25_min,
                            DFA25_max, DFA25_accept, DFA25_special,
                            DFA25_transition, DFA25_specialStateTransition);

                dfa26 = new DFA(this, 26,
                            "()* loopback of 253:3: ( '[' e= exp ']' -> ^( PropExp $referenceOrFuncCall $e) | '.' i= Identifier -> ^( PropRef $referenceOrFuncCall $i) | '(' p= params ')' -> ^( FuncCall $referenceOrFuncCall $p) | '(' ')' -> ^( FuncCall $referenceOrFuncCall) )*",
                            DFA26_eot, DFA26_eof, DFA26_min,
                            DFA26_max, DFA26_accept, DFA26_special,
                            DFA26_transition, DFA26_specialStateTransition);

                this.state.ruleMemo = new Array(119+1);
                 
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
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:50:1: main : ( stmtList EOF | EOF );
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
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:51:2: ( stmtList EOF | EOF )
                var alt1:int=2;
                var LA1_0:int = input.LA(1);

                if ( ((LA1_0>=18 && LA1_0<=20)||(LA1_0>=30 && LA1_0<=31)||(LA1_0>=34 && LA1_0<=35)||LA1_0==50||(LA1_0>=75 && LA1_0<=76)||(LA1_0>=80 && LA1_0<=85)||LA1_0==88||LA1_0==90) ) {
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
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:51:4: stmtList EOF
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_stmtList_in_main136);
                        stmtList1=stmtList();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) root_0 = CommonTree(adaptor.becomeRoot(stmtList1.tree, root_0));
                        EOF2=Token(matchStream(input,EOF,FOLLOW_EOF_in_main139)); if (this.state.failed) return retval;

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:52:4: EOF
                        {
                        root_0 = CommonTree(adaptor.nil());

                        EOF3=Token(matchStream(input,EOF,FOLLOW_EOF_in_main145)); if (this.state.failed) return retval;
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
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:55:1: stmtList : ( stmt )* -> ^( StmtList ( stmt )* ) ;
        public final function stmtList():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var stmtList_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var stmt4:ParserRuleReturnScope = null;


            var stream_stmt:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule stmt");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 2) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:56:2: ( ( stmt )* -> ^( StmtList ( stmt )* ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:56:4: ( stmt )*
                {
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:56:4: ( stmt )*
                loop2:
                do {
                    var alt2:int=2;
                    var LA2_0:int = input.LA(1);

                    if ( ((LA2_0>=18 && LA2_0<=20)||(LA2_0>=30 && LA2_0<=31)||(LA2_0>=34 && LA2_0<=35)||LA2_0==50||(LA2_0>=75 && LA2_0<=76)||(LA2_0>=80 && LA2_0<=85)||LA2_0==88||LA2_0==90) ) {
                        alt2=1;
                    }


                    switch (alt2) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:0:0: stmt
                	    {
                	    pushFollow(FOLLOW_stmt_in_stmtList157);
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
                // 56:14: -> ^( StmtList ( stmt )* )
                {
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:56:17: ^( StmtList ( stmt )* )
                    {
                    var root_1:CommonTree = CommonTree(adaptor.nil());
                    root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(StmtList, "StmtList")), root_1));

                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:56:28: ( stmt )*
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
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:59:1: stmt : ( ifStmt | whileStmt | instrList );
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
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:60:2: ( ifStmt | whileStmt | instrList )
                var alt3:int=3;
                switch ( input.LA(1) ) {
                case 30:
                    {
                    alt3=1;
                    }
                    break;
                case 34:
                    {
                    alt3=2;
                    }
                    break;
                case Identifier:
                case NumberLiteral:
                case StringLiteral:
                case 31:
                case 35:
                case 50:
                case 75:
                case 76:
                case 80:
                case 81:
                case 82:
                case 83:
                case 84:
                case 85:
                case 88:
                case 90:
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
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:60:4: ifStmt
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_ifStmt_in_stmt185);
                        ifStmt5=ifStmt();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) root_0 = CommonTree(adaptor.becomeRoot(ifStmt5.tree, root_0));

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:61:4: whileStmt
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_whileStmt_in_stmt191);
                        whileStmt6=whileStmt();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) root_0 = CommonTree(adaptor.becomeRoot(whileStmt6.tree, root_0));

                        }
                        break;
                    case 3 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:62:4: instrList
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_instrList_in_stmt197);
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
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:65:1: ifStmt : ( 'if' '(' exp ')' l= block 'else' r= block -> ^( IfStmt exp $l $r) | 'if' '(' exp ')' block 'else' ifStmt -> ^( IfStmt exp block ifStmt ) | 'if' '(' exp ')' block -> ^( IfStmt exp block ) );
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
            var stream_30:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 30");
            var stream_32:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 32");
            var stream_31:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 31");
            var stream_33:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 33");
            var stream_exp:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule exp");
            var stream_block:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule block");
            var stream_ifStmt:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule ifStmt");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 4) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:66:2: ( 'if' '(' exp ')' l= block 'else' r= block -> ^( IfStmt exp $l $r) | 'if' '(' exp ')' block 'else' ifStmt -> ^( IfStmt exp block ifStmt ) | 'if' '(' exp ')' block -> ^( IfStmt exp block ) )
                var alt4:int=3;
                var LA4_0:int = input.LA(1);

                if ( (LA4_0==30) ) {
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
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:66:4: 'if' '(' exp ')' l= block 'else' r= block
                        {
                        string_literal8=Token(matchStream(input,30,FOLLOW_30_in_ifStmt210)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_30.add(string_literal8);

                        char_literal9=Token(matchStream(input,31,FOLLOW_31_in_ifStmt212)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_31.add(char_literal9);

                        pushFollow(FOLLOW_exp_in_ifStmt214);
                        exp10=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp10.tree);
                        char_literal11=Token(matchStream(input,32,FOLLOW_32_in_ifStmt216)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_32.add(char_literal11);

                        pushFollow(FOLLOW_block_in_ifStmt220);
                        l=block();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_block.add(l.tree);
                        string_literal12=Token(matchStream(input,33,FOLLOW_33_in_ifStmt222)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_33.add(string_literal12);

                        pushFollow(FOLLOW_block_in_ifStmt226);
                        r=block();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_block.add(r.tree);


                        // AST REWRITE
                        // elements: exp, r, l
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
                        // 66:44: -> ^( IfStmt exp $l $r)
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:66:47: ^( IfStmt exp $l $r)
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
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:67:4: 'if' '(' exp ')' block 'else' ifStmt
                        {
                        string_literal13=Token(matchStream(input,30,FOLLOW_30_in_ifStmt245)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_30.add(string_literal13);

                        char_literal14=Token(matchStream(input,31,FOLLOW_31_in_ifStmt247)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_31.add(char_literal14);

                        pushFollow(FOLLOW_exp_in_ifStmt249);
                        exp15=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp15.tree);
                        char_literal16=Token(matchStream(input,32,FOLLOW_32_in_ifStmt251)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_32.add(char_literal16);

                        pushFollow(FOLLOW_block_in_ifStmt253);
                        block17=block();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_block.add(block17.tree);
                        string_literal18=Token(matchStream(input,33,FOLLOW_33_in_ifStmt255)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_33.add(string_literal18);

                        pushFollow(FOLLOW_ifStmt_in_ifStmt257);
                        ifStmt19=ifStmt();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_ifStmt.add(ifStmt19.tree);


                        // AST REWRITE
                        // elements: block, ifStmt, exp
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 67:41: -> ^( IfStmt exp block ifStmt )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:67:44: ^( IfStmt exp block ifStmt )
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
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:68:4: 'if' '(' exp ')' block
                        {
                        string_literal20=Token(matchStream(input,30,FOLLOW_30_in_ifStmt274)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_30.add(string_literal20);

                        char_literal21=Token(matchStream(input,31,FOLLOW_31_in_ifStmt276)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_31.add(char_literal21);

                        pushFollow(FOLLOW_exp_in_ifStmt278);
                        exp22=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp22.tree);
                        char_literal23=Token(matchStream(input,32,FOLLOW_32_in_ifStmt280)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_32.add(char_literal23);

                        pushFollow(FOLLOW_block_in_ifStmt282);
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
                        // 68:29: -> ^( IfStmt exp block )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:68:32: ^( IfStmt exp block )
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
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:71:1: whileStmt : 'while' '(' exp ')' block -> ^( WhileStmt exp block ) ;
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
            var stream_32:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 32");
            var stream_31:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 31");
            var stream_34:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 34");
            var stream_exp:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule exp");
            var stream_block:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule block");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 5) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:72:2: ( 'while' '(' exp ')' block -> ^( WhileStmt exp block ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:72:4: 'while' '(' exp ')' block
                {
                string_literal25=Token(matchStream(input,34,FOLLOW_34_in_whileStmt306)); if (this.state.failed) return retval; 
                if ( this.state.backtracking==0 ) stream_34.add(string_literal25);

                char_literal26=Token(matchStream(input,31,FOLLOW_31_in_whileStmt308)); if (this.state.failed) return retval; 
                if ( this.state.backtracking==0 ) stream_31.add(char_literal26);

                pushFollow(FOLLOW_exp_in_whileStmt310);
                exp27=exp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) stream_exp.add(exp27.tree);
                char_literal28=Token(matchStream(input,32,FOLLOW_32_in_whileStmt312)); if (this.state.failed) return retval; 
                if ( this.state.backtracking==0 ) stream_32.add(char_literal28);

                pushFollow(FOLLOW_block_in_whileStmt314);
                block29=block();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) stream_block.add(block29.tree);


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
                // 72:31: -> ^( WhileStmt exp block )
                {
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:72:34: ^( WhileStmt exp block )
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
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:75:1: block : '{' stmtList '}' -> ^( stmtList ) ;
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
            var stream_35:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 35");
            var stream_36:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 36");
            var stream_stmtList:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule stmtList");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 6) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:76:2: ( '{' stmtList '}' -> ^( stmtList ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:76:4: '{' stmtList '}'
                {
                char_literal30=Token(matchStream(input,35,FOLLOW_35_in_block337)); if (this.state.failed) return retval; 
                if ( this.state.backtracking==0 ) stream_35.add(char_literal30);

                pushFollow(FOLLOW_stmtList_in_block339);
                stmtList31=stmtList();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) stream_stmtList.add(stmtList31.tree);
                char_literal32=Token(matchStream(input,36,FOLLOW_36_in_block341)); if (this.state.failed) return retval; 
                if ( this.state.backtracking==0 ) stream_36.add(char_literal32);



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
                // 76:23: -> ^( stmtList )
                {
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:76:26: ^( stmtList )
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
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:79:1: instrList : instr ( ';' instr | ';' )* -> ^( InstrList ( instr )+ ) ;
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
            var stream_37:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 37");
            var stream_instr:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule instr");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 7) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:80:2: ( instr ( ';' instr | ';' )* -> ^( InstrList ( instr )+ ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:80:4: instr ( ';' instr | ';' )*
                {
                pushFollow(FOLLOW_instr_in_instrList360);
                instr33=instr();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) stream_instr.add(instr33.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:81:3: ( ';' instr | ';' )*
                loop5:
                do {
                    var alt5:int=3;
                    alt5 = dfa5.predict(input);
                    switch (alt5) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:82:4: ';' instr
                	    {
                	    char_literal34=Token(matchStream(input,37,FOLLOW_37_in_instrList369)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_37.add(char_literal34);

                	    pushFollow(FOLLOW_instr_in_instrList371);
                	    instr35=instr();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) stream_instr.add(instr35.tree);

                	    }
                	    break;
                	case 2 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:83:5: ';'
                	    {
                	    char_literal36=Token(matchStream(input,37,FOLLOW_37_in_instrList377)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_37.add(char_literal36);


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
                // 84:10: -> ^( InstrList ( instr )+ )
                {
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:84:13: ^( InstrList ( instr )+ )
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
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:87:1: instr : ( exp | ret );
        public final function instr():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var instr_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var exp37:ParserRuleReturnScope = null;

            var ret38:ParserRuleReturnScope = null;



            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 8) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:88:2: ( exp | ret )
                var alt6:int=2;
                var LA6_0:int = input.LA(1);

                if ( ((LA6_0>=18 && LA6_0<=20)||LA6_0==31||LA6_0==35||LA6_0==50||(LA6_0>=75 && LA6_0<=76)||(LA6_0>=80 && LA6_0<=85)||LA6_0==88) ) {
                    alt6=1;
                }
                else if ( (LA6_0==90) ) {
                    alt6=2;
                }
                else {
                    if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                    throw new NoViableAltException("", 6, 0, input);

                }
                switch (alt6) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:88:4: exp
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_exp_in_instr407);
                        exp37=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, exp37.tree);

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:89:4: ret
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_ret_in_instr412);
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
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:92:1: exp : ( assignExp | local | condExp );
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
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:93:2: ( assignExp | local | condExp )
                var alt7:int=3;
                alt7 = dfa7.predict(input);
                switch (alt7) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:93:4: assignExp
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_assignExp_in_exp425);
                        assignExp39=assignExp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) root_0 = CommonTree(adaptor.becomeRoot(assignExp39.tree, root_0));

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:94:4: local
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_local_in_exp431);
                        local40=local();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) root_0 = CommonTree(adaptor.becomeRoot(local40.tree, root_0));

                        }
                        break;
                    case 3 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:95:4: condExp
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_condExp_in_exp437);
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
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:98:1: assignExp : reference ( '=' exp -> ^( '=' exp reference ) | '*=' exp -> ^( '*=' exp reference ) | '/=' exp -> ^( '/=' exp reference ) | '%=' exp -> ^( '%=' exp reference ) | '+=' exp -> ^( '+=' exp reference ) | '-=' exp -> ^( '-=' exp reference ) | '<<=' exp -> ^( '<<=' exp reference ) | '>>=' exp -> ^( '>>=' exp reference ) | '>>>=' exp -> ^( '>>>=' exp reference ) | '&=' exp -> ^( '&=' exp reference ) | '^=' exp -> ^( '^=' exp reference ) | '|=' exp -> ^( '|=' exp reference ) ) ;
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
            var stream_45:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 45");
            var stream_43:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 43");
            var stream_44:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 44");
            var stream_42:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 42");
            var stream_41:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 41");
            var stream_47:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 47");
            var stream_46:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 46");
            var stream_40:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 40");
            var stream_39:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 39");
            var stream_38:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 38");
            var stream_exp:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule exp");
            var stream_reference:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule reference");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 10) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:99:2: ( reference ( '=' exp -> ^( '=' exp reference ) | '*=' exp -> ^( '*=' exp reference ) | '/=' exp -> ^( '/=' exp reference ) | '%=' exp -> ^( '%=' exp reference ) | '+=' exp -> ^( '+=' exp reference ) | '-=' exp -> ^( '-=' exp reference ) | '<<=' exp -> ^( '<<=' exp reference ) | '>>=' exp -> ^( '>>=' exp reference ) | '>>>=' exp -> ^( '>>>=' exp reference ) | '&=' exp -> ^( '&=' exp reference ) | '^=' exp -> ^( '^=' exp reference ) | '|=' exp -> ^( '|=' exp reference ) ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:99:4: reference ( '=' exp -> ^( '=' exp reference ) | '*=' exp -> ^( '*=' exp reference ) | '/=' exp -> ^( '/=' exp reference ) | '%=' exp -> ^( '%=' exp reference ) | '+=' exp -> ^( '+=' exp reference ) | '-=' exp -> ^( '-=' exp reference ) | '<<=' exp -> ^( '<<=' exp reference ) | '>>=' exp -> ^( '>>=' exp reference ) | '>>>=' exp -> ^( '>>>=' exp reference ) | '&=' exp -> ^( '&=' exp reference ) | '^=' exp -> ^( '^=' exp reference ) | '|=' exp -> ^( '|=' exp reference ) )
                {
                pushFollow(FOLLOW_reference_in_assignExp450);
                reference42=reference();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) stream_reference.add(reference42.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:100:3: ( '=' exp -> ^( '=' exp reference ) | '*=' exp -> ^( '*=' exp reference ) | '/=' exp -> ^( '/=' exp reference ) | '%=' exp -> ^( '%=' exp reference ) | '+=' exp -> ^( '+=' exp reference ) | '-=' exp -> ^( '-=' exp reference ) | '<<=' exp -> ^( '<<=' exp reference ) | '>>=' exp -> ^( '>>=' exp reference ) | '>>>=' exp -> ^( '>>>=' exp reference ) | '&=' exp -> ^( '&=' exp reference ) | '^=' exp -> ^( '^=' exp reference ) | '|=' exp -> ^( '|=' exp reference ) )
                var alt8:int=12;
                switch ( input.LA(1) ) {
                case 38:
                    {
                    alt8=1;
                    }
                    break;
                case 39:
                    {
                    alt8=2;
                    }
                    break;
                case 40:
                    {
                    alt8=3;
                    }
                    break;
                case 41:
                    {
                    alt8=4;
                    }
                    break;
                case 42:
                    {
                    alt8=5;
                    }
                    break;
                case 43:
                    {
                    alt8=6;
                    }
                    break;
                case 44:
                    {
                    alt8=7;
                    }
                    break;
                case 45:
                    {
                    alt8=8;
                    }
                    break;
                case 46:
                    {
                    alt8=9;
                    }
                    break;
                case 47:
                    {
                    alt8=10;
                    }
                    break;
                case 48:
                    {
                    alt8=11;
                    }
                    break;
                case 49:
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
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:101:4: '=' exp
                        {
                        char_literal43=Token(matchStream(input,38,FOLLOW_38_in_assignExp459)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_38.add(char_literal43);

                        pushFollow(FOLLOW_exp_in_assignExp461);
                        exp44=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp44.tree);


                        // AST REWRITE
                        // elements: reference, exp, 38
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 101:15: -> ^( '=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:101:18: ^( '=' exp reference )
                            {
                            var root_1:CommonTree = CommonTree(adaptor.nil());
                            root_1 = CommonTree(adaptor.becomeRoot(stream_38.nextNode(), root_1));

                            adaptor.addChild(root_1, stream_exp.nextTree());
                            adaptor.addChild(root_1, stream_reference.nextTree());

                            adaptor.addChild(root_0, root_1);
                            }

                        }

                        retval.tree = root_0;}
                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:102:5: '*=' exp
                        {
                        string_literal45=Token(matchStream(input,39,FOLLOW_39_in_assignExp480)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_39.add(string_literal45);

                        pushFollow(FOLLOW_exp_in_assignExp482);
                        exp46=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp46.tree);


                        // AST REWRITE
                        // elements: reference, exp, 39
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 102:16: -> ^( '*=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:102:19: ^( '*=' exp reference )
                            {
                            var root_1:CommonTree = CommonTree(adaptor.nil());
                            root_1 = CommonTree(adaptor.becomeRoot(stream_39.nextNode(), root_1));

                            adaptor.addChild(root_1, stream_exp.nextTree());
                            adaptor.addChild(root_1, stream_reference.nextTree());

                            adaptor.addChild(root_0, root_1);
                            }

                        }

                        retval.tree = root_0;}
                        }
                        break;
                    case 3 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:103:5: '/=' exp
                        {
                        string_literal47=Token(matchStream(input,40,FOLLOW_40_in_assignExp500)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_40.add(string_literal47);

                        pushFollow(FOLLOW_exp_in_assignExp502);
                        exp48=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp48.tree);


                        // AST REWRITE
                        // elements: reference, 40, exp
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 103:16: -> ^( '/=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:103:19: ^( '/=' exp reference )
                            {
                            var root_1:CommonTree = CommonTree(adaptor.nil());
                            root_1 = CommonTree(adaptor.becomeRoot(stream_40.nextNode(), root_1));

                            adaptor.addChild(root_1, stream_exp.nextTree());
                            adaptor.addChild(root_1, stream_reference.nextTree());

                            adaptor.addChild(root_0, root_1);
                            }

                        }

                        retval.tree = root_0;}
                        }
                        break;
                    case 4 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:104:5: '%=' exp
                        {
                        string_literal49=Token(matchStream(input,41,FOLLOW_41_in_assignExp520)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_41.add(string_literal49);

                        pushFollow(FOLLOW_exp_in_assignExp522);
                        exp50=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp50.tree);


                        // AST REWRITE
                        // elements: reference, 41, exp
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 104:16: -> ^( '%=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:104:19: ^( '%=' exp reference )
                            {
                            var root_1:CommonTree = CommonTree(adaptor.nil());
                            root_1 = CommonTree(adaptor.becomeRoot(stream_41.nextNode(), root_1));

                            adaptor.addChild(root_1, stream_exp.nextTree());
                            adaptor.addChild(root_1, stream_reference.nextTree());

                            adaptor.addChild(root_0, root_1);
                            }

                        }

                        retval.tree = root_0;}
                        }
                        break;
                    case 5 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:105:5: '+=' exp
                        {
                        string_literal51=Token(matchStream(input,42,FOLLOW_42_in_assignExp540)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_42.add(string_literal51);

                        pushFollow(FOLLOW_exp_in_assignExp542);
                        exp52=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp52.tree);


                        // AST REWRITE
                        // elements: exp, 42, reference
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 105:16: -> ^( '+=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:105:19: ^( '+=' exp reference )
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
                    case 6 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:106:5: '-=' exp
                        {
                        string_literal53=Token(matchStream(input,43,FOLLOW_43_in_assignExp560)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_43.add(string_literal53);

                        pushFollow(FOLLOW_exp_in_assignExp562);
                        exp54=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp54.tree);


                        // AST REWRITE
                        // elements: reference, exp, 43
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 106:16: -> ^( '-=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:106:19: ^( '-=' exp reference )
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
                    case 7 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:107:5: '<<=' exp
                        {
                        string_literal55=Token(matchStream(input,44,FOLLOW_44_in_assignExp580)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_44.add(string_literal55);

                        pushFollow(FOLLOW_exp_in_assignExp582);
                        exp56=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp56.tree);


                        // AST REWRITE
                        // elements: 44, exp, reference
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 107:17: -> ^( '<<=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:107:20: ^( '<<=' exp reference )
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
                    case 8 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:108:5: '>>=' exp
                        {
                        string_literal57=Token(matchStream(input,45,FOLLOW_45_in_assignExp600)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_45.add(string_literal57);

                        pushFollow(FOLLOW_exp_in_assignExp602);
                        exp58=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp58.tree);


                        // AST REWRITE
                        // elements: 45, reference, exp
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 108:17: -> ^( '>>=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:108:20: ^( '>>=' exp reference )
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
                    case 9 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:109:5: '>>>=' exp
                        {
                        string_literal59=Token(matchStream(input,46,FOLLOW_46_in_assignExp620)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_46.add(string_literal59);

                        pushFollow(FOLLOW_exp_in_assignExp622);
                        exp60=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp60.tree);


                        // AST REWRITE
                        // elements: reference, exp, 46
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 109:18: -> ^( '>>>=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:109:21: ^( '>>>=' exp reference )
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
                    case 10 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:110:5: '&=' exp
                        {
                        string_literal61=Token(matchStream(input,47,FOLLOW_47_in_assignExp640)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_47.add(string_literal61);

                        pushFollow(FOLLOW_exp_in_assignExp642);
                        exp62=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp62.tree);


                        // AST REWRITE
                        // elements: exp, reference, 47
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 110:16: -> ^( '&=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:110:19: ^( '&=' exp reference )
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
                    case 11 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:111:5: '^=' exp
                        {
                        string_literal63=Token(matchStream(input,48,FOLLOW_48_in_assignExp660)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_48.add(string_literal63);

                        pushFollow(FOLLOW_exp_in_assignExp662);
                        exp64=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp64.tree);


                        // AST REWRITE
                        // elements: exp, 48, reference
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 111:16: -> ^( '^=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:111:19: ^( '^=' exp reference )
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
                    case 12 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:112:5: '|=' exp
                        {
                        string_literal65=Token(matchStream(input,49,FOLLOW_49_in_assignExp680)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_49.add(string_literal65);

                        pushFollow(FOLLOW_exp_in_assignExp682);
                        exp66=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp66.tree);


                        // AST REWRITE
                        // elements: reference, exp, 49
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 112:16: -> ^( '|=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:112:19: ^( '|=' exp reference )
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
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:116:1: local : ( 'var' i= Identifier -> ^( Local $i) | 'var' i= Identifier '=' exp -> ^( Local exp $i) );
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
            var stream_Identifier:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token Identifier");
            var stream_38:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 38");
            var stream_50:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 50");
            var stream_exp:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule exp");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 11) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:116:7: ( 'var' i= Identifier -> ^( Local $i) | 'var' i= Identifier '=' exp -> ^( Local exp $i) )
                var alt9:int=2;
                var LA9_0:int = input.LA(1);

                if ( (LA9_0==50) ) {
                    var LA9_1:int = input.LA(2);

                    if ( (LA9_1==18) ) {
                        var LA9_2:int = input.LA(3);

                        if ( (LA9_2==38) ) {
                            alt9=2;
                        }
                        else if ( (LA9_2==-1||(LA9_2>=18 && LA9_2<=20)||(LA9_2>=30 && LA9_2<=32)||(LA9_2>=34 && LA9_2<=37)||(LA9_2>=50 && LA9_2<=52)||(LA9_2>=75 && LA9_2<=76)||(LA9_2>=80 && LA9_2<=86)||(LA9_2>=88 && LA9_2<=90)) ) {
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
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:116:9: 'var' i= Identifier
                        {
                        string_literal67=Token(matchStream(input,50,FOLLOW_50_in_local710)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_50.add(string_literal67);

                        i=Token(matchStream(input,Identifier,FOLLOW_Identifier_in_local714)); if (this.state.failed) return retval; 
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
                        // 116:30: -> ^( Local $i)
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:116:33: ^( Local $i)
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
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:117:4: 'var' i= Identifier '=' exp
                        {
                        string_literal68=Token(matchStream(input,50,FOLLOW_50_in_local730)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_50.add(string_literal68);

                        i=Token(matchStream(input,Identifier,FOLLOW_Identifier_in_local734)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_Identifier.add(i);

                        char_literal69=Token(matchStream(input,38,FOLLOW_38_in_local736)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_38.add(char_literal69);

                        pushFollow(FOLLOW_exp_in_local738);
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
                        // 117:32: -> ^( Local exp $i)
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:117:35: ^( Local exp $i)
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
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:120:1: condExp : (l= logicalOr -> $l) ( '?' e1= exp ':' e2= exp -> ^( CondExp $condExp $e1 $e2) )* ;
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
            var stream_51:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 51");
            var stream_52:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 52");
            var stream_exp:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule exp");
            var stream_logicalOr:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule logicalOr");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 12) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:121:2: ( (l= logicalOr -> $l) ( '?' e1= exp ':' e2= exp -> ^( CondExp $condExp $e1 $e2) )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:121:4: (l= logicalOr -> $l) ( '?' e1= exp ':' e2= exp -> ^( CondExp $condExp $e1 $e2) )*
                {
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:121:4: (l= logicalOr -> $l)
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:121:5: l= logicalOr
                {
                pushFollow(FOLLOW_logicalOr_in_condExp765);
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
                // 121:20: -> $l
                {
                    adaptor.addChild(root_0, stream_l.nextTree());

                }

                retval.tree = root_0;}
                }

                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:122:3: ( '?' e1= exp ':' e2= exp -> ^( CondExp $condExp $e1 $e2) )*
                loop10:
                do {
                    var alt10:int=2;
                    var LA10_0:int = input.LA(1);

                    if ( (LA10_0==51) ) {
                        var LA10_2:int = input.LA(2);

                        if ( (synpred24_Expression()) ) {
                            alt10=1;
                        }


                    }


                    switch (alt10) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:123:4: '?' e1= exp ':' e2= exp
                	    {
                	    char_literal71=Token(matchStream(input,51,FOLLOW_51_in_condExp783)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_51.add(char_literal71);

                	    pushFollow(FOLLOW_exp_in_condExp790);
                	    e1=exp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) stream_exp.add(e1.tree);
                	    char_literal72=Token(matchStream(input,52,FOLLOW_52_in_condExp795)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_52.add(char_literal72);

                	    pushFollow(FOLLOW_exp_in_condExp802);
                	    e2=exp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) stream_exp.add(e2.tree);


                	    // AST REWRITE
                	    // elements: e2, condExp, e1
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
                	    // 126:14: -> ^( CondExp $condExp $e1 $e2)
                	    {
                	        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:126:17: ^( CondExp $condExp $e1 $e2)
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
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:130:1: logicalOr : logicalAnd ( '||' logicalAnd | 'or' logicalAnd )* ;
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
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:131:2: ( logicalAnd ( '||' logicalAnd | 'or' logicalAnd )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:131:4: logicalAnd ( '||' logicalAnd | 'or' logicalAnd )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_logicalAnd_in_logicalOr836);
                logicalAnd73=logicalAnd();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, logicalAnd73.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:132:3: ( '||' logicalAnd | 'or' logicalAnd )*
                loop11:
                do {
                    var alt11:int=3;
                    var LA11_0:int = input.LA(1);

                    if ( (LA11_0==53) ) {
                        alt11=1;
                    }
                    else if ( (LA11_0==54) ) {
                        alt11=2;
                    }


                    switch (alt11) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:133:4: '||' logicalAnd
                	    {
                	    string_literal74=Token(matchStream(input,53,FOLLOW_53_in_logicalOr845)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal74_tree = CommonTree(adaptor.create(string_literal74));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal74_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_logicalAnd_in_logicalOr848);
                	    logicalAnd75=logicalAnd();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, logicalAnd75.tree);

                	    }
                	    break;
                	case 2 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:134:5: 'or' logicalAnd
                	    {
                	    string_literal76=Token(matchStream(input,54,FOLLOW_54_in_logicalOr854)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal76_tree = CommonTree(adaptor.create(string_literal76));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal76_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_logicalAnd_in_logicalOr857);
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
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:138:1: logicalAnd : bitwiseOr ( '&&' bitwiseOr | 'and' bitwiseOr )* ;
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
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:139:2: ( bitwiseOr ( '&&' bitwiseOr | 'and' bitwiseOr )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:139:4: bitwiseOr ( '&&' bitwiseOr | 'and' bitwiseOr )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_bitwiseOr_in_logicalAnd874);
                bitwiseOr78=bitwiseOr();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, bitwiseOr78.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:140:3: ( '&&' bitwiseOr | 'and' bitwiseOr )*
                loop12:
                do {
                    var alt12:int=3;
                    var LA12_0:int = input.LA(1);

                    if ( (LA12_0==55) ) {
                        alt12=1;
                    }
                    else if ( (LA12_0==56) ) {
                        alt12=2;
                    }


                    switch (alt12) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:141:4: '&&' bitwiseOr
                	    {
                	    string_literal79=Token(matchStream(input,55,FOLLOW_55_in_logicalAnd883)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal79_tree = CommonTree(adaptor.create(string_literal79));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal79_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_bitwiseOr_in_logicalAnd886);
                	    bitwiseOr80=bitwiseOr();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, bitwiseOr80.tree);

                	    }
                	    break;
                	case 2 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:142:5: 'and' bitwiseOr
                	    {
                	    string_literal81=Token(matchStream(input,56,FOLLOW_56_in_logicalAnd892)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal81_tree = CommonTree(adaptor.create(string_literal81));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal81_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_bitwiseOr_in_logicalAnd895);
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
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:146:1: bitwiseOr : bitwiseXor ( '|' bitwiseXor )* ;
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
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:147:2: ( bitwiseXor ( '|' bitwiseXor )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:147:4: bitwiseXor ( '|' bitwiseXor )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_bitwiseXor_in_bitwiseOr911);
                bitwiseXor83=bitwiseXor();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, bitwiseXor83.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:148:3: ( '|' bitwiseXor )*
                loop13:
                do {
                    var alt13:int=2;
                    var LA13_0:int = input.LA(1);

                    if ( (LA13_0==57) ) {
                        alt13=1;
                    }


                    switch (alt13) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:149:4: '|' bitwiseXor
                	    {
                	    char_literal84=Token(matchStream(input,57,FOLLOW_57_in_bitwiseOr920)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    char_literal84_tree = CommonTree(adaptor.create(char_literal84));
                	    root_0 = CommonTree(adaptor.becomeRoot(char_literal84_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_bitwiseXor_in_bitwiseOr923);
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
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:153:1: bitwiseXor : bitwiseAnd ( '^' bitwiseAnd )? ;
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
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:154:2: ( bitwiseAnd ( '^' bitwiseAnd )? )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:154:4: bitwiseAnd ( '^' bitwiseAnd )?
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_bitwiseAnd_in_bitwiseXor939);
                bitwiseAnd86=bitwiseAnd();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, bitwiseAnd86.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:155:3: ( '^' bitwiseAnd )?
                var alt14:int=2;
                var LA14_0:int = input.LA(1);

                if ( (LA14_0==58) ) {
                    alt14=1;
                }
                switch (alt14) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:156:4: '^' bitwiseAnd
                        {
                        char_literal87=Token(matchStream(input,58,FOLLOW_58_in_bitwiseXor948)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        char_literal87_tree = CommonTree(adaptor.create(char_literal87));
                        root_0 = CommonTree(adaptor.becomeRoot(char_literal87_tree, root_0));
                        }
                        pushFollow(FOLLOW_bitwiseAnd_in_bitwiseXor951);
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
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:160:1: bitwiseAnd : equalExp ( '&' equalExp )* ;
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
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:161:2: ( equalExp ( '&' equalExp )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:161:4: equalExp ( '&' equalExp )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_equalExp_in_bitwiseAnd967);
                equalExp89=equalExp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, equalExp89.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:162:3: ( '&' equalExp )*
                loop15:
                do {
                    var alt15:int=2;
                    var LA15_0:int = input.LA(1);

                    if ( (LA15_0==59) ) {
                        alt15=1;
                    }


                    switch (alt15) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:163:4: '&' equalExp
                	    {
                	    char_literal90=Token(matchStream(input,59,FOLLOW_59_in_bitwiseAnd976)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    char_literal90_tree = CommonTree(adaptor.create(char_literal90));
                	    root_0 = CommonTree(adaptor.becomeRoot(char_literal90_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_equalExp_in_bitwiseAnd979);
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
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:167:1: equalExp : relExp ( '==' relExp | '!=' relExp | '===' relExp | '!==' relExp )* ;
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
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:168:2: ( relExp ( '==' relExp | '!=' relExp | '===' relExp | '!==' relExp )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:168:4: relExp ( '==' relExp | '!=' relExp | '===' relExp | '!==' relExp )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_relExp_in_equalExp995);
                relExp92=relExp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, relExp92.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:169:3: ( '==' relExp | '!=' relExp | '===' relExp | '!==' relExp )*
                loop16:
                do {
                    var alt16:int=5;
                    switch ( input.LA(1) ) {
                    case 60:
                        {
                        alt16=1;
                        }
                        break;
                    case 61:
                        {
                        alt16=2;
                        }
                        break;
                    case 62:
                        {
                        alt16=3;
                        }
                        break;
                    case 63:
                        {
                        alt16=4;
                        }
                        break;

                    }

                    switch (alt16) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:170:4: '==' relExp
                	    {
                	    string_literal93=Token(matchStream(input,60,FOLLOW_60_in_equalExp1004)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal93_tree = CommonTree(adaptor.create(string_literal93));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal93_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_relExp_in_equalExp1007);
                	    relExp94=relExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, relExp94.tree);

                	    }
                	    break;
                	case 2 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:171:5: '!=' relExp
                	    {
                	    string_literal95=Token(matchStream(input,61,FOLLOW_61_in_equalExp1013)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal95_tree = CommonTree(adaptor.create(string_literal95));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal95_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_relExp_in_equalExp1016);
                	    relExp96=relExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, relExp96.tree);

                	    }
                	    break;
                	case 3 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:172:5: '===' relExp
                	    {
                	    string_literal97=Token(matchStream(input,62,FOLLOW_62_in_equalExp1022)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal97_tree = CommonTree(adaptor.create(string_literal97));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal97_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_relExp_in_equalExp1025);
                	    relExp98=relExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, relExp98.tree);

                	    }
                	    break;
                	case 4 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:173:5: '!==' relExp
                	    {
                	    string_literal99=Token(matchStream(input,63,FOLLOW_63_in_equalExp1031)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal99_tree = CommonTree(adaptor.create(string_literal99));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal99_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_relExp_in_equalExp1034);
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
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:177:1: relExp : shiftExp ( '<' shiftExp | 'lt' shiftExp | '>' shiftExp | 'gt' shiftExp | '<=' shiftExp | 'lte' shiftExp | '>=' shiftExp | 'gte' shiftExp )* ;
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
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:178:2: ( shiftExp ( '<' shiftExp | 'lt' shiftExp | '>' shiftExp | 'gt' shiftExp | '<=' shiftExp | 'lte' shiftExp | '>=' shiftExp | 'gte' shiftExp )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:178:4: shiftExp ( '<' shiftExp | 'lt' shiftExp | '>' shiftExp | 'gt' shiftExp | '<=' shiftExp | 'lte' shiftExp | '>=' shiftExp | 'gte' shiftExp )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_shiftExp_in_relExp1051);
                shiftExp101=shiftExp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, shiftExp101.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:179:3: ( '<' shiftExp | 'lt' shiftExp | '>' shiftExp | 'gt' shiftExp | '<=' shiftExp | 'lte' shiftExp | '>=' shiftExp | 'gte' shiftExp )*
                loop17:
                do {
                    var alt17:int=9;
                    switch ( input.LA(1) ) {
                    case 64:
                        {
                        alt17=1;
                        }
                        break;
                    case 65:
                        {
                        alt17=2;
                        }
                        break;
                    case 66:
                        {
                        alt17=3;
                        }
                        break;
                    case 67:
                        {
                        alt17=4;
                        }
                        break;
                    case 68:
                        {
                        alt17=5;
                        }
                        break;
                    case 69:
                        {
                        alt17=6;
                        }
                        break;
                    case 70:
                        {
                        alt17=7;
                        }
                        break;
                    case 71:
                        {
                        alt17=8;
                        }
                        break;

                    }

                    switch (alt17) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:180:4: '<' shiftExp
                	    {
                	    char_literal102=Token(matchStream(input,64,FOLLOW_64_in_relExp1060)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    char_literal102_tree = CommonTree(adaptor.create(char_literal102));
                	    root_0 = CommonTree(adaptor.becomeRoot(char_literal102_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_shiftExp_in_relExp1063);
                	    shiftExp103=shiftExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, shiftExp103.tree);

                	    }
                	    break;
                	case 2 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:181:5: 'lt' shiftExp
                	    {
                	    string_literal104=Token(matchStream(input,65,FOLLOW_65_in_relExp1069)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal104_tree = CommonTree(adaptor.create(string_literal104));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal104_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_shiftExp_in_relExp1072);
                	    shiftExp105=shiftExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, shiftExp105.tree);

                	    }
                	    break;
                	case 3 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:182:5: '>' shiftExp
                	    {
                	    char_literal106=Token(matchStream(input,66,FOLLOW_66_in_relExp1078)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    char_literal106_tree = CommonTree(adaptor.create(char_literal106));
                	    root_0 = CommonTree(adaptor.becomeRoot(char_literal106_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_shiftExp_in_relExp1081);
                	    shiftExp107=shiftExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, shiftExp107.tree);

                	    }
                	    break;
                	case 4 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:183:5: 'gt' shiftExp
                	    {
                	    string_literal108=Token(matchStream(input,67,FOLLOW_67_in_relExp1087)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal108_tree = CommonTree(adaptor.create(string_literal108));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal108_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_shiftExp_in_relExp1090);
                	    shiftExp109=shiftExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, shiftExp109.tree);

                	    }
                	    break;
                	case 5 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:184:5: '<=' shiftExp
                	    {
                	    string_literal110=Token(matchStream(input,68,FOLLOW_68_in_relExp1096)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal110_tree = CommonTree(adaptor.create(string_literal110));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal110_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_shiftExp_in_relExp1099);
                	    shiftExp111=shiftExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, shiftExp111.tree);

                	    }
                	    break;
                	case 6 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:185:5: 'lte' shiftExp
                	    {
                	    string_literal112=Token(matchStream(input,69,FOLLOW_69_in_relExp1105)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal112_tree = CommonTree(adaptor.create(string_literal112));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal112_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_shiftExp_in_relExp1108);
                	    shiftExp113=shiftExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, shiftExp113.tree);

                	    }
                	    break;
                	case 7 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:186:5: '>=' shiftExp
                	    {
                	    string_literal114=Token(matchStream(input,70,FOLLOW_70_in_relExp1114)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal114_tree = CommonTree(adaptor.create(string_literal114));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal114_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_shiftExp_in_relExp1117);
                	    shiftExp115=shiftExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, shiftExp115.tree);

                	    }
                	    break;
                	case 8 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:187:5: 'gte' shiftExp
                	    {
                	    string_literal116=Token(matchStream(input,71,FOLLOW_71_in_relExp1123)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal116_tree = CommonTree(adaptor.create(string_literal116));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal116_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_shiftExp_in_relExp1126);
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
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:191:1: shiftExp : addExp ( '<<' addExp | '>>' addExp | '>>>' addExp )* ;
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
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:192:2: ( addExp ( '<<' addExp | '>>' addExp | '>>>' addExp )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:192:4: addExp ( '<<' addExp | '>>' addExp | '>>>' addExp )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_addExp_in_shiftExp1142);
                addExp118=addExp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, addExp118.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:193:3: ( '<<' addExp | '>>' addExp | '>>>' addExp )*
                loop18:
                do {
                    var alt18:int=4;
                    switch ( input.LA(1) ) {
                    case 72:
                        {
                        alt18=1;
                        }
                        break;
                    case 73:
                        {
                        alt18=2;
                        }
                        break;
                    case 74:
                        {
                        alt18=3;
                        }
                        break;

                    }

                    switch (alt18) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:194:4: '<<' addExp
                	    {
                	    string_literal119=Token(matchStream(input,72,FOLLOW_72_in_shiftExp1151)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal119_tree = CommonTree(adaptor.create(string_literal119));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal119_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_addExp_in_shiftExp1154);
                	    addExp120=addExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, addExp120.tree);

                	    }
                	    break;
                	case 2 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:195:5: '>>' addExp
                	    {
                	    string_literal121=Token(matchStream(input,73,FOLLOW_73_in_shiftExp1160)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal121_tree = CommonTree(adaptor.create(string_literal121));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal121_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_addExp_in_shiftExp1163);
                	    addExp122=addExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, addExp122.tree);

                	    }
                	    break;
                	case 3 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:196:5: '>>>' addExp
                	    {
                	    string_literal123=Token(matchStream(input,74,FOLLOW_74_in_shiftExp1169)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal123_tree = CommonTree(adaptor.create(string_literal123));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal123_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_addExp_in_shiftExp1172);
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
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:200:1: addExp : multExp ( '+' multExp | '-' multExp )* ;
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
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:201:2: ( multExp ( '+' multExp | '-' multExp )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:201:4: multExp ( '+' multExp | '-' multExp )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_multExp_in_addExp1188);
                multExp125=multExp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, multExp125.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:202:3: ( '+' multExp | '-' multExp )*
                loop19:
                do {
                    var alt19:int=3;
                    alt19 = dfa19.predict(input);
                    switch (alt19) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:203:4: '+' multExp
                	    {
                	    char_literal126=Token(matchStream(input,75,FOLLOW_75_in_addExp1197)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    char_literal126_tree = CommonTree(adaptor.create(char_literal126));
                	    root_0 = CommonTree(adaptor.becomeRoot(char_literal126_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_multExp_in_addExp1200);
                	    multExp127=multExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, multExp127.tree);

                	    }
                	    break;
                	case 2 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:204:5: '-' multExp
                	    {
                	    char_literal128=Token(matchStream(input,76,FOLLOW_76_in_addExp1206)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    char_literal128_tree = CommonTree(adaptor.create(char_literal128));
                	    root_0 = CommonTree(adaptor.becomeRoot(char_literal128_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_multExp_in_addExp1209);
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
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:208:1: multExp : unaryExp ( '*' unaryExp | '/' unaryExp | '%' unaryExp )* ;
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
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:209:2: ( unaryExp ( '*' unaryExp | '/' unaryExp | '%' unaryExp )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:209:5: unaryExp ( '*' unaryExp | '/' unaryExp | '%' unaryExp )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_unaryExp_in_multExp1227);
                unaryExp130=unaryExp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, unaryExp130.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:210:3: ( '*' unaryExp | '/' unaryExp | '%' unaryExp )*
                loop20:
                do {
                    var alt20:int=4;
                    switch ( input.LA(1) ) {
                    case 77:
                        {
                        alt20=1;
                        }
                        break;
                    case 78:
                        {
                        alt20=2;
                        }
                        break;
                    case 79:
                        {
                        alt20=3;
                        }
                        break;

                    }

                    switch (alt20) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:211:4: '*' unaryExp
                	    {
                	    char_literal131=Token(matchStream(input,77,FOLLOW_77_in_multExp1236)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    char_literal131_tree = CommonTree(adaptor.create(char_literal131));
                	    root_0 = CommonTree(adaptor.becomeRoot(char_literal131_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_unaryExp_in_multExp1239);
                	    unaryExp132=unaryExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, unaryExp132.tree);

                	    }
                	    break;
                	case 2 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:212:5: '/' unaryExp
                	    {
                	    char_literal133=Token(matchStream(input,78,FOLLOW_78_in_multExp1245)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    char_literal133_tree = CommonTree(adaptor.create(char_literal133));
                	    root_0 = CommonTree(adaptor.becomeRoot(char_literal133_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_unaryExp_in_multExp1248);
                	    unaryExp134=unaryExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, unaryExp134.tree);

                	    }
                	    break;
                	case 3 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:213:5: '%' unaryExp
                	    {
                	    char_literal135=Token(matchStream(input,79,FOLLOW_79_in_multExp1254)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    char_literal135_tree = CommonTree(adaptor.create(char_literal135));
                	    root_0 = CommonTree(adaptor.becomeRoot(char_literal135_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_unaryExp_in_multExp1257);
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
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:217:1: unaryExp : ( '+' atom | '-' atom | '~' atom | '!' atom | atom );
        public final function unaryExp():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var unaryExp_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal137:Token=null;
            var char_literal139:Token=null;
            var char_literal141:Token=null;
            var char_literal143:Token=null;
            var atom138:ParserRuleReturnScope = null;

            var atom140:ParserRuleReturnScope = null;

            var atom142:ParserRuleReturnScope = null;

            var atom144:ParserRuleReturnScope = null;

            var atom145:ParserRuleReturnScope = null;


            var char_literal137_tree:CommonTree=null;
            var char_literal139_tree:CommonTree=null;
            var char_literal141_tree:CommonTree=null;
            var char_literal143_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 23) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:218:2: ( '+' atom | '-' atom | '~' atom | '!' atom | atom )
                var alt21:int=5;
                switch ( input.LA(1) ) {
                case 75:
                    {
                    alt21=1;
                    }
                    break;
                case 76:
                    {
                    alt21=2;
                    }
                    break;
                case 80:
                    {
                    alt21=3;
                    }
                    break;
                case 81:
                    {
                    alt21=4;
                    }
                    break;
                case Identifier:
                case NumberLiteral:
                case StringLiteral:
                case 31:
                case 35:
                case 82:
                case 83:
                case 84:
                case 85:
                case 88:
                    {
                    alt21=5;
                    }
                    break;
                default:
                    if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                    throw new NoViableAltException("", 21, 0, input);

                }

                switch (alt21) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:218:4: '+' atom
                        {
                        root_0 = CommonTree(adaptor.nil());

                        char_literal137=Token(matchStream(input,75,FOLLOW_75_in_unaryExp1276)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        char_literal137_tree = CommonTree(adaptor.create(char_literal137));
                        root_0 = CommonTree(adaptor.becomeRoot(char_literal137_tree, root_0));
                        }
                        pushFollow(FOLLOW_atom_in_unaryExp1279);
                        atom138=atom();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, atom138.tree);

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:219:4: '-' atom
                        {
                        root_0 = CommonTree(adaptor.nil());

                        char_literal139=Token(matchStream(input,76,FOLLOW_76_in_unaryExp1284)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        char_literal139_tree = CommonTree(adaptor.create(char_literal139));
                        root_0 = CommonTree(adaptor.becomeRoot(char_literal139_tree, root_0));
                        }
                        pushFollow(FOLLOW_atom_in_unaryExp1287);
                        atom140=atom();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, atom140.tree);

                        }
                        break;
                    case 3 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:220:4: '~' atom
                        {
                        root_0 = CommonTree(adaptor.nil());

                        char_literal141=Token(matchStream(input,80,FOLLOW_80_in_unaryExp1292)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        char_literal141_tree = CommonTree(adaptor.create(char_literal141));
                        root_0 = CommonTree(adaptor.becomeRoot(char_literal141_tree, root_0));
                        }
                        pushFollow(FOLLOW_atom_in_unaryExp1295);
                        atom142=atom();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, atom142.tree);

                        }
                        break;
                    case 4 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:221:4: '!' atom
                        {
                        root_0 = CommonTree(adaptor.nil());

                        char_literal143=Token(matchStream(input,81,FOLLOW_81_in_unaryExp1300)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        char_literal143_tree = CommonTree(adaptor.create(char_literal143));
                        root_0 = CommonTree(adaptor.becomeRoot(char_literal143_tree, root_0));
                        }
                        pushFollow(FOLLOW_atom_in_unaryExp1303);
                        atom144=atom();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, atom144.tree);

                        }
                        break;
                    case 5 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:222:5: atom
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_atom_in_unaryExp1309);
                        atom145=atom();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, atom145.tree);

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

        // $ANTLR start atom
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:225:1: atom : ( NumberLiteral | StringLiteral | 'true' | 'false' | 'null' | referenceOrFuncCall | funcDef | '(' exp ')' );
        public final function atom():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var atom_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var NumberLiteral146:Token=null;
            var StringLiteral147:Token=null;
            var string_literal148:Token=null;
            var string_literal149:Token=null;
            var string_literal150:Token=null;
            var char_literal153:Token=null;
            var char_literal155:Token=null;
            var referenceOrFuncCall151:ParserRuleReturnScope = null;

            var funcDef152:ParserRuleReturnScope = null;

            var exp154:ParserRuleReturnScope = null;


            var NumberLiteral146_tree:CommonTree=null;
            var StringLiteral147_tree:CommonTree=null;
            var string_literal148_tree:CommonTree=null;
            var string_literal149_tree:CommonTree=null;
            var string_literal150_tree:CommonTree=null;
            var char_literal153_tree:CommonTree=null;
            var char_literal155_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 24) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:226:2: ( NumberLiteral | StringLiteral | 'true' | 'false' | 'null' | referenceOrFuncCall | funcDef | '(' exp ')' )
                var alt22:int=8;
                switch ( input.LA(1) ) {
                case NumberLiteral:
                    {
                    alt22=1;
                    }
                    break;
                case StringLiteral:
                    {
                    alt22=2;
                    }
                    break;
                case 82:
                    {
                    alt22=3;
                    }
                    break;
                case 83:
                    {
                    alt22=4;
                    }
                    break;
                case 84:
                    {
                    alt22=5;
                    }
                    break;
                case Identifier:
                case 35:
                case 85:
                    {
                    alt22=6;
                    }
                    break;
                case 88:
                    {
                    alt22=7;
                    }
                    break;
                case 31:
                    {
                    alt22=8;
                    }
                    break;
                default:
                    if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                    throw new NoViableAltException("", 22, 0, input);

                }

                switch (alt22) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:226:4: NumberLiteral
                        {
                        root_0 = CommonTree(adaptor.nil());

                        NumberLiteral146=Token(matchStream(input,NumberLiteral,FOLLOW_NumberLiteral_in_atom1321)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        NumberLiteral146_tree = CommonTree(adaptor.create(NumberLiteral146));
                        adaptor.addChild(root_0, NumberLiteral146_tree);
                        }

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:227:4: StringLiteral
                        {
                        root_0 = CommonTree(adaptor.nil());

                        StringLiteral147=Token(matchStream(input,StringLiteral,FOLLOW_StringLiteral_in_atom1326)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        StringLiteral147_tree = CommonTree(adaptor.create(StringLiteral147));
                        adaptor.addChild(root_0, StringLiteral147_tree);
                        }

                        }
                        break;
                    case 3 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:228:4: 'true'
                        {
                        root_0 = CommonTree(adaptor.nil());

                        string_literal148=Token(matchStream(input,82,FOLLOW_82_in_atom1331)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        string_literal148_tree = CommonTree(adaptor.create(string_literal148));
                        adaptor.addChild(root_0, string_literal148_tree);
                        }

                        }
                        break;
                    case 4 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:229:4: 'false'
                        {
                        root_0 = CommonTree(adaptor.nil());

                        string_literal149=Token(matchStream(input,83,FOLLOW_83_in_atom1336)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        string_literal149_tree = CommonTree(adaptor.create(string_literal149));
                        adaptor.addChild(root_0, string_literal149_tree);
                        }

                        }
                        break;
                    case 5 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:230:4: 'null'
                        {
                        root_0 = CommonTree(adaptor.nil());

                        string_literal150=Token(matchStream(input,84,FOLLOW_84_in_atom1341)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        string_literal150_tree = CommonTree(adaptor.create(string_literal150));
                        adaptor.addChild(root_0, string_literal150_tree);
                        }

                        }
                        break;
                    case 6 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:231:4: referenceOrFuncCall
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_referenceOrFuncCall_in_atom1346);
                        referenceOrFuncCall151=referenceOrFuncCall();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, referenceOrFuncCall151.tree);

                        }
                        break;
                    case 7 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:232:4: funcDef
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_funcDef_in_atom1351);
                        funcDef152=funcDef();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, funcDef152.tree);

                        }
                        break;
                    case 8 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:233:4: '(' exp ')'
                        {
                        root_0 = CommonTree(adaptor.nil());

                        char_literal153=Token(matchStream(input,31,FOLLOW_31_in_atom1356)); if (this.state.failed) return retval;
                        pushFollow(FOLLOW_exp_in_atom1359);
                        exp154=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, exp154.tree);
                        char_literal155=Token(matchStream(input,32,FOLLOW_32_in_atom1361)); if (this.state.failed) return retval;

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
                if ( this.state.backtracking>0 ) { memoize(input, 24, atom_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end atom

        // $ANTLR start reference
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:236:1: reference : (l= object -> $l) ( '[' e= exp ']' -> ^( PropExp $reference $e) | '.' i= Identifier -> ^( PropRef $reference $i) | '(' (p= params )? ')' '[' e= exp ']' -> ^( PropExp ^( FuncCall $reference $p) $e) | '(' (p= params )? ')' '.' i= Identifier -> ^( PropRef ^( FuncCall $reference $p) $i) )* ;
        public final function reference():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var reference_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var i:Token=null;
            var char_literal156:Token=null;
            var char_literal157:Token=null;
            var char_literal158:Token=null;
            var char_literal159:Token=null;
            var char_literal160:Token=null;
            var char_literal161:Token=null;
            var char_literal162:Token=null;
            var char_literal163:Token=null;
            var char_literal164:Token=null;
            var char_literal165:Token=null;
            var l:ParserRuleReturnScope = null;

            var e:ParserRuleReturnScope = null;

            var p:ParserRuleReturnScope = null;


            var i_tree:CommonTree=null;
            var char_literal156_tree:CommonTree=null;
            var char_literal157_tree:CommonTree=null;
            var char_literal158_tree:CommonTree=null;
            var char_literal159_tree:CommonTree=null;
            var char_literal160_tree:CommonTree=null;
            var char_literal161_tree:CommonTree=null;
            var char_literal162_tree:CommonTree=null;
            var char_literal163_tree:CommonTree=null;
            var char_literal164_tree:CommonTree=null;
            var char_literal165_tree:CommonTree=null;
            var stream_32:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 32");
            var stream_31:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 31");
            var stream_86:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 86");
            var stream_Identifier:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token Identifier");
            var stream_87:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 87");
            var stream_85:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 85");
            var stream_exp:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule exp");
            var stream_object:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule object");
            var stream_params:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule params");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 25) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:237:2: ( (l= object -> $l) ( '[' e= exp ']' -> ^( PropExp $reference $e) | '.' i= Identifier -> ^( PropRef $reference $i) | '(' (p= params )? ')' '[' e= exp ']' -> ^( PropExp ^( FuncCall $reference $p) $e) | '(' (p= params )? ')' '.' i= Identifier -> ^( PropRef ^( FuncCall $reference $p) $i) )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:237:4: (l= object -> $l) ( '[' e= exp ']' -> ^( PropExp $reference $e) | '.' i= Identifier -> ^( PropRef $reference $i) | '(' (p= params )? ')' '[' e= exp ']' -> ^( PropExp ^( FuncCall $reference $p) $e) | '(' (p= params )? ')' '.' i= Identifier -> ^( PropRef ^( FuncCall $reference $p) $i) )*
                {
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:237:4: (l= object -> $l)
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:237:5: l= object
                {
                pushFollow(FOLLOW_object_in_reference1376);
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
                // 237:18: -> $l
                {
                    adaptor.addChild(root_0, stream_l.nextTree());

                }

                retval.tree = root_0;}
                }

                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:238:3: ( '[' e= exp ']' -> ^( PropExp $reference $e) | '.' i= Identifier -> ^( PropRef $reference $i) | '(' (p= params )? ')' '[' e= exp ']' -> ^( PropExp ^( FuncCall $reference $p) $e) | '(' (p= params )? ')' '.' i= Identifier -> ^( PropRef ^( FuncCall $reference $p) $i) )*
                loop25:
                do {
                    var alt25:int=5;
                    alt25 = dfa25.predict(input);
                    switch (alt25) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:239:4: '[' e= exp ']'
                	    {
                	    char_literal156=Token(matchStream(input,85,FOLLOW_85_in_reference1395)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_85.add(char_literal156);

                	    pushFollow(FOLLOW_exp_in_reference1399);
                	    e=exp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) stream_exp.add(e.tree);
                	    char_literal157=Token(matchStream(input,86,FOLLOW_86_in_reference1401)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_86.add(char_literal157);



                	    // AST REWRITE
                	    // elements: reference, e
                	    // token labels: 
                	    // rule labels: retval, e
                	    // token list labels: 
                	    // rule list labels: 
                	    if ( this.state.backtracking==0 ) {
                	    retval.tree = root_0;
                	    var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);
                	    var stream_e:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule e",e!=null?e.tree:null);

                	    root_0 = CommonTree(adaptor.nil());
                	    // 239:20: -> ^( PropExp $reference $e)
                	    {
                	        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:239:23: ^( PropExp $reference $e)
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
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:241:5: '.' i= Identifier
                	    {
                	    char_literal158=Token(matchStream(input,87,FOLLOW_87_in_reference1425)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_87.add(char_literal158);

                	    i=Token(matchStream(input,Identifier,FOLLOW_Identifier_in_reference1429)); if (this.state.failed) return retval; 
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
                	    // 241:23: -> ^( PropRef $reference $i)
                	    {
                	        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:241:26: ^( PropRef $reference $i)
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
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:243:5: '(' (p= params )? ')' '[' e= exp ']'
                	    {
                	    char_literal159=Token(matchStream(input,31,FOLLOW_31_in_reference1451)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_31.add(char_literal159);

                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:243:10: (p= params )?
                	    var alt23:int=2;
                	    var LA23_0:int = input.LA(1);

                	    if ( ((LA23_0>=18 && LA23_0<=20)||LA23_0==31||LA23_0==35||LA23_0==50||(LA23_0>=75 && LA23_0<=76)||(LA23_0>=80 && LA23_0<=85)||LA23_0==88) ) {
                	        alt23=1;
                	    }
                	    switch (alt23) {
                	        case 1 :
                	            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:0:0: p= params
                	            {
                	            pushFollow(FOLLOW_params_in_reference1455);
                	            p=params();

                	            state._fsp = state._fsp - 1;
                	            if (this.state.failed) return retval;
                	            if ( this.state.backtracking==0 ) stream_params.add(p.tree);

                	            }
                	            break;

                	    }

                	    char_literal160=Token(matchStream(input,32,FOLLOW_32_in_reference1458)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_32.add(char_literal160);

                	    char_literal161=Token(matchStream(input,85,FOLLOW_85_in_reference1463)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_85.add(char_literal161);

                	    pushFollow(FOLLOW_exp_in_reference1467);
                	    e=exp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) stream_exp.add(e.tree);
                	    char_literal162=Token(matchStream(input,86,FOLLOW_86_in_reference1469)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_86.add(char_literal162);



                	    // AST REWRITE
                	    // elements: reference, p, e
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
                	    // 244:20: -> ^( PropExp ^( FuncCall $reference $p) $e)
                	    {
                	        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:244:23: ^( PropExp ^( FuncCall $reference $p) $e)
                	        {
                	        var root_1:CommonTree = CommonTree(adaptor.nil());
                	        root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(PropExp, "PropExp")), root_1));

                	        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:244:33: ^( FuncCall $reference $p)
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
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:246:5: '(' (p= params )? ')' '.' i= Identifier
                	    {
                	    char_literal163=Token(matchStream(input,31,FOLLOW_31_in_reference1500)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_31.add(char_literal163);

                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:246:10: (p= params )?
                	    var alt24:int=2;
                	    var LA24_0:int = input.LA(1);

                	    if ( ((LA24_0>=18 && LA24_0<=20)||LA24_0==31||LA24_0==35||LA24_0==50||(LA24_0>=75 && LA24_0<=76)||(LA24_0>=80 && LA24_0<=85)||LA24_0==88) ) {
                	        alt24=1;
                	    }
                	    switch (alt24) {
                	        case 1 :
                	            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:0:0: p= params
                	            {
                	            pushFollow(FOLLOW_params_in_reference1504);
                	            p=params();

                	            state._fsp = state._fsp - 1;
                	            if (this.state.failed) return retval;
                	            if ( this.state.backtracking==0 ) stream_params.add(p.tree);

                	            }
                	            break;

                	    }

                	    char_literal164=Token(matchStream(input,32,FOLLOW_32_in_reference1507)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_32.add(char_literal164);

                	    char_literal165=Token(matchStream(input,87,FOLLOW_87_in_reference1512)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_87.add(char_literal165);

                	    i=Token(matchStream(input,Identifier,FOLLOW_Identifier_in_reference1516)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_Identifier.add(i);



                	    // AST REWRITE
                	    // elements: reference, p, i
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
                	    // 247:22: -> ^( PropRef ^( FuncCall $reference $p) $i)
                	    {
                	        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:247:25: ^( PropRef ^( FuncCall $reference $p) $i)
                	        {
                	        var root_1:CommonTree = CommonTree(adaptor.nil());
                	        root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(PropRef, "PropRef")), root_1));

                	        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:247:35: ^( FuncCall $reference $p)
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
                	    break loop25;
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
                if ( this.state.backtracking>0 ) { memoize(input, 25, reference_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end reference

        // $ANTLR start referenceOrFuncCall
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:251:1: referenceOrFuncCall : (l= object -> $l) ( '[' e= exp ']' -> ^( PropExp $referenceOrFuncCall $e) | '.' i= Identifier -> ^( PropRef $referenceOrFuncCall $i) | '(' p= params ')' -> ^( FuncCall $referenceOrFuncCall $p) | '(' ')' -> ^( FuncCall $referenceOrFuncCall) )* ;
        public final function referenceOrFuncCall():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var referenceOrFuncCall_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var i:Token=null;
            var char_literal166:Token=null;
            var char_literal167:Token=null;
            var char_literal168:Token=null;
            var char_literal169:Token=null;
            var char_literal170:Token=null;
            var char_literal171:Token=null;
            var char_literal172:Token=null;
            var l:ParserRuleReturnScope = null;

            var e:ParserRuleReturnScope = null;

            var p:ParserRuleReturnScope = null;


            var i_tree:CommonTree=null;
            var char_literal166_tree:CommonTree=null;
            var char_literal167_tree:CommonTree=null;
            var char_literal168_tree:CommonTree=null;
            var char_literal169_tree:CommonTree=null;
            var char_literal170_tree:CommonTree=null;
            var char_literal171_tree:CommonTree=null;
            var char_literal172_tree:CommonTree=null;
            var stream_32:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 32");
            var stream_31:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 31");
            var stream_86:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 86");
            var stream_Identifier:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token Identifier");
            var stream_87:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 87");
            var stream_85:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 85");
            var stream_exp:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule exp");
            var stream_object:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule object");
            var stream_params:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule params");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 26) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:252:2: ( (l= object -> $l) ( '[' e= exp ']' -> ^( PropExp $referenceOrFuncCall $e) | '.' i= Identifier -> ^( PropRef $referenceOrFuncCall $i) | '(' p= params ')' -> ^( FuncCall $referenceOrFuncCall $p) | '(' ')' -> ^( FuncCall $referenceOrFuncCall) )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:252:4: (l= object -> $l) ( '[' e= exp ']' -> ^( PropExp $referenceOrFuncCall $e) | '.' i= Identifier -> ^( PropRef $referenceOrFuncCall $i) | '(' p= params ')' -> ^( FuncCall $referenceOrFuncCall $p) | '(' ')' -> ^( FuncCall $referenceOrFuncCall) )*
                {
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:252:4: (l= object -> $l)
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:252:5: l= object
                {
                pushFollow(FOLLOW_object_in_referenceOrFuncCall1556);
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
                // 252:18: -> $l
                {
                    adaptor.addChild(root_0, stream_l.nextTree());

                }

                retval.tree = root_0;}
                }

                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:253:3: ( '[' e= exp ']' -> ^( PropExp $referenceOrFuncCall $e) | '.' i= Identifier -> ^( PropRef $referenceOrFuncCall $i) | '(' p= params ')' -> ^( FuncCall $referenceOrFuncCall $p) | '(' ')' -> ^( FuncCall $referenceOrFuncCall) )*
                loop26:
                do {
                    var alt26:int=5;
                    alt26 = dfa26.predict(input);
                    switch (alt26) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:254:4: '[' e= exp ']'
                	    {
                	    char_literal166=Token(matchStream(input,85,FOLLOW_85_in_referenceOrFuncCall1575)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_85.add(char_literal166);

                	    pushFollow(FOLLOW_exp_in_referenceOrFuncCall1579);
                	    e=exp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) stream_exp.add(e.tree);
                	    char_literal167=Token(matchStream(input,86,FOLLOW_86_in_referenceOrFuncCall1581)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_86.add(char_literal167);



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
                	    // 254:20: -> ^( PropExp $referenceOrFuncCall $e)
                	    {
                	        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:254:23: ^( PropExp $referenceOrFuncCall $e)
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
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:255:5: '.' i= Identifier
                	    {
                	    char_literal168=Token(matchStream(input,87,FOLLOW_87_in_referenceOrFuncCall1601)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_87.add(char_literal168);

                	    i=Token(matchStream(input,Identifier,FOLLOW_Identifier_in_referenceOrFuncCall1605)); if (this.state.failed) return retval; 
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
                	    // 255:23: -> ^( PropRef $referenceOrFuncCall $i)
                	    {
                	        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:255:26: ^( PropRef $referenceOrFuncCall $i)
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
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:256:5: '(' p= params ')'
                	    {
                	    char_literal169=Token(matchStream(input,31,FOLLOW_31_in_referenceOrFuncCall1624)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_31.add(char_literal169);

                	    pushFollow(FOLLOW_params_in_referenceOrFuncCall1628);
                	    p=params();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) stream_params.add(p.tree);
                	    char_literal170=Token(matchStream(input,32,FOLLOW_32_in_referenceOrFuncCall1630)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_32.add(char_literal170);



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
                	    // 256:23: -> ^( FuncCall $referenceOrFuncCall $p)
                	    {
                	        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:256:26: ^( FuncCall $referenceOrFuncCall $p)
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
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:257:5: '(' ')'
                	    {
                	    char_literal171=Token(matchStream(input,31,FOLLOW_31_in_referenceOrFuncCall1649)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_31.add(char_literal171);

                	    char_literal172=Token(matchStream(input,32,FOLLOW_32_in_referenceOrFuncCall1651)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_32.add(char_literal172);



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
                	    // 257:16: -> ^( FuncCall $referenceOrFuncCall)
                	    {
                	        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:257:19: ^( FuncCall $referenceOrFuncCall)
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
                if ( this.state.backtracking>0 ) { memoize(input, 26, referenceOrFuncCall_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end referenceOrFuncCall

        // $ANTLR start funcDef
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:261:1: funcDef : 'function' ( '(' a= args ')' b= block -> ^( FuncDef $a $b) | '(' ')' b= block -> ^( FuncDef $b) ) ;
        public final function funcDef():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var funcDef_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var string_literal173:Token=null;
            var char_literal174:Token=null;
            var char_literal175:Token=null;
            var char_literal176:Token=null;
            var char_literal177:Token=null;
            var a:ParserRuleReturnScope = null;

            var b:ParserRuleReturnScope = null;


            var string_literal173_tree:CommonTree=null;
            var char_literal174_tree:CommonTree=null;
            var char_literal175_tree:CommonTree=null;
            var char_literal176_tree:CommonTree=null;
            var char_literal177_tree:CommonTree=null;
            var stream_32:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 32");
            var stream_31:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 31");
            var stream_88:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 88");
            var stream_args:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule args");
            var stream_block:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule block");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 27) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:262:2: ( 'function' ( '(' a= args ')' b= block -> ^( FuncDef $a $b) | '(' ')' b= block -> ^( FuncDef $b) ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:262:4: 'function' ( '(' a= args ')' b= block -> ^( FuncDef $a $b) | '(' ')' b= block -> ^( FuncDef $b) )
                {
                string_literal173=Token(matchStream(input,88,FOLLOW_88_in_funcDef1680)); if (this.state.failed) return retval; 
                if ( this.state.backtracking==0 ) stream_88.add(string_literal173);

                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:263:3: ( '(' a= args ')' b= block -> ^( FuncDef $a $b) | '(' ')' b= block -> ^( FuncDef $b) )
                var alt27:int=2;
                var LA27_0:int = input.LA(1);

                if ( (LA27_0==31) ) {
                    var LA27_1:int = input.LA(2);

                    if ( (LA27_1==32) ) {
                        alt27=2;
                    }
                    else if ( (LA27_1==18) ) {
                        alt27=1;
                    }
                    else {
                        if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                        throw new NoViableAltException("", 27, 1, input);

                    }
                }
                else {
                    if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                    throw new NoViableAltException("", 27, 0, input);

                }
                switch (alt27) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:264:4: '(' a= args ')' b= block
                        {
                        char_literal174=Token(matchStream(input,31,FOLLOW_31_in_funcDef1689)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_31.add(char_literal174);

                        pushFollow(FOLLOW_args_in_funcDef1693);
                        a=args();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_args.add(a.tree);
                        char_literal175=Token(matchStream(input,32,FOLLOW_32_in_funcDef1695)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_32.add(char_literal175);

                        pushFollow(FOLLOW_block_in_funcDef1699);
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
                        // 264:28: -> ^( FuncDef $a $b)
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:264:31: ^( FuncDef $a $b)
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
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:265:5: '(' ')' b= block
                        {
                        char_literal176=Token(matchStream(input,31,FOLLOW_31_in_funcDef1719)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_31.add(char_literal176);

                        char_literal177=Token(matchStream(input,32,FOLLOW_32_in_funcDef1721)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_32.add(char_literal177);

                        pushFollow(FOLLOW_block_in_funcDef1725);
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
                        // 265:23: -> ^( FuncDef $b)
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:265:26: ^( FuncDef $b)
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
                if ( this.state.backtracking>0 ) { memoize(input, 27, funcDef_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end funcDef

        // $ANTLR start args
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:269:1: args : Identifier ( ',' Identifier )* ;
        public final function args():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var args_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var Identifier178:Token=null;
            var char_literal179:Token=null;
            var Identifier180:Token=null;

            var Identifier178_tree:CommonTree=null;
            var char_literal179_tree:CommonTree=null;
            var Identifier180_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 28) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:270:2: ( Identifier ( ',' Identifier )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:270:4: Identifier ( ',' Identifier )*
                {
                root_0 = CommonTree(adaptor.nil());

                Identifier178=Token(matchStream(input,Identifier,FOLLOW_Identifier_in_args1752)); if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) {
                Identifier178_tree = CommonTree(adaptor.create(Identifier178));
                adaptor.addChild(root_0, Identifier178_tree);
                }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:271:3: ( ',' Identifier )*
                loop28:
                do {
                    var alt28:int=2;
                    var LA28_0:int = input.LA(1);

                    if ( (LA28_0==89) ) {
                        alt28=1;
                    }


                    switch (alt28) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:272:4: ',' Identifier
                	    {
                	    char_literal179=Token(matchStream(input,89,FOLLOW_89_in_args1761)); if (this.state.failed) return retval;
                	    Identifier180=Token(matchStream(input,Identifier,FOLLOW_Identifier_in_args1767)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    Identifier180_tree = CommonTree(adaptor.create(Identifier180));
                	    adaptor.addChild(root_0, Identifier180_tree);
                	    }

                	    }
                	    break;

                	default :
                	    break loop28;
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
                if ( this.state.backtracking>0 ) { memoize(input, 28, args_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end args

        // $ANTLR start object
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:277:1: object : ( Identifier | array | createObj );
        public final function object():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var object_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var Identifier181:Token=null;
            var array182:ParserRuleReturnScope = null;

            var createObj183:ParserRuleReturnScope = null;


            var Identifier181_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 29) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:278:2: ( Identifier | array | createObj )
                var alt29:int=3;
                switch ( input.LA(1) ) {
                case Identifier:
                    {
                    alt29=1;
                    }
                    break;
                case 85:
                    {
                    alt29=2;
                    }
                    break;
                case 35:
                    {
                    alt29=3;
                    }
                    break;
                default:
                    if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                    throw new NoViableAltException("", 29, 0, input);

                }

                switch (alt29) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:278:4: Identifier
                        {
                        root_0 = CommonTree(adaptor.nil());

                        Identifier181=Token(matchStream(input,Identifier,FOLLOW_Identifier_in_object1784)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        Identifier181_tree = CommonTree(adaptor.create(Identifier181));
                        adaptor.addChild(root_0, Identifier181_tree);
                        }

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:279:4: array
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_array_in_object1789);
                        array182=array();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, array182.tree);

                        }
                        break;
                    case 3 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:280:4: createObj
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_createObj_in_object1794);
                        createObj183=createObj();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, createObj183.tree);

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
                if ( this.state.backtracking>0 ) { memoize(input, 29, object_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end object

        // $ANTLR start params
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:283:1: params : exp ( ',' exp )* ;
        public final function params():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var params_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal185:Token=null;
            var exp184:ParserRuleReturnScope = null;

            var exp186:ParserRuleReturnScope = null;


            var char_literal185_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 30) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:284:2: ( exp ( ',' exp )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:284:4: exp ( ',' exp )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_exp_in_params1806);
                exp184=exp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, exp184.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:285:3: ( ',' exp )*
                loop30:
                do {
                    var alt30:int=2;
                    var LA30_0:int = input.LA(1);

                    if ( (LA30_0==89) ) {
                        alt30=1;
                    }


                    switch (alt30) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:286:4: ',' exp
                	    {
                	    char_literal185=Token(matchStream(input,89,FOLLOW_89_in_params1815)); if (this.state.failed) return retval;
                	    pushFollow(FOLLOW_exp_in_params1821);
                	    exp186=exp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, exp186.tree);

                	    }
                	    break;

                	default :
                	    break loop30;
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
                if ( this.state.backtracking>0 ) { memoize(input, 30, params_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end params

        // $ANTLR start array
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:291:1: array : ( '[' i= items ']' -> ^( CreateArray $i) | '[' ']' -> ^( CreateArray ) );
        public final function array():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var array_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal187:Token=null;
            var char_literal188:Token=null;
            var char_literal189:Token=null;
            var char_literal190:Token=null;
            var i:ParserRuleReturnScope = null;


            var char_literal187_tree:CommonTree=null;
            var char_literal188_tree:CommonTree=null;
            var char_literal189_tree:CommonTree=null;
            var char_literal190_tree:CommonTree=null;
            var stream_86:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 86");
            var stream_85:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 85");
            var stream_items:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule items");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 31) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:292:2: ( '[' i= items ']' -> ^( CreateArray $i) | '[' ']' -> ^( CreateArray ) )
                var alt31:int=2;
                var LA31_0:int = input.LA(1);

                if ( (LA31_0==85) ) {
                    var LA31_1:int = input.LA(2);

                    if ( (LA31_1==86) ) {
                        alt31=2;
                    }
                    else if ( ((LA31_1>=18 && LA31_1<=20)||LA31_1==31||LA31_1==35||LA31_1==50||(LA31_1>=75 && LA31_1<=76)||(LA31_1>=80 && LA31_1<=85)||LA31_1==88) ) {
                        alt31=1;
                    }
                    else {
                        if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                        throw new NoViableAltException("", 31, 1, input);

                    }
                }
                else {
                    if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                    throw new NoViableAltException("", 31, 0, input);

                }
                switch (alt31) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:292:4: '[' i= items ']'
                        {
                        char_literal187=Token(matchStream(input,85,FOLLOW_85_in_array1838)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_85.add(char_literal187);

                        pushFollow(FOLLOW_items_in_array1842);
                        i=items();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_items.add(i.tree);
                        char_literal188=Token(matchStream(input,86,FOLLOW_86_in_array1844)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_86.add(char_literal188);



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
                        // 292:22: -> ^( CreateArray $i)
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:292:25: ^( CreateArray $i)
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
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:293:4: '[' ']'
                        {
                        char_literal189=Token(matchStream(input,85,FOLLOW_85_in_array1860)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_85.add(char_literal189);

                        char_literal190=Token(matchStream(input,86,FOLLOW_86_in_array1862)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_86.add(char_literal190);



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
                        // 293:16: -> ^( CreateArray )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:293:19: ^( CreateArray )
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
                if ( this.state.backtracking>0 ) { memoize(input, 31, array_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end array

        // $ANTLR start items
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:296:1: items : exp ( ',' exp )* ;
        public final function items():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var items_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal192:Token=null;
            var exp191:ParserRuleReturnScope = null;

            var exp193:ParserRuleReturnScope = null;


            var char_literal192_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 32) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:297:2: ( exp ( ',' exp )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:297:4: exp ( ',' exp )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_exp_in_items1884);
                exp191=exp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, exp191.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:298:3: ( ',' exp )*
                loop32:
                do {
                    var alt32:int=2;
                    var LA32_0:int = input.LA(1);

                    if ( (LA32_0==89) ) {
                        alt32=1;
                    }


                    switch (alt32) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:299:4: ',' exp
                	    {
                	    char_literal192=Token(matchStream(input,89,FOLLOW_89_in_items1893)); if (this.state.failed) return retval;
                	    pushFollow(FOLLOW_exp_in_items1899);
                	    exp193=exp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, exp193.tree);

                	    }
                	    break;

                	default :
                	    break loop32;
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
                if ( this.state.backtracking>0 ) { memoize(input, 32, items_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end items

        // $ANTLR start createObj
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:304:1: createObj : ( '{' o= objItems '}' -> ^( CreateObject $o) | '{' '}' -> ^( CreateObject $o) );
        public final function createObj():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var createObj_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal194:Token=null;
            var char_literal195:Token=null;
            var char_literal196:Token=null;
            var char_literal197:Token=null;
            var o:ParserRuleReturnScope = null;


            var char_literal194_tree:CommonTree=null;
            var char_literal195_tree:CommonTree=null;
            var char_literal196_tree:CommonTree=null;
            var char_literal197_tree:CommonTree=null;
            var stream_35:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 35");
            var stream_36:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 36");
            var stream_objItems:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule objItems");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 33) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:305:2: ( '{' o= objItems '}' -> ^( CreateObject $o) | '{' '}' -> ^( CreateObject $o) )
                var alt33:int=2;
                var LA33_0:int = input.LA(1);

                if ( (LA33_0==35) ) {
                    var LA33_1:int = input.LA(2);

                    if ( (LA33_1==36) ) {
                        alt33=2;
                    }
                    else if ( (LA33_1==18||LA33_1==20) ) {
                        alt33=1;
                    }
                    else {
                        if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                        throw new NoViableAltException("", 33, 1, input);

                    }
                }
                else {
                    if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                    throw new NoViableAltException("", 33, 0, input);

                }
                switch (alt33) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:305:4: '{' o= objItems '}'
                        {
                        char_literal194=Token(matchStream(input,35,FOLLOW_35_in_createObj1916)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_35.add(char_literal194);

                        pushFollow(FOLLOW_objItems_in_createObj1920);
                        o=objItems();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_objItems.add(o.tree);
                        char_literal195=Token(matchStream(input,36,FOLLOW_36_in_createObj1922)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_36.add(char_literal195);



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
                        // 305:25: -> ^( CreateObject $o)
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:305:28: ^( CreateObject $o)
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
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:306:4: '{' '}'
                        {
                        char_literal196=Token(matchStream(input,35,FOLLOW_35_in_createObj1938)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_35.add(char_literal196);

                        char_literal197=Token(matchStream(input,36,FOLLOW_36_in_createObj1940)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_36.add(char_literal197);



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
                        // 306:16: -> ^( CreateObject $o)
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:306:19: ^( CreateObject $o)
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
                if ( this.state.backtracking>0 ) { memoize(input, 33, createObj_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end createObj

        // $ANTLR start objItems
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:309:1: objItems : ( Identifier | StringLiteral ) ':' exp ( ',' ( Identifier | StringLiteral ) ':' exp )* ;
        public final function objItems():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var objItems_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var set198:Token=null;
            var char_literal199:Token=null;
            var char_literal201:Token=null;
            var set202:Token=null;
            var char_literal203:Token=null;
            var exp200:ParserRuleReturnScope = null;

            var exp204:ParserRuleReturnScope = null;


            var set198_tree:CommonTree=null;
            var char_literal199_tree:CommonTree=null;
            var char_literal201_tree:CommonTree=null;
            var set202_tree:CommonTree=null;
            var char_literal203_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 34) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:310:2: ( ( Identifier | StringLiteral ) ':' exp ( ',' ( Identifier | StringLiteral ) ':' exp )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:310:4: ( Identifier | StringLiteral ) ':' exp ( ',' ( Identifier | StringLiteral ) ':' exp )*
                {
                root_0 = CommonTree(adaptor.nil());

                set198=Token(input.LT(1));
                if ( input.LA(1)==18||input.LA(1)==20 ) {
                    input.consume();
                    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, CommonTree(adaptor.create(set198)));
                    this.state.errorRecovery=false;this.state.failed=false;
                }
                else {
                    if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                    throw new MismatchedSetException(null,input);
                }

                char_literal199=Token(matchStream(input,52,FOLLOW_52_in_objItems1973)); if (this.state.failed) return retval;
                pushFollow(FOLLOW_exp_in_objItems1976);
                exp200=exp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, exp200.tree);
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:311:3: ( ',' ( Identifier | StringLiteral ) ':' exp )*
                loop34:
                do {
                    var alt34:int=2;
                    var LA34_0:int = input.LA(1);

                    if ( (LA34_0==89) ) {
                        alt34=1;
                    }


                    switch (alt34) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:312:4: ',' ( Identifier | StringLiteral ) ':' exp
                	    {
                	    char_literal201=Token(matchStream(input,89,FOLLOW_89_in_objItems1985)); if (this.state.failed) return retval;
                	    set202=Token(input.LT(1));
                	    if ( input.LA(1)==18||input.LA(1)==20 ) {
                	        input.consume();
                	        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, CommonTree(adaptor.create(set202)));
                	        this.state.errorRecovery=false;this.state.failed=false;
                	    }
                	    else {
                	        if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                	        throw new MismatchedSetException(null,input);
                	    }

                	    char_literal203=Token(matchStream(input,52,FOLLOW_52_in_objItems1999)); if (this.state.failed) return retval;
                	    pushFollow(FOLLOW_exp_in_objItems2002);
                	    exp204=exp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, exp204.tree);

                	    }
                	    break;

                	default :
                	    break loop34;
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
                if ( this.state.backtracking>0 ) { memoize(input, 34, objItems_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end objItems

        // $ANTLR start ret
        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:317:1: ret : ( 'return' e= exp -> ^( Return $e) | 'return' -> ^( Return ) );
        public final function ret():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var ret_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var string_literal205:Token=null;
            var string_literal206:Token=null;
            var e:ParserRuleReturnScope = null;


            var string_literal205_tree:CommonTree=null;
            var string_literal206_tree:CommonTree=null;
            var stream_90:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 90");
            var stream_exp:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule exp");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 35) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:318:2: ( 'return' e= exp -> ^( Return $e) | 'return' -> ^( Return ) )
                var alt35:int=2;
                var LA35_0:int = input.LA(1);

                if ( (LA35_0==90) ) {
                    var LA35_1:int = input.LA(2);

                    if ( (synpred84_Expression()) ) {
                        alt35=1;
                    }
                    else if ( (true) ) {
                        alt35=2;
                    }
                    else {
                        if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                        throw new NoViableAltException("", 35, 1, input);

                    }
                }
                else {
                    if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                    throw new NoViableAltException("", 35, 0, input);

                }
                switch (alt35) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:319:3: 'return' e= exp
                        {
                        string_literal205=Token(matchStream(input,90,FOLLOW_90_in_ret2020)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_90.add(string_literal205);

                        pushFollow(FOLLOW_exp_in_ret2024);
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
                        // 319:20: -> ^( Return $e)
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:319:23: ^( Return $e)
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
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:320:4: 'return'
                        {
                        string_literal206=Token(matchStream(input,90,FOLLOW_90_in_ret2040)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_90.add(string_literal206);



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
                        // 320:15: -> ^( Return )
                        {
                            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:320:18: ^( Return )
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
                if ( this.state.backtracking>0 ) { memoize(input, 35, ret_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end ret

        // $ANTLR start synpred1_Expression
        public final function synpred1_Expression_fragment():void {
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:51:4: ( stmtList EOF )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:51:4: stmtList EOF
            {
            pushFollow(FOLLOW_stmtList_in_synpred1_Expression136);
            stmtList();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            matchStream(input,EOF,FOLLOW_EOF_in_synpred1_Expression139); if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred1_Expression

        // $ANTLR start synpred5_Expression
        public final function synpred5_Expression_fragment():void {
            var l:ParserRuleReturnScope = null;

            var r:ParserRuleReturnScope = null;


            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:66:4: ( 'if' '(' exp ')' l= block 'else' r= block )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:66:4: 'if' '(' exp ')' l= block 'else' r= block
            {
            matchStream(input,30,FOLLOW_30_in_synpred5_Expression210); if (this.state.failed) return ;
            matchStream(input,31,FOLLOW_31_in_synpred5_Expression212); if (this.state.failed) return ;
            pushFollow(FOLLOW_exp_in_synpred5_Expression214);
            exp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            matchStream(input,32,FOLLOW_32_in_synpred5_Expression216); if (this.state.failed) return ;
            pushFollow(FOLLOW_block_in_synpred5_Expression220);
            l=block();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            matchStream(input,33,FOLLOW_33_in_synpred5_Expression222); if (this.state.failed) return ;
            pushFollow(FOLLOW_block_in_synpred5_Expression226);
            r=block();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred5_Expression

        // $ANTLR start synpred6_Expression
        public final function synpred6_Expression_fragment():void {
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:67:4: ( 'if' '(' exp ')' block 'else' ifStmt )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:67:4: 'if' '(' exp ')' block 'else' ifStmt
            {
            matchStream(input,30,FOLLOW_30_in_synpred6_Expression245); if (this.state.failed) return ;
            matchStream(input,31,FOLLOW_31_in_synpred6_Expression247); if (this.state.failed) return ;
            pushFollow(FOLLOW_exp_in_synpred6_Expression249);
            exp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            matchStream(input,32,FOLLOW_32_in_synpred6_Expression251); if (this.state.failed) return ;
            pushFollow(FOLLOW_block_in_synpred6_Expression253);
            block();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            matchStream(input,33,FOLLOW_33_in_synpred6_Expression255); if (this.state.failed) return ;
            pushFollow(FOLLOW_ifStmt_in_synpred6_Expression257);
            ifStmt();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred6_Expression

        // $ANTLR start synpred7_Expression
        public final function synpred7_Expression_fragment():void {
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:82:4: ( ';' instr )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:82:4: ';' instr
            {
            matchStream(input,37,FOLLOW_37_in_synpred7_Expression369); if (this.state.failed) return ;
            pushFollow(FOLLOW_instr_in_synpred7_Expression371);
            instr();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred7_Expression

        // $ANTLR start synpred8_Expression
        public final function synpred8_Expression_fragment():void {
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:83:5: ( ';' )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:83:5: ';'
            {
            matchStream(input,37,FOLLOW_37_in_synpred8_Expression377); if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred8_Expression

        // $ANTLR start synpred10_Expression
        public final function synpred10_Expression_fragment():void {
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:93:4: ( assignExp )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:93:4: assignExp
            {
            pushFollow(FOLLOW_assignExp_in_synpred10_Expression425);
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


            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:123:4: ( '?' e1= exp ':' e2= exp )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:123:4: '?' e1= exp ':' e2= exp
            {
            matchStream(input,51,FOLLOW_51_in_synpred24_Expression783); if (this.state.failed) return ;
            pushFollow(FOLLOW_exp_in_synpred24_Expression790);
            e1=exp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            matchStream(input,52,FOLLOW_52_in_synpred24_Expression795); if (this.state.failed) return ;
            pushFollow(FOLLOW_exp_in_synpred24_Expression802);
            e2=exp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred24_Expression

        // $ANTLR start synpred47_Expression
        public final function synpred47_Expression_fragment():void {
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:203:4: ( '+' multExp )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:203:4: '+' multExp
            {
            matchStream(input,75,FOLLOW_75_in_synpred47_Expression1197); if (this.state.failed) return ;
            pushFollow(FOLLOW_multExp_in_synpred47_Expression1200);
            multExp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred47_Expression

        // $ANTLR start synpred48_Expression
        public final function synpred48_Expression_fragment():void {
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:204:5: ( '-' multExp )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:204:5: '-' multExp
            {
            matchStream(input,76,FOLLOW_76_in_synpred48_Expression1206); if (this.state.failed) return ;
            pushFollow(FOLLOW_multExp_in_synpred48_Expression1209);
            multExp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred48_Expression

        // $ANTLR start synpred66_Expression
        public final function synpred66_Expression_fragment():void {
            var p:ParserRuleReturnScope = null;

            var e:ParserRuleReturnScope = null;


            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:243:5: ( '(' (p= params )? ')' '[' e= exp ']' )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:243:5: '(' (p= params )? ')' '[' e= exp ']'
            {
            matchStream(input,31,FOLLOW_31_in_synpred66_Expression1451); if (this.state.failed) return ;
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:243:10: (p= params )?
            var alt36:int=2;
            var LA36_0:int = input.LA(1);

            if ( ((LA36_0>=18 && LA36_0<=20)||LA36_0==31||LA36_0==35||LA36_0==50||(LA36_0>=75 && LA36_0<=76)||(LA36_0>=80 && LA36_0<=85)||LA36_0==88) ) {
                alt36=1;
            }
            switch (alt36) {
                case 1 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:0:0: p= params
                    {
                    pushFollow(FOLLOW_params_in_synpred66_Expression1455);
                    p=params();

                    state._fsp = state._fsp - 1;
                    if (this.state.failed) return ;

                    }
                    break;

            }

            matchStream(input,32,FOLLOW_32_in_synpred66_Expression1458); if (this.state.failed) return ;
            matchStream(input,85,FOLLOW_85_in_synpred66_Expression1463); if (this.state.failed) return ;
            pushFollow(FOLLOW_exp_in_synpred66_Expression1467);
            e=exp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            matchStream(input,86,FOLLOW_86_in_synpred66_Expression1469); if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred66_Expression

        // $ANTLR start synpred68_Expression
        public final function synpred68_Expression_fragment():void {
            var i:Token=null;
            var p:ParserRuleReturnScope = null;


            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:246:5: ( '(' (p= params )? ')' '.' i= Identifier )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:246:5: '(' (p= params )? ')' '.' i= Identifier
            {
            matchStream(input,31,FOLLOW_31_in_synpred68_Expression1500); if (this.state.failed) return ;
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:246:10: (p= params )?
            var alt37:int=2;
            var LA37_0:int = input.LA(1);

            if ( ((LA37_0>=18 && LA37_0<=20)||LA37_0==31||LA37_0==35||LA37_0==50||(LA37_0>=75 && LA37_0<=76)||(LA37_0>=80 && LA37_0<=85)||LA37_0==88) ) {
                alt37=1;
            }
            switch (alt37) {
                case 1 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:0:0: p= params
                    {
                    pushFollow(FOLLOW_params_in_synpred68_Expression1504);
                    p=params();

                    state._fsp = state._fsp - 1;
                    if (this.state.failed) return ;

                    }
                    break;

            }

            matchStream(input,32,FOLLOW_32_in_synpred68_Expression1507); if (this.state.failed) return ;
            matchStream(input,87,FOLLOW_87_in_synpred68_Expression1512); if (this.state.failed) return ;
            i=Token(matchStream(input,Identifier,FOLLOW_Identifier_in_synpred68_Expression1516)); if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred68_Expression

        // $ANTLR start synpred69_Expression
        public final function synpred69_Expression_fragment():void {
            var e:ParserRuleReturnScope = null;


            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:254:4: ( '[' e= exp ']' )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:254:4: '[' e= exp ']'
            {
            matchStream(input,85,FOLLOW_85_in_synpred69_Expression1575); if (this.state.failed) return ;
            pushFollow(FOLLOW_exp_in_synpred69_Expression1579);
            e=exp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            matchStream(input,86,FOLLOW_86_in_synpred69_Expression1581); if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred69_Expression

        // $ANTLR start synpred71_Expression
        public final function synpred71_Expression_fragment():void {
            var p:ParserRuleReturnScope = null;


            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:256:5: ( '(' p= params ')' )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:256:5: '(' p= params ')'
            {
            matchStream(input,31,FOLLOW_31_in_synpred71_Expression1624); if (this.state.failed) return ;
            pushFollow(FOLLOW_params_in_synpred71_Expression1628);
            p=params();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            matchStream(input,32,FOLLOW_32_in_synpred71_Expression1630); if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred71_Expression

        // $ANTLR start synpred72_Expression
        public final function synpred72_Expression_fragment():void {
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:257:5: ( '(' ')' )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:257:5: '(' ')'
            {
            matchStream(input,31,FOLLOW_31_in_synpred72_Expression1649); if (this.state.failed) return ;
            matchStream(input,32,FOLLOW_32_in_synpred72_Expression1651); if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred72_Expression

        // $ANTLR start synpred84_Expression
        public final function synpred84_Expression_fragment():void {
            var e:ParserRuleReturnScope = null;


            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:319:3: ( 'return' e= exp )
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:319:3: 'return' e= exp
            {
            matchStream(input,90,FOLLOW_90_in_synpred84_Expression2020); if (this.state.failed) return ;
            pushFollow(FOLLOW_exp_in_synpred84_Expression2024);
            e=exp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred84_Expression


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
        public final function synpred69_Expression():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred69_Expression_fragment(); // can never throw exception
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
        public final function synpred71_Expression():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred71_Expression_fragment(); // can never throw exception
            } catch (re:RecognitionException) {
                trace("impossible: "+re);
            }
            var success:Boolean = !this.state.failed;
            input.rewindTo(start);
            this.state.backtracking--;
            this.state.failed=false;
            return success;
        }
        public final function synpred84_Expression():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred84_Expression_fragment(); // can never throw exception
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
        public final function synpred68_Expression():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred68_Expression_fragment(); // can never throw exception
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
        public final function synpred66_Expression():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred66_Expression_fragment(); // can never throw exception
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
            DFA.unpackEncodedString("\x18\u80ff\xff");
        private const DFA5_eof:Array =
            DFA.unpackEncodedString("\x01\x01\x17\u80ff\xff");
        private const DFA5_min:Array =
            DFA.unpackEncodedString("\x01\x12\x14\u80ff\xff\x01\x00\x02"+
            "\u80ff\xff", true);
        private const DFA5_max:Array =
            DFA.unpackEncodedString("\x01\x5a\x14\u80ff\xff\x01\x00\x02"+
            "\u80ff\xff", true);
        private const DFA5_accept:Array =
            DFA.unpackEncodedString("\x01\u80ff\xff\x01\x03\x14\u80ff\xff"+
            "\x01\x01\x01\x02");
        private const DFA5_special:Array =
            DFA.unpackEncodedString("\x15\u80ff\xff\x01\x00\x02\u80ff\xff");
        private const DFA5_transition:Array = [
                DFA.unpackEncodedString("\x03\x01\x09\u80ff\xff\x02\x01"+
                "\x02\u80ff\xff\x03\x01\x01\x15\x0c\u80ff\xff\x01\x01\x18"+
                "\u80ff\xff\x02\x01\x03\u80ff\xff\x06\x01\x02\u80ff\xff\x01"+
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
                DFA.unpackEncodedString("\x01\u80ff\xff"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("")
        ];
            private function DFA5_specialStateTransition(dfa:DFA, s:int, _input:IntStream):int {
                var input:TokenStream = TokenStream(_input);
            	var _s:int = s;
                switch ( s ) {
                        case 0 : 
                            var LA5_21:int = input.LA(1);

                             
                            var index5_21:int = input.index;
                            input.rewind();
                            s = -1;
                            if ( (synpred7_Expression()) ) {s = 22;}

                            else if ( (synpred8_Expression()) ) {s = 23;}

                             
                            input.seek(index5_21);
                            if ( s>=0 ) return s;
                            break;
                }
                if (this.state.backtracking>0) {this.state.failed=true; return -1;}
                throw dfa.error(new NoViableAltException(dfa.description, 5, _s, input));
            }

        protected var dfa5:DFA;  // initialized in constructor

        private const DFA7_eot:Array =
            DFA.unpackEncodedString("\x11\u80ff\xff");
        private const DFA7_eof:Array =
            DFA.unpackEncodedString("\x11\u80ff\xff");
        private const DFA7_min:Array =
            DFA.unpackEncodedString("\x01\x12\x03\x00\x0d\u80ff\xff", true);
        private const DFA7_max:Array =
            DFA.unpackEncodedString("\x01\x58\x03\x00\x0d\u80ff\xff", true);
        private const DFA7_accept:Array =
            DFA.unpackEncodedString("\x04\u80ff\xff\x01\x02\x01\x03\x0a"+
            "\u80ff\xff\x01\x01");
        private const DFA7_special:Array =
            DFA.unpackEncodedString("\x01\u80ff\xff\x01\x00\x01\x01\x01"+
            "\x02\x0d\u80ff\xff");
        private const DFA7_transition:Array = [
                DFA.unpackEncodedString("\x01\x01\x02\x05\x0a\u80ff\xff"+
                "\x01\x05\x03\u80ff\xff\x01\x03\x0e\u80ff\xff\x01\x04\x18"+
                "\u80ff\xff\x02\x05\x03\u80ff\xff\x05\x05\x01\x02\x02\u80ff\xff"+
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
                            if ( (synpred10_Expression()) ) {s = 16;}

                            else if ( (true) ) {s = 5;}

                             
                            input.seek(index7_1);
                            if ( s>=0 ) return s;
                            break;
                        case 1 : 
                            var LA7_2:int = input.LA(1);

                             
                            var index7_2:int = input.index;
                            input.rewind();
                            s = -1;
                            if ( (synpred10_Expression()) ) {s = 16;}

                            else if ( (true) ) {s = 5;}

                             
                            input.seek(index7_2);
                            if ( s>=0 ) return s;
                            break;
                        case 2 : 
                            var LA7_3:int = input.LA(1);

                             
                            var index7_3:int = input.index;
                            input.rewind();
                            s = -1;
                            if ( (synpred10_Expression()) ) {s = 16;}

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
            DFA.unpackEncodedString("\x33\u80ff\xff");
        private const DFA19_eof:Array =
            DFA.unpackEncodedString("\x01\x01\x32\u80ff\xff");
        private const DFA19_min:Array =
            DFA.unpackEncodedString("\x01\x12\x21\u80ff\xff\x02\x00\x0f"+
            "\u80ff\xff", true);
        private const DFA19_max:Array =
            DFA.unpackEncodedString("\x01\x5a\x21\u80ff\xff\x02\x00\x0f"+
            "\u80ff\xff", true);
        private const DFA19_accept:Array =
            DFA.unpackEncodedString("\x01\u80ff\xff\x01\x03\x2f\u80ff\xff"+
            "\x01\x01\x01\x02");
        private const DFA19_special:Array =
            DFA.unpackEncodedString("\x22\u80ff\xff\x01\x00\x01\x01\x0f"+
            "\u80ff\xff");
        private const DFA19_transition:Array = [
                DFA.unpackEncodedString("\x03\x01\x09\u80ff\xff\x03\x01"+
                "\x01\u80ff\xff\x04\x01\x0c\u80ff\xff\x19\x01\x01\x22\x01"+
                "\x23\x03\u80ff\xff\x07\x01\x01\u80ff\xff\x03\x01"),
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
                            if ( (synpred47_Expression()) ) {s = 49;}

                            else if ( (true) ) {s = 1;}

                             
                            input.seek(index19_34);
                            if ( s>=0 ) return s;
                            break;
                        case 1 : 
                            var LA19_35:int = input.LA(1);

                             
                            var index19_35:int = input.index;
                            input.rewind();
                            s = -1;
                            if ( (synpred48_Expression()) ) {s = 50;}

                            else if ( (true) ) {s = 1;}

                             
                            input.seek(index19_35);
                            if ( s>=0 ) return s;
                            break;
                }
                if (this.state.backtracking>0) {this.state.failed=true; return -1;}
                throw dfa.error(new NoViableAltException(dfa.description, 19, _s, input));
            }

        protected var dfa19:DFA;  // initialized in constructor

        private const DFA25_eot:Array =
            DFA.unpackEncodedString("\x12\u80ff\xff");
        private const DFA25_eof:Array =
            DFA.unpackEncodedString("\x12\u80ff\xff");
        private const DFA25_min:Array =
            DFA.unpackEncodedString("\x01\x1f\x0e\u80ff\xff\x01\x00\x02"+
            "\u80ff\xff", true);
        private const DFA25_max:Array =
            DFA.unpackEncodedString("\x01\x57\x0e\u80ff\xff\x01\x00\x02"+
            "\u80ff\xff", true);
        private const DFA25_accept:Array =
            DFA.unpackEncodedString("\x01\u80ff\xff\x01\x05\x0b\u80ff\xff"+
            "\x01\x01\x01\x02\x01\u80ff\xff\x01\x03\x01\x04");
        private const DFA25_special:Array =
            DFA.unpackEncodedString("\x0f\u80ff\xff\x01\x00\x02\u80ff\xff");
        private const DFA25_transition:Array = [
                DFA.unpackEncodedString("\x01\x0f\x06\u80ff\xff\x0c\x01"+
                "\x23\u80ff\xff\x01\x0d\x01\u80ff\xff\x01\x0e"),
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
            private function DFA25_specialStateTransition(dfa:DFA, s:int, _input:IntStream):int {
                var input:TokenStream = TokenStream(_input);
            	var _s:int = s;
                switch ( s ) {
                        case 0 : 
                            var LA25_15:int = input.LA(1);

                             
                            var index25_15:int = input.index;
                            input.rewind();
                            s = -1;
                            if ( (synpred66_Expression()) ) {s = 16;}

                            else if ( (synpred68_Expression()) ) {s = 17;}

                             
                            input.seek(index25_15);
                            if ( s>=0 ) return s;
                            break;
                }
                if (this.state.backtracking>0) {this.state.failed=true; return -1;}
                throw dfa.error(new NoViableAltException(dfa.description, 25, _s, input));
            }

        protected var dfa25:DFA;  // initialized in constructor

        private const DFA26_eot:Array =
            DFA.unpackEncodedString("\x38\u80ff\xff");
        private const DFA26_eof:Array =
            DFA.unpackEncodedString("\x01\x01\x37\u80ff\xff");
        private const DFA26_min:Array =
            DFA.unpackEncodedString("\x01\x12\x23\u80ff\xff\x01\x00\x0a"+
            "\u80ff\xff\x01\x00\x08\u80ff\xff", true);
        private const DFA26_max:Array =
            DFA.unpackEncodedString("\x01\x5a\x23\u80ff\xff\x01\x00\x0a"+
            "\u80ff\xff\x01\x00\x08\u80ff\xff", true);
        private const DFA26_accept:Array =
            DFA.unpackEncodedString("\x01\u80ff\xff\x01\x05\x32\u80ff\xff"+
            "\x01\x02\x01\x01\x01\x03\x01\x04");
        private const DFA26_special:Array =
            DFA.unpackEncodedString("\x24\u80ff\xff\x01\x00\x0a\u80ff\xff"+
            "\x01\x01\x08\u80ff\xff");
        private const DFA26_transition:Array = [
                DFA.unpackEncodedString("\x03\x01\x09\u80ff\xff\x01\x01"+
                "\x01\x2f\x01\x01\x01\u80ff\xff\x04\x01\x0c\u80ff\xff\x23"+
                "\x01\x01\x24\x01\x01\x01\x34\x03\x01"),
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
                            var LA26_36:int = input.LA(1);

                             
                            var index26_36:int = input.index;
                            input.rewind();
                            s = -1;
                            if ( (synpred69_Expression()) ) {s = 53;}

                            else if ( (true) ) {s = 1;}

                             
                            input.seek(index26_36);
                            if ( s>=0 ) return s;
                            break;
                        case 1 : 
                            var LA26_47:int = input.LA(1);

                             
                            var index26_47:int = input.index;
                            input.rewind();
                            s = -1;
                            if ( (synpred71_Expression()) ) {s = 54;}

                            else if ( (synpred72_Expression()) ) {s = 55;}

                            else if ( (true) ) {s = 1;}

                             
                            input.seek(index26_47);
                            if ( s>=0 ) return s;
                            break;
                }
                if (this.state.backtracking>0) {this.state.failed=true; return -1;}
                throw dfa.error(new NoViableAltException(dfa.description, 26, _s, input));
            }

        protected var dfa26:DFA;  // initialized in constructor
     

        public static const FOLLOW_stmtList_in_main136:BitSet = new BitSet([0x00000000, 0x00000000]);
        public static const FOLLOW_EOF_in_main139:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_EOF_in_main145:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_stmt_in_stmtList157:BitSet = new BitSet([0xC01C0002, 0x0004000C, 0x053F1800, 0x00000000]);
        public static const FOLLOW_ifStmt_in_stmt185:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_whileStmt_in_stmt191:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_instrList_in_stmt197:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_30_in_ifStmt210:BitSet = new BitSet([0x80000000, 0x00000000]);
        public static const FOLLOW_31_in_ifStmt212:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_exp_in_ifStmt214:BitSet = new BitSet([0x00000000, 0x00000001]);
        public static const FOLLOW_32_in_ifStmt216:BitSet = new BitSet([0x00000000, 0x00000008]);
        public static const FOLLOW_block_in_ifStmt220:BitSet = new BitSet([0x00000000, 0x00000002]);
        public static const FOLLOW_33_in_ifStmt222:BitSet = new BitSet([0x00000000, 0x00000008]);
        public static const FOLLOW_block_in_ifStmt226:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_30_in_ifStmt245:BitSet = new BitSet([0x80000000, 0x00000000]);
        public static const FOLLOW_31_in_ifStmt247:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_exp_in_ifStmt249:BitSet = new BitSet([0x00000000, 0x00000001]);
        public static const FOLLOW_32_in_ifStmt251:BitSet = new BitSet([0x00000000, 0x00000008]);
        public static const FOLLOW_block_in_ifStmt253:BitSet = new BitSet([0x00000000, 0x00000002]);
        public static const FOLLOW_33_in_ifStmt255:BitSet = new BitSet([0x40000000, 0x00000000]);
        public static const FOLLOW_ifStmt_in_ifStmt257:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_30_in_ifStmt274:BitSet = new BitSet([0x80000000, 0x00000000]);
        public static const FOLLOW_31_in_ifStmt276:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_exp_in_ifStmt278:BitSet = new BitSet([0x00000000, 0x00000001]);
        public static const FOLLOW_32_in_ifStmt280:BitSet = new BitSet([0x00000000, 0x00000008]);
        public static const FOLLOW_block_in_ifStmt282:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_34_in_whileStmt306:BitSet = new BitSet([0x80000000, 0x00000000]);
        public static const FOLLOW_31_in_whileStmt308:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_exp_in_whileStmt310:BitSet = new BitSet([0x00000000, 0x00000001]);
        public static const FOLLOW_32_in_whileStmt312:BitSet = new BitSet([0x00000000, 0x00000008]);
        public static const FOLLOW_block_in_whileStmt314:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_35_in_block337:BitSet = new BitSet([0xC01C0000, 0x0004000C, 0x053F1800, 0x00000000]);
        public static const FOLLOW_stmtList_in_block339:BitSet = new BitSet([0x00000000, 0x00000010]);
        public static const FOLLOW_36_in_block341:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_instr_in_instrList360:BitSet = new BitSet([0x00000002, 0x00000020]);
        public static const FOLLOW_37_in_instrList369:BitSet = new BitSet([0xC01C0000, 0x0004002C, 0x053F1800, 0x00000000]);
        public static const FOLLOW_instr_in_instrList371:BitSet = new BitSet([0x00000002, 0x00000020]);
        public static const FOLLOW_37_in_instrList377:BitSet = new BitSet([0x00000002, 0x00000020]);
        public static const FOLLOW_exp_in_instr407:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_ret_in_instr412:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_assignExp_in_exp425:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_local_in_exp431:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_condExp_in_exp437:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_reference_in_assignExp450:BitSet = new BitSet([0x00000000, 0x0003FFC0]);
        public static const FOLLOW_38_in_assignExp459:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp461:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_39_in_assignExp480:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp482:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_40_in_assignExp500:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp502:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_41_in_assignExp520:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp522:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_42_in_assignExp540:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp542:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_43_in_assignExp560:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp562:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_44_in_assignExp580:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp582:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_45_in_assignExp600:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp602:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_46_in_assignExp620:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp622:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_47_in_assignExp640:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp642:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_48_in_assignExp660:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp662:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_49_in_assignExp680:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp682:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_50_in_local710:BitSet = new BitSet([0x00040000, 0x00000000]);
        public static const FOLLOW_Identifier_in_local714:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_50_in_local730:BitSet = new BitSet([0x00040000, 0x00000000]);
        public static const FOLLOW_Identifier_in_local734:BitSet = new BitSet([0x00000000, 0x00000040]);
        public static const FOLLOW_38_in_local736:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_exp_in_local738:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_logicalOr_in_condExp765:BitSet = new BitSet([0x00000002, 0x00080000]);
        public static const FOLLOW_51_in_condExp783:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_exp_in_condExp790:BitSet = new BitSet([0x00000000, 0x00100000]);
        public static const FOLLOW_52_in_condExp795:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_exp_in_condExp802:BitSet = new BitSet([0x00000002, 0x00080000]);
        public static const FOLLOW_logicalAnd_in_logicalOr836:BitSet = new BitSet([0x00000002, 0x00600000]);
        public static const FOLLOW_53_in_logicalOr845:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_logicalAnd_in_logicalOr848:BitSet = new BitSet([0x00000002, 0x00600000]);
        public static const FOLLOW_54_in_logicalOr854:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_logicalAnd_in_logicalOr857:BitSet = new BitSet([0x00000002, 0x00600000]);
        public static const FOLLOW_bitwiseOr_in_logicalAnd874:BitSet = new BitSet([0x00000002, 0x01800000]);
        public static const FOLLOW_55_in_logicalAnd883:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_bitwiseOr_in_logicalAnd886:BitSet = new BitSet([0x00000002, 0x01800000]);
        public static const FOLLOW_56_in_logicalAnd892:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_bitwiseOr_in_logicalAnd895:BitSet = new BitSet([0x00000002, 0x01800000]);
        public static const FOLLOW_bitwiseXor_in_bitwiseOr911:BitSet = new BitSet([0x00000002, 0x02000000]);
        public static const FOLLOW_57_in_bitwiseOr920:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_bitwiseXor_in_bitwiseOr923:BitSet = new BitSet([0x00000002, 0x02000000]);
        public static const FOLLOW_bitwiseAnd_in_bitwiseXor939:BitSet = new BitSet([0x00000002, 0x04000000]);
        public static const FOLLOW_58_in_bitwiseXor948:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_bitwiseAnd_in_bitwiseXor951:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_equalExp_in_bitwiseAnd967:BitSet = new BitSet([0x00000002, 0x08000000]);
        public static const FOLLOW_59_in_bitwiseAnd976:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_equalExp_in_bitwiseAnd979:BitSet = new BitSet([0x00000002, 0x08000000]);
        public static const FOLLOW_relExp_in_equalExp995:BitSet = new BitSet([0x00000002, 0xF0000000]);
        public static const FOLLOW_60_in_equalExp1004:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_relExp_in_equalExp1007:BitSet = new BitSet([0x00000002, 0xF0000000]);
        public static const FOLLOW_61_in_equalExp1013:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_relExp_in_equalExp1016:BitSet = new BitSet([0x00000002, 0xF0000000]);
        public static const FOLLOW_62_in_equalExp1022:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_relExp_in_equalExp1025:BitSet = new BitSet([0x00000002, 0xF0000000]);
        public static const FOLLOW_63_in_equalExp1031:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_relExp_in_equalExp1034:BitSet = new BitSet([0x00000002, 0xF0000000]);
        public static const FOLLOW_shiftExp_in_relExp1051:BitSet = new BitSet([0x00000002, 0x00000000, 0x000000FF, 0x00000000]);
        public static const FOLLOW_64_in_relExp1060:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_shiftExp_in_relExp1063:BitSet = new BitSet([0x00000002, 0x00000000, 0x000000FF, 0x00000000]);
        public static const FOLLOW_65_in_relExp1069:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_shiftExp_in_relExp1072:BitSet = new BitSet([0x00000002, 0x00000000, 0x000000FF, 0x00000000]);
        public static const FOLLOW_66_in_relExp1078:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_shiftExp_in_relExp1081:BitSet = new BitSet([0x00000002, 0x00000000, 0x000000FF, 0x00000000]);
        public static const FOLLOW_67_in_relExp1087:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_shiftExp_in_relExp1090:BitSet = new BitSet([0x00000002, 0x00000000, 0x000000FF, 0x00000000]);
        public static const FOLLOW_68_in_relExp1096:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_shiftExp_in_relExp1099:BitSet = new BitSet([0x00000002, 0x00000000, 0x000000FF, 0x00000000]);
        public static const FOLLOW_69_in_relExp1105:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_shiftExp_in_relExp1108:BitSet = new BitSet([0x00000002, 0x00000000, 0x000000FF, 0x00000000]);
        public static const FOLLOW_70_in_relExp1114:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_shiftExp_in_relExp1117:BitSet = new BitSet([0x00000002, 0x00000000, 0x000000FF, 0x00000000]);
        public static const FOLLOW_71_in_relExp1123:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_shiftExp_in_relExp1126:BitSet = new BitSet([0x00000002, 0x00000000, 0x000000FF, 0x00000000]);
        public static const FOLLOW_addExp_in_shiftExp1142:BitSet = new BitSet([0x00000002, 0x00000000, 0x00000700, 0x00000000]);
        public static const FOLLOW_72_in_shiftExp1151:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_addExp_in_shiftExp1154:BitSet = new BitSet([0x00000002, 0x00000000, 0x00000700, 0x00000000]);
        public static const FOLLOW_73_in_shiftExp1160:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_addExp_in_shiftExp1163:BitSet = new BitSet([0x00000002, 0x00000000, 0x00000700, 0x00000000]);
        public static const FOLLOW_74_in_shiftExp1169:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_addExp_in_shiftExp1172:BitSet = new BitSet([0x00000002, 0x00000000, 0x00000700, 0x00000000]);
        public static const FOLLOW_multExp_in_addExp1188:BitSet = new BitSet([0x00000002, 0x00000000, 0x00001800, 0x00000000]);
        public static const FOLLOW_75_in_addExp1197:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_multExp_in_addExp1200:BitSet = new BitSet([0x00000002, 0x00000000, 0x00001800, 0x00000000]);
        public static const FOLLOW_76_in_addExp1206:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_multExp_in_addExp1209:BitSet = new BitSet([0x00000002, 0x00000000, 0x00001800, 0x00000000]);
        public static const FOLLOW_unaryExp_in_multExp1227:BitSet = new BitSet([0x00000002, 0x00000000, 0x0000E000, 0x00000000]);
        public static const FOLLOW_77_in_multExp1236:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_unaryExp_in_multExp1239:BitSet = new BitSet([0x00000002, 0x00000000, 0x0000E000, 0x00000000]);
        public static const FOLLOW_78_in_multExp1245:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_unaryExp_in_multExp1248:BitSet = new BitSet([0x00000002, 0x00000000, 0x0000E000, 0x00000000]);
        public static const FOLLOW_79_in_multExp1254:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_unaryExp_in_multExp1257:BitSet = new BitSet([0x00000002, 0x00000000, 0x0000E000, 0x00000000]);
        public static const FOLLOW_75_in_unaryExp1276:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_atom_in_unaryExp1279:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_76_in_unaryExp1284:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_atom_in_unaryExp1287:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_80_in_unaryExp1292:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_atom_in_unaryExp1295:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_81_in_unaryExp1300:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_atom_in_unaryExp1303:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_atom_in_unaryExp1309:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_NumberLiteral_in_atom1321:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_StringLiteral_in_atom1326:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_82_in_atom1331:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_83_in_atom1336:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_84_in_atom1341:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_referenceOrFuncCall_in_atom1346:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_funcDef_in_atom1351:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_31_in_atom1356:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_exp_in_atom1359:BitSet = new BitSet([0x00000000, 0x00000001]);
        public static const FOLLOW_32_in_atom1361:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_object_in_reference1376:BitSet = new BitSet([0x80000002, 0x00000000, 0x00A00000, 0x00000000]);
        public static const FOLLOW_85_in_reference1395:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_exp_in_reference1399:BitSet = new BitSet([0x00000000, 0x00000000, 0x00400000, 0x00000000]);
        public static const FOLLOW_86_in_reference1401:BitSet = new BitSet([0x80000002, 0x00000000, 0x00A00000, 0x00000000]);
        public static const FOLLOW_87_in_reference1425:BitSet = new BitSet([0x00040000, 0x00000000]);
        public static const FOLLOW_Identifier_in_reference1429:BitSet = new BitSet([0x80000002, 0x00000000, 0x00A00000, 0x00000000]);
        public static const FOLLOW_31_in_reference1451:BitSet = new BitSet([0x801C0000, 0x00040009, 0x013F1800, 0x00000000]);
        public static const FOLLOW_params_in_reference1455:BitSet = new BitSet([0x00000000, 0x00000001]);
        public static const FOLLOW_32_in_reference1458:BitSet = new BitSet([0x00000000, 0x00000000, 0x00200000, 0x00000000]);
        public static const FOLLOW_85_in_reference1463:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_exp_in_reference1467:BitSet = new BitSet([0x00000000, 0x00000000, 0x00400000, 0x00000000]);
        public static const FOLLOW_86_in_reference1469:BitSet = new BitSet([0x80000002, 0x00000000, 0x00A00000, 0x00000000]);
        public static const FOLLOW_31_in_reference1500:BitSet = new BitSet([0x801C0000, 0x00040009, 0x013F1800, 0x00000000]);
        public static const FOLLOW_params_in_reference1504:BitSet = new BitSet([0x00000000, 0x00000001]);
        public static const FOLLOW_32_in_reference1507:BitSet = new BitSet([0x00000000, 0x00000000, 0x00800000, 0x00000000]);
        public static const FOLLOW_87_in_reference1512:BitSet = new BitSet([0x00040000, 0x00000000]);
        public static const FOLLOW_Identifier_in_reference1516:BitSet = new BitSet([0x80000002, 0x00000000, 0x00A00000, 0x00000000]);
        public static const FOLLOW_object_in_referenceOrFuncCall1556:BitSet = new BitSet([0x80000002, 0x00000000, 0x00A00000, 0x00000000]);
        public static const FOLLOW_85_in_referenceOrFuncCall1575:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_exp_in_referenceOrFuncCall1579:BitSet = new BitSet([0x00000000, 0x00000000, 0x00400000, 0x00000000]);
        public static const FOLLOW_86_in_referenceOrFuncCall1581:BitSet = new BitSet([0x80000002, 0x00000000, 0x00A00000, 0x00000000]);
        public static const FOLLOW_87_in_referenceOrFuncCall1601:BitSet = new BitSet([0x00040000, 0x00000000]);
        public static const FOLLOW_Identifier_in_referenceOrFuncCall1605:BitSet = new BitSet([0x80000002, 0x00000000, 0x00A00000, 0x00000000]);
        public static const FOLLOW_31_in_referenceOrFuncCall1624:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_params_in_referenceOrFuncCall1628:BitSet = new BitSet([0x00000000, 0x00000001]);
        public static const FOLLOW_32_in_referenceOrFuncCall1630:BitSet = new BitSet([0x80000002, 0x00000000, 0x00A00000, 0x00000000]);
        public static const FOLLOW_31_in_referenceOrFuncCall1649:BitSet = new BitSet([0x00000000, 0x00000001]);
        public static const FOLLOW_32_in_referenceOrFuncCall1651:BitSet = new BitSet([0x80000002, 0x00000000, 0x00A00000, 0x00000000]);
        public static const FOLLOW_88_in_funcDef1680:BitSet = new BitSet([0x80000000, 0x00000000]);
        public static const FOLLOW_31_in_funcDef1689:BitSet = new BitSet([0x00040000, 0x00000000]);
        public static const FOLLOW_args_in_funcDef1693:BitSet = new BitSet([0x00000000, 0x00000001]);
        public static const FOLLOW_32_in_funcDef1695:BitSet = new BitSet([0x00000000, 0x00000008]);
        public static const FOLLOW_block_in_funcDef1699:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_31_in_funcDef1719:BitSet = new BitSet([0x00000000, 0x00000001]);
        public static const FOLLOW_32_in_funcDef1721:BitSet = new BitSet([0x00000000, 0x00000008]);
        public static const FOLLOW_block_in_funcDef1725:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_Identifier_in_args1752:BitSet = new BitSet([0x00000002, 0x00000000, 0x02000000, 0x00000000]);
        public static const FOLLOW_89_in_args1761:BitSet = new BitSet([0x00040000, 0x00000000]);
        public static const FOLLOW_Identifier_in_args1767:BitSet = new BitSet([0x00000002, 0x00000000, 0x02000000, 0x00000000]);
        public static const FOLLOW_Identifier_in_object1784:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_array_in_object1789:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_createObj_in_object1794:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_exp_in_params1806:BitSet = new BitSet([0x00000002, 0x00000000, 0x02000000, 0x00000000]);
        public static const FOLLOW_89_in_params1815:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_exp_in_params1821:BitSet = new BitSet([0x00000002, 0x00000000, 0x02000000, 0x00000000]);
        public static const FOLLOW_85_in_array1838:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_items_in_array1842:BitSet = new BitSet([0x00000000, 0x00000000, 0x00400000, 0x00000000]);
        public static const FOLLOW_86_in_array1844:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_85_in_array1860:BitSet = new BitSet([0x00000000, 0x00000000, 0x00400000, 0x00000000]);
        public static const FOLLOW_86_in_array1862:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_exp_in_items1884:BitSet = new BitSet([0x00000002, 0x00000000, 0x02000000, 0x00000000]);
        public static const FOLLOW_89_in_items1893:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_exp_in_items1899:BitSet = new BitSet([0x00000002, 0x00000000, 0x02000000, 0x00000000]);
        public static const FOLLOW_35_in_createObj1916:BitSet = new BitSet([0x00140000, 0x00000000]);
        public static const FOLLOW_objItems_in_createObj1920:BitSet = new BitSet([0x00000000, 0x00000010]);
        public static const FOLLOW_36_in_createObj1922:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_35_in_createObj1938:BitSet = new BitSet([0x00000000, 0x00000010]);
        public static const FOLLOW_36_in_createObj1940:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_set_in_objItems1965:BitSet = new BitSet([0x00000000, 0x00100000]);
        public static const FOLLOW_52_in_objItems1973:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_exp_in_objItems1976:BitSet = new BitSet([0x00000002, 0x00000000, 0x02000000, 0x00000000]);
        public static const FOLLOW_89_in_objItems1985:BitSet = new BitSet([0x00140000, 0x00000000]);
        public static const FOLLOW_set_in_objItems1991:BitSet = new BitSet([0x00000000, 0x00100000]);
        public static const FOLLOW_52_in_objItems1999:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_exp_in_objItems2002:BitSet = new BitSet([0x00000002, 0x00000000, 0x02000000, 0x00000000]);
        public static const FOLLOW_90_in_ret2020:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_exp_in_ret2024:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_90_in_ret2040:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_stmtList_in_synpred1_Expression136:BitSet = new BitSet([0x00000000, 0x00000000]);
        public static const FOLLOW_EOF_in_synpred1_Expression139:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_30_in_synpred5_Expression210:BitSet = new BitSet([0x80000000, 0x00000000]);
        public static const FOLLOW_31_in_synpred5_Expression212:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_exp_in_synpred5_Expression214:BitSet = new BitSet([0x00000000, 0x00000001]);
        public static const FOLLOW_32_in_synpred5_Expression216:BitSet = new BitSet([0x00000000, 0x00000008]);
        public static const FOLLOW_block_in_synpred5_Expression220:BitSet = new BitSet([0x00000000, 0x00000002]);
        public static const FOLLOW_33_in_synpred5_Expression222:BitSet = new BitSet([0x00000000, 0x00000008]);
        public static const FOLLOW_block_in_synpred5_Expression226:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_30_in_synpred6_Expression245:BitSet = new BitSet([0x80000000, 0x00000000]);
        public static const FOLLOW_31_in_synpred6_Expression247:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_exp_in_synpred6_Expression249:BitSet = new BitSet([0x00000000, 0x00000001]);
        public static const FOLLOW_32_in_synpred6_Expression251:BitSet = new BitSet([0x00000000, 0x00000008]);
        public static const FOLLOW_block_in_synpred6_Expression253:BitSet = new BitSet([0x00000000, 0x00000002]);
        public static const FOLLOW_33_in_synpred6_Expression255:BitSet = new BitSet([0x40000000, 0x00000000]);
        public static const FOLLOW_ifStmt_in_synpred6_Expression257:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_37_in_synpred7_Expression369:BitSet = new BitSet([0xC01C0000, 0x0004000C, 0x053F1800, 0x00000000]);
        public static const FOLLOW_instr_in_synpred7_Expression371:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_37_in_synpred8_Expression377:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_assignExp_in_synpred10_Expression425:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_51_in_synpred24_Expression783:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_exp_in_synpred24_Expression790:BitSet = new BitSet([0x00000000, 0x00100000]);
        public static const FOLLOW_52_in_synpred24_Expression795:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_exp_in_synpred24_Expression802:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_75_in_synpred47_Expression1197:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_multExp_in_synpred47_Expression1200:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_76_in_synpred48_Expression1206:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_multExp_in_synpred48_Expression1209:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_31_in_synpred66_Expression1451:BitSet = new BitSet([0x801C0000, 0x00040009, 0x013F1800, 0x00000000]);
        public static const FOLLOW_params_in_synpred66_Expression1455:BitSet = new BitSet([0x00000000, 0x00000001]);
        public static const FOLLOW_32_in_synpred66_Expression1458:BitSet = new BitSet([0x00000000, 0x00000000, 0x00200000, 0x00000000]);
        public static const FOLLOW_85_in_synpred66_Expression1463:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_exp_in_synpred66_Expression1467:BitSet = new BitSet([0x00000000, 0x00000000, 0x00400000, 0x00000000]);
        public static const FOLLOW_86_in_synpred66_Expression1469:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_31_in_synpred68_Expression1500:BitSet = new BitSet([0x801C0000, 0x00040009, 0x013F1800, 0x00000000]);
        public static const FOLLOW_params_in_synpred68_Expression1504:BitSet = new BitSet([0x00000000, 0x00000001]);
        public static const FOLLOW_32_in_synpred68_Expression1507:BitSet = new BitSet([0x00000000, 0x00000000, 0x00800000, 0x00000000]);
        public static const FOLLOW_87_in_synpred68_Expression1512:BitSet = new BitSet([0x00040000, 0x00000000]);
        public static const FOLLOW_Identifier_in_synpred68_Expression1516:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_85_in_synpred69_Expression1575:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_exp_in_synpred69_Expression1579:BitSet = new BitSet([0x00000000, 0x00000000, 0x00400000, 0x00000000]);
        public static const FOLLOW_86_in_synpred69_Expression1581:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_31_in_synpred71_Expression1624:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_params_in_synpred71_Expression1628:BitSet = new BitSet([0x00000000, 0x00000001]);
        public static const FOLLOW_32_in_synpred71_Expression1630:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_31_in_synpred72_Expression1649:BitSet = new BitSet([0x00000000, 0x00000001]);
        public static const FOLLOW_32_in_synpred72_Expression1651:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_90_in_synpred84_Expression2020:BitSet = new BitSet([0x801C0000, 0x00040008, 0x013F1800, 0x00000000]);
        public static const FOLLOW_exp_in_synpred84_Expression2024:BitSet = new BitSet([0x00000002, 0x00000000]);

    }
}