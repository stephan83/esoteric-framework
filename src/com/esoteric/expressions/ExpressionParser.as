// $ANTLR 3.1.2 C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g 2009-05-26 19:08:00
package com.esoteric.expressions {
    import org.antlr.runtime.*;
        

    import org.antlr.runtime.tree.*;


    public class ExpressionParser extends Parser {
        public static const tokenNames:Array = [
            "<invalid>", "<EOR>", "<DOWN>", "<UP>", "StmtList", "ExpList", "FuncCall", "PropRef", "PropExp", "CondExp", "CreateArray", "IfStmt", "WhileStmt", "ForStmt", "NumberLiteral", "StringLiteral", "Identifier", "LineComment", "MultilineComment", "Digit", "Exponent", "HexDigit", "EscapeSequence", "WhiteSpace", "Letter", "UnicodeEscapeChar", "'if'", "'('", "')'", "'else'", "'while'", "'{'", "'}'", "';'", "'='", "'*='", "'/='", "'%='", "'+='", "'-='", "'<<='", "'>>='", "'>>>='", "'&='", "'^='", "'|='", "'?'", "':'", "'||'", "'&&'", "'|'", "'^'", "'&'", "'=='", "'!='", "'==='", "'!=='", "'<'", "'>'", "'<='", "'>='", "'<<'", "'>>'", "'>>>'", "'+'", "'-'", "'*'", "'/'", "'%'", "'~'", "'!'", "'true'", "'false'", "'['", "']'", "'.'", "','"
        ];
        public static const T__68:int=68;
        public static const T__69:int=69;
        public static const T__66:int=66;
        public static const T__67:int=67;
        public static const StmtList:int=4;
        public static const T__29:int=29;
        public static const T__64:int=64;
        public static const T__28:int=28;
        public static const T__65:int=65;
        public static const T__27:int=27;
        public static const T__62:int=62;
        public static const ExpList:int=5;
        public static const T__26:int=26;
        public static const T__63:int=63;
        public static const Exponent:int=20;
        public static const LineComment:int=17;
        public static const T__61:int=61;
        public static const EOF:int=-1;
        public static const T__60:int=60;
        public static const HexDigit:int=21;
        public static const PropExp:int=8;
        public static const Identifier:int=16;
        public static const T__55:int=55;
        public static const T__56:int=56;
        public static const T__57:int=57;
        public static const T__58:int=58;
        public static const T__51:int=51;
        public static const T__52:int=52;
        public static const T__53:int=53;
        public static const T__54:int=54;
        public static const WhileStmt:int=12;
        public static const T__59:int=59;
        public static const IfStmt:int=11;
        public static const CondExp:int=9;
        public static const WhiteSpace:int=23;
        public static const T__50:int=50;
        public static const ForStmt:int=13;
        public static const CreateArray:int=10;
        public static const T__42:int=42;
        public static const T__43:int=43;
        public static const T__40:int=40;
        public static const T__41:int=41;
        public static const T__46:int=46;
        public static const T__47:int=47;
        public static const T__44:int=44;
        public static const T__45:int=45;
        public static const UnicodeEscapeChar:int=25;
        public static const NumberLiteral:int=14;
        public static const T__48:int=48;
        public static const T__49:int=49;
        public static const Digit:int=19;
        public static const StringLiteral:int=15;
        public static const T__30:int=30;
        public static const T__31:int=31;
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
        public static const MultilineComment:int=18;
        public static const T__75:int=75;
        public static const T__74:int=74;
        public static const Letter:int=24;
        public static const EscapeSequence:int=22;
        public static const T__73:int=73;

        // delegates
        // delegators


            public function ExpressionParser(input:TokenStream, state:RecognizerSharedState = null) {
                super(input, state);

                dfa5 = new DFA(this, 5,
                            "()* loopback of 66:3: ( ';' exp | ';' )*",
                            DFA5_eot, DFA5_eof, DFA5_min,
                            DFA5_max, DFA5_accept, DFA5_special,
                            DFA5_transition, DFA5_specialStateTransition);

                dfa6 = new DFA(this, 6,
                            "72:1: exp : ( assignExp | condExp );",
                            DFA6_eot, DFA6_eof, DFA6_min,
                            DFA6_max, DFA6_accept, DFA6_special,
                            DFA6_transition, DFA6_specialStateTransition);

                dfa17 = new DFA(this, 17,
                            "()* loopback of 171:3: ( '+' multExp | '-' multExp )*",
                            DFA17_eot, DFA17_eof, DFA17_min,
                            DFA17_max, DFA17_accept, DFA17_special,
                            DFA17_transition, DFA17_specialStateTransition);

                dfa23 = new DFA(this, 23,
                            "()* loopback of 205:3: ( '[' e= exp ']' -> ^( PropExp $reference $e) | '.' i= Identifier -> ^( PropRef $reference $i) | '(' (p= params )? ')' '[' e= exp ']' -> ^( PropExp ^( FuncCall $reference $p) $e) | '(' (p= params )? ')' '.' i= Identifier -> ^( PropRef ^( FuncCall $reference $p) $i) )*",
                            DFA23_eot, DFA23_eof, DFA23_min,
                            DFA23_max, DFA23_accept, DFA23_special,
                            DFA23_transition, DFA23_specialStateTransition);

                dfa24 = new DFA(this, 24,
                            "()* loopback of 220:3: ( '[' e= exp ']' -> ^( PropExp $referenceOrFuncCall $e) | '.' i= Identifier -> ^( PropRef $referenceOrFuncCall $i) | '(' p= params ')' -> ^( FuncCall $referenceOrFuncCall $p) | '(' ')' -> ^( FuncCall $referenceOrFuncCall) )*",
                            DFA24_eot, DFA24_eof, DFA24_min,
                            DFA24_max, DFA24_accept, DFA24_special,
                            DFA24_transition, DFA24_specialStateTransition);

                this.state.ruleMemo = new Array(93+1);
                 
            }
            
        protected var adaptor:TreeAdaptor = new CommonTreeAdaptor();

        override public function set treeAdaptor(adaptor:TreeAdaptor):void {
            this.adaptor = adaptor;
        }
        override public function get treeAdaptor():TreeAdaptor {
            return adaptor;
        }

        public override function get tokenNames():Array { return ExpressionParser.tokenNames; }
        public override function get grammarFileName():String { return "C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g"; }


        // $ANTLR start main
        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:32:1: main : ( stmtList EOF | EOF );
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
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:33:2: ( stmtList EOF | EOF )
                var alt1:int=2;
                var LA1_0:int = input.LA(1);

                if ( ((LA1_0>=14 && LA1_0<=16)||(LA1_0>=26 && LA1_0<=27)||LA1_0==30||(LA1_0>=64 && LA1_0<=65)||(LA1_0>=69 && LA1_0<=73)) ) {
                    alt1=1;
                }
                else if ( (LA1_0==-1) ) {
                    alt1=2;
                }
                else {
                    if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                    throw new NoViableAltException("", 1, 0, input);

                }
                switch (alt1) {
                    case 1 :
                        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:33:4: stmtList EOF
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_stmtList_in_main114);
                        stmtList1=stmtList();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) root_0 = CommonTree(adaptor.becomeRoot(stmtList1.tree, root_0));
                        EOF2=Token(matchStream(input,EOF,FOLLOW_EOF_in_main117)); if (this.state.failed) return retval;

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:34:4: EOF
                        {
                        root_0 = CommonTree(adaptor.nil());

                        EOF3=Token(matchStream(input,EOF,FOLLOW_EOF_in_main123)); if (this.state.failed) return retval;
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
        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:37:1: stmtList : stmt ( stmt )* -> ^( StmtList ( stmt )+ ) ;
        public final function stmtList():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var stmtList_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var stmt4:ParserRuleReturnScope = null;

            var stmt5:ParserRuleReturnScope = null;


            var stream_stmt:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule stmt");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 2) ) { return retval; }
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:38:2: ( stmt ( stmt )* -> ^( StmtList ( stmt )+ ) )
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:38:4: stmt ( stmt )*
                {
                pushFollow(FOLLOW_stmt_in_stmtList135);
                stmt4=stmt();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) stream_stmt.add(stmt4.tree);
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:39:3: ( stmt )*
                loop2:
                do {
                    var alt2:int=2;
                    var LA2_0:int = input.LA(1);

                    if ( ((LA2_0>=14 && LA2_0<=16)||(LA2_0>=26 && LA2_0<=27)||LA2_0==30||(LA2_0>=64 && LA2_0<=65)||(LA2_0>=69 && LA2_0<=73)) ) {
                        alt2=1;
                    }


                    switch (alt2) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:40:4: stmt
                	    {
                	    pushFollow(FOLLOW_stmt_in_stmtList144);
                	    stmt5=stmt();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) stream_stmt.add(stmt5.tree);

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
                // 41:10: -> ^( StmtList ( stmt )+ )
                {
                    // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:41:13: ^( StmtList ( stmt )+ )
                    {
                    var root_1:CommonTree = CommonTree(adaptor.nil());
                    root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(StmtList, "StmtList")), root_1));

                    if ( !(stream_stmt.hasNext) ) {
                        throw new RewriteEarlyExitException();
                    }
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
        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:44:1: stmt : ( ifStmt | whileStmt | expList );
        public final function stmt():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var stmt_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var ifStmt6:ParserRuleReturnScope = null;

            var whileStmt7:ParserRuleReturnScope = null;

            var expList8:ParserRuleReturnScope = null;



            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 3) ) { return retval; }
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:45:2: ( ifStmt | whileStmt | expList )
                var alt3:int=3;
                switch ( input.LA(1) ) {
                case 26:
                    {
                    alt3=1;
                    }
                    break;
                case 30:
                    {
                    alt3=2;
                    }
                    break;
                case NumberLiteral:
                case StringLiteral:
                case Identifier:
                case 27:
                case 64:
                case 65:
                case 69:
                case 70:
                case 71:
                case 72:
                case 73:
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
                        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:45:4: ifStmt
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_ifStmt_in_stmt176);
                        ifStmt6=ifStmt();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) root_0 = CommonTree(adaptor.becomeRoot(ifStmt6.tree, root_0));

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:46:4: whileStmt
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_whileStmt_in_stmt182);
                        whileStmt7=whileStmt();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) root_0 = CommonTree(adaptor.becomeRoot(whileStmt7.tree, root_0));

                        }
                        break;
                    case 3 :
                        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:47:4: expList
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_expList_in_stmt188);
                        expList8=expList();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) root_0 = CommonTree(adaptor.becomeRoot(expList8.tree, root_0));

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
        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:50:1: ifStmt : ( 'if' '(' exp ')' l= block 'else' r= block -> ^( IfStmt exp $l $r) | 'if' '(' exp ')' block 'else' ifStmt -> ^( IfStmt exp block ifStmt ) | 'if' '(' exp ')' block -> ^( IfStmt exp block ) );
        public final function ifStmt():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var ifStmt_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var string_literal9:Token=null;
            var char_literal10:Token=null;
            var char_literal12:Token=null;
            var string_literal13:Token=null;
            var string_literal14:Token=null;
            var char_literal15:Token=null;
            var char_literal17:Token=null;
            var string_literal19:Token=null;
            var string_literal21:Token=null;
            var char_literal22:Token=null;
            var char_literal24:Token=null;
            var l:ParserRuleReturnScope = null;

            var r:ParserRuleReturnScope = null;

            var exp11:ParserRuleReturnScope = null;

            var exp16:ParserRuleReturnScope = null;

            var block18:ParserRuleReturnScope = null;

            var ifStmt20:ParserRuleReturnScope = null;

            var exp23:ParserRuleReturnScope = null;

            var block25:ParserRuleReturnScope = null;


            var string_literal9_tree:CommonTree=null;
            var char_literal10_tree:CommonTree=null;
            var char_literal12_tree:CommonTree=null;
            var string_literal13_tree:CommonTree=null;
            var string_literal14_tree:CommonTree=null;
            var char_literal15_tree:CommonTree=null;
            var char_literal17_tree:CommonTree=null;
            var string_literal19_tree:CommonTree=null;
            var string_literal21_tree:CommonTree=null;
            var char_literal22_tree:CommonTree=null;
            var char_literal24_tree:CommonTree=null;
            var stream_26:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 26");
            var stream_27:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 27");
            var stream_28:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 28");
            var stream_29:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 29");
            var stream_exp:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule exp");
            var stream_block:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule block");
            var stream_ifStmt:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule ifStmt");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 4) ) { return retval; }
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:51:2: ( 'if' '(' exp ')' l= block 'else' r= block -> ^( IfStmt exp $l $r) | 'if' '(' exp ')' block 'else' ifStmt -> ^( IfStmt exp block ifStmt ) | 'if' '(' exp ')' block -> ^( IfStmt exp block ) )
                var alt4:int=3;
                var LA4_0:int = input.LA(1);

                if ( (LA4_0==26) ) {
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
                        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:51:4: 'if' '(' exp ')' l= block 'else' r= block
                        {
                        string_literal9=Token(matchStream(input,26,FOLLOW_26_in_ifStmt201)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_26.add(string_literal9);

                        char_literal10=Token(matchStream(input,27,FOLLOW_27_in_ifStmt203)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_27.add(char_literal10);

                        pushFollow(FOLLOW_exp_in_ifStmt205);
                        exp11=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp11.tree);
                        char_literal12=Token(matchStream(input,28,FOLLOW_28_in_ifStmt207)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_28.add(char_literal12);

                        pushFollow(FOLLOW_block_in_ifStmt211);
                        l=block();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_block.add(l.tree);
                        string_literal13=Token(matchStream(input,29,FOLLOW_29_in_ifStmt213)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_29.add(string_literal13);

                        pushFollow(FOLLOW_block_in_ifStmt217);
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
                        // 51:44: -> ^( IfStmt exp $l $r)
                        {
                            // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:51:47: ^( IfStmt exp $l $r)
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
                        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:52:4: 'if' '(' exp ')' block 'else' ifStmt
                        {
                        string_literal14=Token(matchStream(input,26,FOLLOW_26_in_ifStmt236)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_26.add(string_literal14);

                        char_literal15=Token(matchStream(input,27,FOLLOW_27_in_ifStmt238)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_27.add(char_literal15);

                        pushFollow(FOLLOW_exp_in_ifStmt240);
                        exp16=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp16.tree);
                        char_literal17=Token(matchStream(input,28,FOLLOW_28_in_ifStmt242)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_28.add(char_literal17);

                        pushFollow(FOLLOW_block_in_ifStmt244);
                        block18=block();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_block.add(block18.tree);
                        string_literal19=Token(matchStream(input,29,FOLLOW_29_in_ifStmt246)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_29.add(string_literal19);

                        pushFollow(FOLLOW_ifStmt_in_ifStmt248);
                        ifStmt20=ifStmt();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_ifStmt.add(ifStmt20.tree);


                        // AST REWRITE
                        // elements: exp, ifStmt, block
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 52:41: -> ^( IfStmt exp block ifStmt )
                        {
                            // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:52:44: ^( IfStmt exp block ifStmt )
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
                        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:53:4: 'if' '(' exp ')' block
                        {
                        string_literal21=Token(matchStream(input,26,FOLLOW_26_in_ifStmt265)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_26.add(string_literal21);

                        char_literal22=Token(matchStream(input,27,FOLLOW_27_in_ifStmt267)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_27.add(char_literal22);

                        pushFollow(FOLLOW_exp_in_ifStmt269);
                        exp23=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp23.tree);
                        char_literal24=Token(matchStream(input,28,FOLLOW_28_in_ifStmt271)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_28.add(char_literal24);

                        pushFollow(FOLLOW_block_in_ifStmt273);
                        block25=block();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_block.add(block25.tree);


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
                        // 53:29: -> ^( IfStmt exp block )
                        {
                            // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:53:32: ^( IfStmt exp block )
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
        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:56:1: whileStmt : 'while' '(' exp ')' block -> ^( WhileStmt exp block ) ;
        public final function whileStmt():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var whileStmt_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var string_literal26:Token=null;
            var char_literal27:Token=null;
            var char_literal29:Token=null;
            var exp28:ParserRuleReturnScope = null;

            var block30:ParserRuleReturnScope = null;


            var string_literal26_tree:CommonTree=null;
            var char_literal27_tree:CommonTree=null;
            var char_literal29_tree:CommonTree=null;
            var stream_30:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 30");
            var stream_27:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 27");
            var stream_28:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 28");
            var stream_exp:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule exp");
            var stream_block:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule block");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 5) ) { return retval; }
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:57:2: ( 'while' '(' exp ')' block -> ^( WhileStmt exp block ) )
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:57:4: 'while' '(' exp ')' block
                {
                string_literal26=Token(matchStream(input,30,FOLLOW_30_in_whileStmt297)); if (this.state.failed) return retval; 
                if ( this.state.backtracking==0 ) stream_30.add(string_literal26);

                char_literal27=Token(matchStream(input,27,FOLLOW_27_in_whileStmt299)); if (this.state.failed) return retval; 
                if ( this.state.backtracking==0 ) stream_27.add(char_literal27);

                pushFollow(FOLLOW_exp_in_whileStmt301);
                exp28=exp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) stream_exp.add(exp28.tree);
                char_literal29=Token(matchStream(input,28,FOLLOW_28_in_whileStmt303)); if (this.state.failed) return retval; 
                if ( this.state.backtracking==0 ) stream_28.add(char_literal29);

                pushFollow(FOLLOW_block_in_whileStmt305);
                block30=block();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) stream_block.add(block30.tree);


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
                // 57:31: -> ^( WhileStmt exp block )
                {
                    // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:57:34: ^( WhileStmt exp block )
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
        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:60:1: block : '{' stmtList '}' -> ^( stmtList ) ;
        public final function block():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var block_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal31:Token=null;
            var char_literal33:Token=null;
            var stmtList32:ParserRuleReturnScope = null;


            var char_literal31_tree:CommonTree=null;
            var char_literal33_tree:CommonTree=null;
            var stream_32:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 32");
            var stream_31:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 31");
            var stream_stmtList:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule stmtList");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 6) ) { return retval; }
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:61:2: ( '{' stmtList '}' -> ^( stmtList ) )
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:61:4: '{' stmtList '}'
                {
                char_literal31=Token(matchStream(input,31,FOLLOW_31_in_block328)); if (this.state.failed) return retval; 
                if ( this.state.backtracking==0 ) stream_31.add(char_literal31);

                pushFollow(FOLLOW_stmtList_in_block330);
                stmtList32=stmtList();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) stream_stmtList.add(stmtList32.tree);
                char_literal33=Token(matchStream(input,32,FOLLOW_32_in_block332)); if (this.state.failed) return retval; 
                if ( this.state.backtracking==0 ) stream_32.add(char_literal33);



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
                // 61:23: -> ^( stmtList )
                {
                    // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:61:26: ^( stmtList )
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

        // $ANTLR start expList
        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:64:1: expList : exp ( ';' exp | ';' )* -> ^( ExpList ( exp )+ ) ;
        public final function expList():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var expList_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal35:Token=null;
            var char_literal37:Token=null;
            var exp34:ParserRuleReturnScope = null;

            var exp36:ParserRuleReturnScope = null;


            var char_literal35_tree:CommonTree=null;
            var char_literal37_tree:CommonTree=null;
            var stream_33:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 33");
            var stream_exp:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule exp");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 7) ) { return retval; }
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:65:2: ( exp ( ';' exp | ';' )* -> ^( ExpList ( exp )+ ) )
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:65:4: exp ( ';' exp | ';' )*
                {
                pushFollow(FOLLOW_exp_in_expList351);
                exp34=exp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) stream_exp.add(exp34.tree);
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:66:3: ( ';' exp | ';' )*
                loop5:
                do {
                    var alt5:int=3;
                    alt5 = dfa5.predict(input);
                    switch (alt5) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:67:4: ';' exp
                	    {
                	    char_literal35=Token(matchStream(input,33,FOLLOW_33_in_expList360)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_33.add(char_literal35);

                	    pushFollow(FOLLOW_exp_in_expList362);
                	    exp36=exp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) stream_exp.add(exp36.tree);

                	    }
                	    break;
                	case 2 :
                	    // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:68:5: ';'
                	    {
                	    char_literal37=Token(matchStream(input,33,FOLLOW_33_in_expList368)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_33.add(char_literal37);


                	    }
                	    break;

                	default :
                	    break loop5;
                    }
                } while (true);



                // AST REWRITE
                // elements: exp
                // token labels: 
                // rule labels: retval
                // token list labels: 
                // rule list labels: 
                if ( this.state.backtracking==0 ) {
                retval.tree = root_0;
                var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                root_0 = CommonTree(adaptor.nil());
                // 69:10: -> ^( ExpList ( exp )+ )
                {
                    // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:69:13: ^( ExpList ( exp )+ )
                    {
                    var root_1:CommonTree = CommonTree(adaptor.nil());
                    root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(ExpList, "ExpList")), root_1));

                    if ( !(stream_exp.hasNext) ) {
                        throw new RewriteEarlyExitException();
                    }
                    while ( stream_exp.hasNext ) {
                        adaptor.addChild(root_1, stream_exp.nextTree());

                    }
                    stream_exp.reset();

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
                if ( this.state.backtracking>0 ) { memoize(input, 7, expList_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end expList

        // $ANTLR start exp
        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:72:1: exp : ( assignExp | condExp );
        public final function exp():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var exp_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var assignExp38:ParserRuleReturnScope = null;

            var condExp39:ParserRuleReturnScope = null;



            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 8) ) { return retval; }
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:73:2: ( assignExp | condExp )
                var alt6:int=2;
                alt6 = dfa6.predict(input);
                switch (alt6) {
                    case 1 :
                        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:73:4: assignExp
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_assignExp_in_exp398);
                        assignExp38=assignExp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) root_0 = CommonTree(adaptor.becomeRoot(assignExp38.tree, root_0));

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:74:4: condExp
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_condExp_in_exp404);
                        condExp39=condExp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) root_0 = CommonTree(adaptor.becomeRoot(condExp39.tree, root_0));

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
                if ( this.state.backtracking>0 ) { memoize(input, 8, exp_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end exp

        // $ANTLR start assignExp
        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:77:1: assignExp : reference ( '=' exp -> ^( '=' exp reference ) | '*=' exp -> ^( '*=' exp reference ) | '/=' exp -> ^( '/=' exp reference ) | '%=' exp -> ^( '%=' exp reference ) | '+=' exp -> ^( '+=' exp reference ) | '-=' exp -> ^( '-=' exp reference ) | '<<=' exp -> ^( '<<=' exp reference ) | '>>=' exp -> ^( '>>=' exp reference ) | '>>>=' exp -> ^( '>>>=' exp reference ) | '&=' exp -> ^( '&=' exp reference ) | '^=' exp -> ^( '^=' exp reference ) | '|=' exp -> ^( '|=' exp reference ) ) ;
        public final function assignExp():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var assignExp_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal41:Token=null;
            var string_literal43:Token=null;
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
            var reference40:ParserRuleReturnScope = null;

            var exp42:ParserRuleReturnScope = null;

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


            var char_literal41_tree:CommonTree=null;
            var string_literal43_tree:CommonTree=null;
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
            var stream_45:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 45");
            var stream_43:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 43");
            var stream_42:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 42");
            var stream_44:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 44");
            var stream_41:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 41");
            var stream_40:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 40");
            var stream_35:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 35");
            var stream_36:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 36");
            var stream_34:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 34");
            var stream_39:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 39");
            var stream_37:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 37");
            var stream_38:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 38");
            var stream_exp:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule exp");
            var stream_reference:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule reference");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 9) ) { return retval; }
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:78:2: ( reference ( '=' exp -> ^( '=' exp reference ) | '*=' exp -> ^( '*=' exp reference ) | '/=' exp -> ^( '/=' exp reference ) | '%=' exp -> ^( '%=' exp reference ) | '+=' exp -> ^( '+=' exp reference ) | '-=' exp -> ^( '-=' exp reference ) | '<<=' exp -> ^( '<<=' exp reference ) | '>>=' exp -> ^( '>>=' exp reference ) | '>>>=' exp -> ^( '>>>=' exp reference ) | '&=' exp -> ^( '&=' exp reference ) | '^=' exp -> ^( '^=' exp reference ) | '|=' exp -> ^( '|=' exp reference ) ) )
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:78:4: reference ( '=' exp -> ^( '=' exp reference ) | '*=' exp -> ^( '*=' exp reference ) | '/=' exp -> ^( '/=' exp reference ) | '%=' exp -> ^( '%=' exp reference ) | '+=' exp -> ^( '+=' exp reference ) | '-=' exp -> ^( '-=' exp reference ) | '<<=' exp -> ^( '<<=' exp reference ) | '>>=' exp -> ^( '>>=' exp reference ) | '>>>=' exp -> ^( '>>>=' exp reference ) | '&=' exp -> ^( '&=' exp reference ) | '^=' exp -> ^( '^=' exp reference ) | '|=' exp -> ^( '|=' exp reference ) )
                {
                pushFollow(FOLLOW_reference_in_assignExp417);
                reference40=reference();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) stream_reference.add(reference40.tree);
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:79:3: ( '=' exp -> ^( '=' exp reference ) | '*=' exp -> ^( '*=' exp reference ) | '/=' exp -> ^( '/=' exp reference ) | '%=' exp -> ^( '%=' exp reference ) | '+=' exp -> ^( '+=' exp reference ) | '-=' exp -> ^( '-=' exp reference ) | '<<=' exp -> ^( '<<=' exp reference ) | '>>=' exp -> ^( '>>=' exp reference ) | '>>>=' exp -> ^( '>>>=' exp reference ) | '&=' exp -> ^( '&=' exp reference ) | '^=' exp -> ^( '^=' exp reference ) | '|=' exp -> ^( '|=' exp reference ) )
                var alt7:int=12;
                switch ( input.LA(1) ) {
                case 34:
                    {
                    alt7=1;
                    }
                    break;
                case 35:
                    {
                    alt7=2;
                    }
                    break;
                case 36:
                    {
                    alt7=3;
                    }
                    break;
                case 37:
                    {
                    alt7=4;
                    }
                    break;
                case 38:
                    {
                    alt7=5;
                    }
                    break;
                case 39:
                    {
                    alt7=6;
                    }
                    break;
                case 40:
                    {
                    alt7=7;
                    }
                    break;
                case 41:
                    {
                    alt7=8;
                    }
                    break;
                case 42:
                    {
                    alt7=9;
                    }
                    break;
                case 43:
                    {
                    alt7=10;
                    }
                    break;
                case 44:
                    {
                    alt7=11;
                    }
                    break;
                case 45:
                    {
                    alt7=12;
                    }
                    break;
                default:
                    if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                    throw new NoViableAltException("", 7, 0, input);

                }

                switch (alt7) {
                    case 1 :
                        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:80:4: '=' exp
                        {
                        char_literal41=Token(matchStream(input,34,FOLLOW_34_in_assignExp426)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_34.add(char_literal41);

                        pushFollow(FOLLOW_exp_in_assignExp428);
                        exp42=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp42.tree);


                        // AST REWRITE
                        // elements: reference, exp, 34
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 80:15: -> ^( '=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:80:18: ^( '=' exp reference )
                            {
                            var root_1:CommonTree = CommonTree(adaptor.nil());
                            root_1 = CommonTree(adaptor.becomeRoot(stream_34.nextNode(), root_1));

                            adaptor.addChild(root_1, stream_exp.nextTree());
                            adaptor.addChild(root_1, stream_reference.nextTree());

                            adaptor.addChild(root_0, root_1);
                            }

                        }

                        retval.tree = root_0;}
                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:81:5: '*=' exp
                        {
                        string_literal43=Token(matchStream(input,35,FOLLOW_35_in_assignExp447)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_35.add(string_literal43);

                        pushFollow(FOLLOW_exp_in_assignExp449);
                        exp44=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp44.tree);


                        // AST REWRITE
                        // elements: 35, exp, reference
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 81:16: -> ^( '*=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:81:19: ^( '*=' exp reference )
                            {
                            var root_1:CommonTree = CommonTree(adaptor.nil());
                            root_1 = CommonTree(adaptor.becomeRoot(stream_35.nextNode(), root_1));

                            adaptor.addChild(root_1, stream_exp.nextTree());
                            adaptor.addChild(root_1, stream_reference.nextTree());

                            adaptor.addChild(root_0, root_1);
                            }

                        }

                        retval.tree = root_0;}
                        }
                        break;
                    case 3 :
                        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:82:5: '/=' exp
                        {
                        string_literal45=Token(matchStream(input,36,FOLLOW_36_in_assignExp467)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_36.add(string_literal45);

                        pushFollow(FOLLOW_exp_in_assignExp469);
                        exp46=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp46.tree);


                        // AST REWRITE
                        // elements: reference, exp, 36
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 82:16: -> ^( '/=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:82:19: ^( '/=' exp reference )
                            {
                            var root_1:CommonTree = CommonTree(adaptor.nil());
                            root_1 = CommonTree(adaptor.becomeRoot(stream_36.nextNode(), root_1));

                            adaptor.addChild(root_1, stream_exp.nextTree());
                            adaptor.addChild(root_1, stream_reference.nextTree());

                            adaptor.addChild(root_0, root_1);
                            }

                        }

                        retval.tree = root_0;}
                        }
                        break;
                    case 4 :
                        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:83:5: '%=' exp
                        {
                        string_literal47=Token(matchStream(input,37,FOLLOW_37_in_assignExp487)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_37.add(string_literal47);

                        pushFollow(FOLLOW_exp_in_assignExp489);
                        exp48=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp48.tree);


                        // AST REWRITE
                        // elements: 37, exp, reference
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 83:16: -> ^( '%=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:83:19: ^( '%=' exp reference )
                            {
                            var root_1:CommonTree = CommonTree(adaptor.nil());
                            root_1 = CommonTree(adaptor.becomeRoot(stream_37.nextNode(), root_1));

                            adaptor.addChild(root_1, stream_exp.nextTree());
                            adaptor.addChild(root_1, stream_reference.nextTree());

                            adaptor.addChild(root_0, root_1);
                            }

                        }

                        retval.tree = root_0;}
                        }
                        break;
                    case 5 :
                        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:84:5: '+=' exp
                        {
                        string_literal49=Token(matchStream(input,38,FOLLOW_38_in_assignExp507)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_38.add(string_literal49);

                        pushFollow(FOLLOW_exp_in_assignExp509);
                        exp50=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp50.tree);


                        // AST REWRITE
                        // elements: exp, reference, 38
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 84:16: -> ^( '+=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:84:19: ^( '+=' exp reference )
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
                    case 6 :
                        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:85:5: '-=' exp
                        {
                        string_literal51=Token(matchStream(input,39,FOLLOW_39_in_assignExp527)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_39.add(string_literal51);

                        pushFollow(FOLLOW_exp_in_assignExp529);
                        exp52=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp52.tree);


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
                        // 85:16: -> ^( '-=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:85:19: ^( '-=' exp reference )
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
                    case 7 :
                        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:86:5: '<<=' exp
                        {
                        string_literal53=Token(matchStream(input,40,FOLLOW_40_in_assignExp547)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_40.add(string_literal53);

                        pushFollow(FOLLOW_exp_in_assignExp549);
                        exp54=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp54.tree);


                        // AST REWRITE
                        // elements: exp, reference, 40
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 86:17: -> ^( '<<=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:86:20: ^( '<<=' exp reference )
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
                    case 8 :
                        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:87:5: '>>=' exp
                        {
                        string_literal55=Token(matchStream(input,41,FOLLOW_41_in_assignExp567)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_41.add(string_literal55);

                        pushFollow(FOLLOW_exp_in_assignExp569);
                        exp56=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp56.tree);


                        // AST REWRITE
                        // elements: exp, reference, 41
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 87:17: -> ^( '>>=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:87:20: ^( '>>=' exp reference )
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
                    case 9 :
                        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:88:5: '>>>=' exp
                        {
                        string_literal57=Token(matchStream(input,42,FOLLOW_42_in_assignExp587)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_42.add(string_literal57);

                        pushFollow(FOLLOW_exp_in_assignExp589);
                        exp58=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp58.tree);


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
                        // 88:18: -> ^( '>>>=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:88:21: ^( '>>>=' exp reference )
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
                    case 10 :
                        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:89:5: '&=' exp
                        {
                        string_literal59=Token(matchStream(input,43,FOLLOW_43_in_assignExp607)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_43.add(string_literal59);

                        pushFollow(FOLLOW_exp_in_assignExp609);
                        exp60=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp60.tree);


                        // AST REWRITE
                        // elements: reference, 43, exp
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 89:16: -> ^( '&=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:89:19: ^( '&=' exp reference )
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
                    case 11 :
                        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:90:5: '^=' exp
                        {
                        string_literal61=Token(matchStream(input,44,FOLLOW_44_in_assignExp627)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_44.add(string_literal61);

                        pushFollow(FOLLOW_exp_in_assignExp629);
                        exp62=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp62.tree);


                        // AST REWRITE
                        // elements: reference, exp, 44
                        // token labels: 
                        // rule labels: retval
                        // token list labels: 
                        // rule list labels: 
                        if ( this.state.backtracking==0 ) {
                        retval.tree = root_0;
                        var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                        root_0 = CommonTree(adaptor.nil());
                        // 90:16: -> ^( '^=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:90:19: ^( '^=' exp reference )
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
                    case 12 :
                        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:91:5: '|=' exp
                        {
                        string_literal63=Token(matchStream(input,45,FOLLOW_45_in_assignExp647)); if (this.state.failed) return retval; 
                        if ( this.state.backtracking==0 ) stream_45.add(string_literal63);

                        pushFollow(FOLLOW_exp_in_assignExp649);
                        exp64=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_exp.add(exp64.tree);


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
                        // 91:16: -> ^( '|=' exp reference )
                        {
                            // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:91:19: ^( '|=' exp reference )
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
                if ( this.state.backtracking>0 ) { memoize(input, 9, assignExp_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end assignExp

        // $ANTLR start condExp
        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:95:1: condExp : (l= logicalOr -> $l) ( '?' e1= exp ':' e2= exp -> ^( CondExp $condExp $e1 $e2) )* ;
        public final function condExp():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var condExp_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal65:Token=null;
            var char_literal66:Token=null;
            var l:ParserRuleReturnScope = null;

            var e1:ParserRuleReturnScope = null;

            var e2:ParserRuleReturnScope = null;


            var char_literal65_tree:CommonTree=null;
            var char_literal66_tree:CommonTree=null;
            var stream_47:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 47");
            var stream_46:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 46");
            var stream_exp:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule exp");
            var stream_logicalOr:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule logicalOr");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 10) ) { return retval; }
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:96:2: ( (l= logicalOr -> $l) ( '?' e1= exp ':' e2= exp -> ^( CondExp $condExp $e1 $e2) )* )
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:96:4: (l= logicalOr -> $l) ( '?' e1= exp ':' e2= exp -> ^( CondExp $condExp $e1 $e2) )*
                {
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:96:4: (l= logicalOr -> $l)
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:96:5: l= logicalOr
                {
                pushFollow(FOLLOW_logicalOr_in_condExp680);
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
                // 96:20: -> $l
                {
                    adaptor.addChild(root_0, stream_l.nextTree());

                }

                retval.tree = root_0;}
                }

                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:97:3: ( '?' e1= exp ':' e2= exp -> ^( CondExp $condExp $e1 $e2) )*
                loop8:
                do {
                    var alt8:int=2;
                    var LA8_0:int = input.LA(1);

                    if ( (LA8_0==46) ) {
                        var LA8_2:int = input.LA(2);

                        if ( (synpred21_Expression()) ) {
                            alt8=1;
                        }


                    }


                    switch (alt8) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:98:4: '?' e1= exp ':' e2= exp
                	    {
                	    char_literal65=Token(matchStream(input,46,FOLLOW_46_in_condExp698)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_46.add(char_literal65);

                	    pushFollow(FOLLOW_exp_in_condExp705);
                	    e1=exp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) stream_exp.add(e1.tree);
                	    char_literal66=Token(matchStream(input,47,FOLLOW_47_in_condExp710)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_47.add(char_literal66);

                	    pushFollow(FOLLOW_exp_in_condExp717);
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
                	    // 101:14: -> ^( CondExp $condExp $e1 $e2)
                	    {
                	        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:101:17: ^( CondExp $condExp $e1 $e2)
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
                	    break loop8;
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
                if ( this.state.backtracking>0 ) { memoize(input, 10, condExp_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end condExp

        // $ANTLR start logicalOr
        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:105:1: logicalOr : logicalAnd ( '||' logicalAnd )* ;
        public final function logicalOr():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var logicalOr_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var string_literal68:Token=null;
            var logicalAnd67:ParserRuleReturnScope = null;

            var logicalAnd69:ParserRuleReturnScope = null;


            var string_literal68_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 11) ) { return retval; }
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:106:2: ( logicalAnd ( '||' logicalAnd )* )
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:106:4: logicalAnd ( '||' logicalAnd )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_logicalAnd_in_logicalOr751);
                logicalAnd67=logicalAnd();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, logicalAnd67.tree);
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:107:3: ( '||' logicalAnd )*
                loop9:
                do {
                    var alt9:int=2;
                    var LA9_0:int = input.LA(1);

                    if ( (LA9_0==48) ) {
                        alt9=1;
                    }


                    switch (alt9) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:108:4: '||' logicalAnd
                	    {
                	    string_literal68=Token(matchStream(input,48,FOLLOW_48_in_logicalOr760)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal68_tree = CommonTree(adaptor.create(string_literal68));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal68_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_logicalAnd_in_logicalOr763);
                	    logicalAnd69=logicalAnd();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, logicalAnd69.tree);

                	    }
                	    break;

                	default :
                	    break loop9;
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
                if ( this.state.backtracking>0 ) { memoize(input, 11, logicalOr_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end logicalOr

        // $ANTLR start logicalAnd
        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:112:1: logicalAnd : bitwiseOr ( '&&' bitwiseOr )* ;
        public final function logicalAnd():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var logicalAnd_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var string_literal71:Token=null;
            var bitwiseOr70:ParserRuleReturnScope = null;

            var bitwiseOr72:ParserRuleReturnScope = null;


            var string_literal71_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 12) ) { return retval; }
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:113:2: ( bitwiseOr ( '&&' bitwiseOr )* )
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:113:4: bitwiseOr ( '&&' bitwiseOr )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_bitwiseOr_in_logicalAnd780);
                bitwiseOr70=bitwiseOr();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, bitwiseOr70.tree);
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:114:3: ( '&&' bitwiseOr )*
                loop10:
                do {
                    var alt10:int=2;
                    var LA10_0:int = input.LA(1);

                    if ( (LA10_0==49) ) {
                        alt10=1;
                    }


                    switch (alt10) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:115:4: '&&' bitwiseOr
                	    {
                	    string_literal71=Token(matchStream(input,49,FOLLOW_49_in_logicalAnd789)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal71_tree = CommonTree(adaptor.create(string_literal71));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal71_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_bitwiseOr_in_logicalAnd792);
                	    bitwiseOr72=bitwiseOr();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, bitwiseOr72.tree);

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
                if ( this.state.backtracking>0 ) { memoize(input, 12, logicalAnd_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end logicalAnd

        // $ANTLR start bitwiseOr
        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:119:1: bitwiseOr : bitwiseXor ( '|' bitwiseXor )* ;
        public final function bitwiseOr():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var bitwiseOr_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal74:Token=null;
            var bitwiseXor73:ParserRuleReturnScope = null;

            var bitwiseXor75:ParserRuleReturnScope = null;


            var char_literal74_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 13) ) { return retval; }
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:120:2: ( bitwiseXor ( '|' bitwiseXor )* )
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:120:4: bitwiseXor ( '|' bitwiseXor )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_bitwiseXor_in_bitwiseOr808);
                bitwiseXor73=bitwiseXor();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, bitwiseXor73.tree);
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:121:3: ( '|' bitwiseXor )*
                loop11:
                do {
                    var alt11:int=2;
                    var LA11_0:int = input.LA(1);

                    if ( (LA11_0==50) ) {
                        alt11=1;
                    }


                    switch (alt11) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:122:4: '|' bitwiseXor
                	    {
                	    char_literal74=Token(matchStream(input,50,FOLLOW_50_in_bitwiseOr817)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    char_literal74_tree = CommonTree(adaptor.create(char_literal74));
                	    root_0 = CommonTree(adaptor.becomeRoot(char_literal74_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_bitwiseXor_in_bitwiseOr820);
                	    bitwiseXor75=bitwiseXor();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, bitwiseXor75.tree);

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
                if ( this.state.backtracking>0 ) { memoize(input, 13, bitwiseOr_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end bitwiseOr

        // $ANTLR start bitwiseXor
        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:126:1: bitwiseXor : bitwiseAnd ( '^' bitwiseAnd )? ;
        public final function bitwiseXor():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var bitwiseXor_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal77:Token=null;
            var bitwiseAnd76:ParserRuleReturnScope = null;

            var bitwiseAnd78:ParserRuleReturnScope = null;


            var char_literal77_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 14) ) { return retval; }
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:127:2: ( bitwiseAnd ( '^' bitwiseAnd )? )
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:127:4: bitwiseAnd ( '^' bitwiseAnd )?
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_bitwiseAnd_in_bitwiseXor836);
                bitwiseAnd76=bitwiseAnd();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, bitwiseAnd76.tree);
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:128:3: ( '^' bitwiseAnd )?
                var alt12:int=2;
                var LA12_0:int = input.LA(1);

                if ( (LA12_0==51) ) {
                    alt12=1;
                }
                switch (alt12) {
                    case 1 :
                        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:129:4: '^' bitwiseAnd
                        {
                        char_literal77=Token(matchStream(input,51,FOLLOW_51_in_bitwiseXor845)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        char_literal77_tree = CommonTree(adaptor.create(char_literal77));
                        root_0 = CommonTree(adaptor.becomeRoot(char_literal77_tree, root_0));
                        }
                        pushFollow(FOLLOW_bitwiseAnd_in_bitwiseXor848);
                        bitwiseAnd78=bitwiseAnd();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, bitwiseAnd78.tree);

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
                if ( this.state.backtracking>0 ) { memoize(input, 14, bitwiseXor_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end bitwiseXor

        // $ANTLR start bitwiseAnd
        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:133:1: bitwiseAnd : equalExp ( '&' equalExp )* ;
        public final function bitwiseAnd():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var bitwiseAnd_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal80:Token=null;
            var equalExp79:ParserRuleReturnScope = null;

            var equalExp81:ParserRuleReturnScope = null;


            var char_literal80_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 15) ) { return retval; }
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:134:2: ( equalExp ( '&' equalExp )* )
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:134:4: equalExp ( '&' equalExp )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_equalExp_in_bitwiseAnd864);
                equalExp79=equalExp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, equalExp79.tree);
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:135:3: ( '&' equalExp )*
                loop13:
                do {
                    var alt13:int=2;
                    var LA13_0:int = input.LA(1);

                    if ( (LA13_0==52) ) {
                        alt13=1;
                    }


                    switch (alt13) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:136:4: '&' equalExp
                	    {
                	    char_literal80=Token(matchStream(input,52,FOLLOW_52_in_bitwiseAnd873)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    char_literal80_tree = CommonTree(adaptor.create(char_literal80));
                	    root_0 = CommonTree(adaptor.becomeRoot(char_literal80_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_equalExp_in_bitwiseAnd876);
                	    equalExp81=equalExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, equalExp81.tree);

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
                if ( this.state.backtracking>0 ) { memoize(input, 15, bitwiseAnd_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end bitwiseAnd

        // $ANTLR start equalExp
        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:140:1: equalExp : relExp ( '==' relExp | '!=' relExp | '===' relExp | '!==' relExp )* ;
        public final function equalExp():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var equalExp_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var string_literal83:Token=null;
            var string_literal85:Token=null;
            var string_literal87:Token=null;
            var string_literal89:Token=null;
            var relExp82:ParserRuleReturnScope = null;

            var relExp84:ParserRuleReturnScope = null;

            var relExp86:ParserRuleReturnScope = null;

            var relExp88:ParserRuleReturnScope = null;

            var relExp90:ParserRuleReturnScope = null;


            var string_literal83_tree:CommonTree=null;
            var string_literal85_tree:CommonTree=null;
            var string_literal87_tree:CommonTree=null;
            var string_literal89_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 16) ) { return retval; }
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:141:2: ( relExp ( '==' relExp | '!=' relExp | '===' relExp | '!==' relExp )* )
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:141:4: relExp ( '==' relExp | '!=' relExp | '===' relExp | '!==' relExp )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_relExp_in_equalExp892);
                relExp82=relExp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, relExp82.tree);
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:142:3: ( '==' relExp | '!=' relExp | '===' relExp | '!==' relExp )*
                loop14:
                do {
                    var alt14:int=5;
                    switch ( input.LA(1) ) {
                    case 53:
                        {
                        alt14=1;
                        }
                        break;
                    case 54:
                        {
                        alt14=2;
                        }
                        break;
                    case 55:
                        {
                        alt14=3;
                        }
                        break;
                    case 56:
                        {
                        alt14=4;
                        }
                        break;

                    }

                    switch (alt14) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:143:4: '==' relExp
                	    {
                	    string_literal83=Token(matchStream(input,53,FOLLOW_53_in_equalExp901)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal83_tree = CommonTree(adaptor.create(string_literal83));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal83_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_relExp_in_equalExp904);
                	    relExp84=relExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, relExp84.tree);

                	    }
                	    break;
                	case 2 :
                	    // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:144:5: '!=' relExp
                	    {
                	    string_literal85=Token(matchStream(input,54,FOLLOW_54_in_equalExp910)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal85_tree = CommonTree(adaptor.create(string_literal85));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal85_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_relExp_in_equalExp913);
                	    relExp86=relExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, relExp86.tree);

                	    }
                	    break;
                	case 3 :
                	    // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:145:5: '===' relExp
                	    {
                	    string_literal87=Token(matchStream(input,55,FOLLOW_55_in_equalExp919)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal87_tree = CommonTree(adaptor.create(string_literal87));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal87_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_relExp_in_equalExp922);
                	    relExp88=relExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, relExp88.tree);

                	    }
                	    break;
                	case 4 :
                	    // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:146:5: '!==' relExp
                	    {
                	    string_literal89=Token(matchStream(input,56,FOLLOW_56_in_equalExp928)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal89_tree = CommonTree(adaptor.create(string_literal89));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal89_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_relExp_in_equalExp931);
                	    relExp90=relExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, relExp90.tree);

                	    }
                	    break;

                	default :
                	    break loop14;
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
                if ( this.state.backtracking>0 ) { memoize(input, 16, equalExp_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end equalExp

        // $ANTLR start relExp
        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:150:1: relExp : shiftExp ( '<' shiftExp | '>' shiftExp | '<=' shiftExp | '>=' shiftExp )* ;
        public final function relExp():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var relExp_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal92:Token=null;
            var char_literal94:Token=null;
            var string_literal96:Token=null;
            var string_literal98:Token=null;
            var shiftExp91:ParserRuleReturnScope = null;

            var shiftExp93:ParserRuleReturnScope = null;

            var shiftExp95:ParserRuleReturnScope = null;

            var shiftExp97:ParserRuleReturnScope = null;

            var shiftExp99:ParserRuleReturnScope = null;


            var char_literal92_tree:CommonTree=null;
            var char_literal94_tree:CommonTree=null;
            var string_literal96_tree:CommonTree=null;
            var string_literal98_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 17) ) { return retval; }
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:151:2: ( shiftExp ( '<' shiftExp | '>' shiftExp | '<=' shiftExp | '>=' shiftExp )* )
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:151:4: shiftExp ( '<' shiftExp | '>' shiftExp | '<=' shiftExp | '>=' shiftExp )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_shiftExp_in_relExp948);
                shiftExp91=shiftExp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, shiftExp91.tree);
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:152:3: ( '<' shiftExp | '>' shiftExp | '<=' shiftExp | '>=' shiftExp )*
                loop15:
                do {
                    var alt15:int=5;
                    switch ( input.LA(1) ) {
                    case 57:
                        {
                        alt15=1;
                        }
                        break;
                    case 58:
                        {
                        alt15=2;
                        }
                        break;
                    case 59:
                        {
                        alt15=3;
                        }
                        break;
                    case 60:
                        {
                        alt15=4;
                        }
                        break;

                    }

                    switch (alt15) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:153:4: '<' shiftExp
                	    {
                	    char_literal92=Token(matchStream(input,57,FOLLOW_57_in_relExp957)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    char_literal92_tree = CommonTree(adaptor.create(char_literal92));
                	    root_0 = CommonTree(adaptor.becomeRoot(char_literal92_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_shiftExp_in_relExp960);
                	    shiftExp93=shiftExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, shiftExp93.tree);

                	    }
                	    break;
                	case 2 :
                	    // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:154:5: '>' shiftExp
                	    {
                	    char_literal94=Token(matchStream(input,58,FOLLOW_58_in_relExp966)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    char_literal94_tree = CommonTree(adaptor.create(char_literal94));
                	    root_0 = CommonTree(adaptor.becomeRoot(char_literal94_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_shiftExp_in_relExp969);
                	    shiftExp95=shiftExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, shiftExp95.tree);

                	    }
                	    break;
                	case 3 :
                	    // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:155:5: '<=' shiftExp
                	    {
                	    string_literal96=Token(matchStream(input,59,FOLLOW_59_in_relExp975)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal96_tree = CommonTree(adaptor.create(string_literal96));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal96_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_shiftExp_in_relExp978);
                	    shiftExp97=shiftExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, shiftExp97.tree);

                	    }
                	    break;
                	case 4 :
                	    // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:156:5: '>=' shiftExp
                	    {
                	    string_literal98=Token(matchStream(input,60,FOLLOW_60_in_relExp984)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal98_tree = CommonTree(adaptor.create(string_literal98));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal98_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_shiftExp_in_relExp987);
                	    shiftExp99=shiftExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, shiftExp99.tree);

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
                if ( this.state.backtracking>0 ) { memoize(input, 17, relExp_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end relExp

        // $ANTLR start shiftExp
        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:160:1: shiftExp : addExp ( '<<' addExp | '>>' addExp | '>>>' addExp )* ;
        public final function shiftExp():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var shiftExp_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var string_literal101:Token=null;
            var string_literal103:Token=null;
            var string_literal105:Token=null;
            var addExp100:ParserRuleReturnScope = null;

            var addExp102:ParserRuleReturnScope = null;

            var addExp104:ParserRuleReturnScope = null;

            var addExp106:ParserRuleReturnScope = null;


            var string_literal101_tree:CommonTree=null;
            var string_literal103_tree:CommonTree=null;
            var string_literal105_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 18) ) { return retval; }
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:161:2: ( addExp ( '<<' addExp | '>>' addExp | '>>>' addExp )* )
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:161:4: addExp ( '<<' addExp | '>>' addExp | '>>>' addExp )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_addExp_in_shiftExp1003);
                addExp100=addExp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, addExp100.tree);
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:162:3: ( '<<' addExp | '>>' addExp | '>>>' addExp )*
                loop16:
                do {
                    var alt16:int=4;
                    switch ( input.LA(1) ) {
                    case 61:
                        {
                        alt16=1;
                        }
                        break;
                    case 62:
                        {
                        alt16=2;
                        }
                        break;
                    case 63:
                        {
                        alt16=3;
                        }
                        break;

                    }

                    switch (alt16) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:163:4: '<<' addExp
                	    {
                	    string_literal101=Token(matchStream(input,61,FOLLOW_61_in_shiftExp1012)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal101_tree = CommonTree(adaptor.create(string_literal101));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal101_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_addExp_in_shiftExp1015);
                	    addExp102=addExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, addExp102.tree);

                	    }
                	    break;
                	case 2 :
                	    // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:164:5: '>>' addExp
                	    {
                	    string_literal103=Token(matchStream(input,62,FOLLOW_62_in_shiftExp1021)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal103_tree = CommonTree(adaptor.create(string_literal103));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal103_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_addExp_in_shiftExp1024);
                	    addExp104=addExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, addExp104.tree);

                	    }
                	    break;
                	case 3 :
                	    // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:165:5: '>>>' addExp
                	    {
                	    string_literal105=Token(matchStream(input,63,FOLLOW_63_in_shiftExp1030)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    string_literal105_tree = CommonTree(adaptor.create(string_literal105));
                	    root_0 = CommonTree(adaptor.becomeRoot(string_literal105_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_addExp_in_shiftExp1033);
                	    addExp106=addExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, addExp106.tree);

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
                if ( this.state.backtracking>0 ) { memoize(input, 18, shiftExp_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end shiftExp

        // $ANTLR start addExp
        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:169:1: addExp : multExp ( '+' multExp | '-' multExp )* ;
        public final function addExp():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var addExp_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal108:Token=null;
            var char_literal110:Token=null;
            var multExp107:ParserRuleReturnScope = null;

            var multExp109:ParserRuleReturnScope = null;

            var multExp111:ParserRuleReturnScope = null;


            var char_literal108_tree:CommonTree=null;
            var char_literal110_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 19) ) { return retval; }
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:170:2: ( multExp ( '+' multExp | '-' multExp )* )
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:170:4: multExp ( '+' multExp | '-' multExp )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_multExp_in_addExp1049);
                multExp107=multExp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, multExp107.tree);
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:171:3: ( '+' multExp | '-' multExp )*
                loop17:
                do {
                    var alt17:int=3;
                    alt17 = dfa17.predict(input);
                    switch (alt17) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:172:4: '+' multExp
                	    {
                	    char_literal108=Token(matchStream(input,64,FOLLOW_64_in_addExp1058)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    char_literal108_tree = CommonTree(adaptor.create(char_literal108));
                	    root_0 = CommonTree(adaptor.becomeRoot(char_literal108_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_multExp_in_addExp1061);
                	    multExp109=multExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, multExp109.tree);

                	    }
                	    break;
                	case 2 :
                	    // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:173:5: '-' multExp
                	    {
                	    char_literal110=Token(matchStream(input,65,FOLLOW_65_in_addExp1067)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    char_literal110_tree = CommonTree(adaptor.create(char_literal110));
                	    root_0 = CommonTree(adaptor.becomeRoot(char_literal110_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_multExp_in_addExp1070);
                	    multExp111=multExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, multExp111.tree);

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
                if ( this.state.backtracking>0 ) { memoize(input, 19, addExp_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end addExp

        // $ANTLR start multExp
        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:177:1: multExp : unaryExp ( '*' unaryExp | '/' unaryExp | '%' unaryExp )* ;
        public final function multExp():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var multExp_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal113:Token=null;
            var char_literal115:Token=null;
            var char_literal117:Token=null;
            var unaryExp112:ParserRuleReturnScope = null;

            var unaryExp114:ParserRuleReturnScope = null;

            var unaryExp116:ParserRuleReturnScope = null;

            var unaryExp118:ParserRuleReturnScope = null;


            var char_literal113_tree:CommonTree=null;
            var char_literal115_tree:CommonTree=null;
            var char_literal117_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 20) ) { return retval; }
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:178:2: ( unaryExp ( '*' unaryExp | '/' unaryExp | '%' unaryExp )* )
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:178:5: unaryExp ( '*' unaryExp | '/' unaryExp | '%' unaryExp )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_unaryExp_in_multExp1088);
                unaryExp112=unaryExp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, unaryExp112.tree);
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:179:3: ( '*' unaryExp | '/' unaryExp | '%' unaryExp )*
                loop18:
                do {
                    var alt18:int=4;
                    switch ( input.LA(1) ) {
                    case 66:
                        {
                        alt18=1;
                        }
                        break;
                    case 67:
                        {
                        alt18=2;
                        }
                        break;
                    case 68:
                        {
                        alt18=3;
                        }
                        break;

                    }

                    switch (alt18) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:180:4: '*' unaryExp
                	    {
                	    char_literal113=Token(matchStream(input,66,FOLLOW_66_in_multExp1097)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    char_literal113_tree = CommonTree(adaptor.create(char_literal113));
                	    root_0 = CommonTree(adaptor.becomeRoot(char_literal113_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_unaryExp_in_multExp1100);
                	    unaryExp114=unaryExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, unaryExp114.tree);

                	    }
                	    break;
                	case 2 :
                	    // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:181:5: '/' unaryExp
                	    {
                	    char_literal115=Token(matchStream(input,67,FOLLOW_67_in_multExp1106)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    char_literal115_tree = CommonTree(adaptor.create(char_literal115));
                	    root_0 = CommonTree(adaptor.becomeRoot(char_literal115_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_unaryExp_in_multExp1109);
                	    unaryExp116=unaryExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, unaryExp116.tree);

                	    }
                	    break;
                	case 3 :
                	    // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:182:5: '%' unaryExp
                	    {
                	    char_literal117=Token(matchStream(input,68,FOLLOW_68_in_multExp1115)); if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) {
                	    char_literal117_tree = CommonTree(adaptor.create(char_literal117));
                	    root_0 = CommonTree(adaptor.becomeRoot(char_literal117_tree, root_0));
                	    }
                	    pushFollow(FOLLOW_unaryExp_in_multExp1118);
                	    unaryExp118=unaryExp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, unaryExp118.tree);

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
                if ( this.state.backtracking>0 ) { memoize(input, 20, multExp_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end multExp

        // $ANTLR start unaryExp
        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:186:1: unaryExp : ( '+' atom | '-' atom | '~' atom | '!' atom | atom );
        public final function unaryExp():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var unaryExp_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal119:Token=null;
            var char_literal121:Token=null;
            var char_literal123:Token=null;
            var char_literal125:Token=null;
            var atom120:ParserRuleReturnScope = null;

            var atom122:ParserRuleReturnScope = null;

            var atom124:ParserRuleReturnScope = null;

            var atom126:ParserRuleReturnScope = null;

            var atom127:ParserRuleReturnScope = null;


            var char_literal119_tree:CommonTree=null;
            var char_literal121_tree:CommonTree=null;
            var char_literal123_tree:CommonTree=null;
            var char_literal125_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 21) ) { return retval; }
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:187:2: ( '+' atom | '-' atom | '~' atom | '!' atom | atom )
                var alt19:int=5;
                switch ( input.LA(1) ) {
                case 64:
                    {
                    alt19=1;
                    }
                    break;
                case 65:
                    {
                    alt19=2;
                    }
                    break;
                case 69:
                    {
                    alt19=3;
                    }
                    break;
                case 70:
                    {
                    alt19=4;
                    }
                    break;
                case NumberLiteral:
                case StringLiteral:
                case Identifier:
                case 27:
                case 71:
                case 72:
                case 73:
                    {
                    alt19=5;
                    }
                    break;
                default:
                    if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                    throw new NoViableAltException("", 19, 0, input);

                }

                switch (alt19) {
                    case 1 :
                        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:187:4: '+' atom
                        {
                        root_0 = CommonTree(adaptor.nil());

                        char_literal119=Token(matchStream(input,64,FOLLOW_64_in_unaryExp1137)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        char_literal119_tree = CommonTree(adaptor.create(char_literal119));
                        root_0 = CommonTree(adaptor.becomeRoot(char_literal119_tree, root_0));
                        }
                        pushFollow(FOLLOW_atom_in_unaryExp1140);
                        atom120=atom();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, atom120.tree);

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:188:4: '-' atom
                        {
                        root_0 = CommonTree(adaptor.nil());

                        char_literal121=Token(matchStream(input,65,FOLLOW_65_in_unaryExp1145)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        char_literal121_tree = CommonTree(adaptor.create(char_literal121));
                        root_0 = CommonTree(adaptor.becomeRoot(char_literal121_tree, root_0));
                        }
                        pushFollow(FOLLOW_atom_in_unaryExp1148);
                        atom122=atom();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, atom122.tree);

                        }
                        break;
                    case 3 :
                        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:189:4: '~' atom
                        {
                        root_0 = CommonTree(adaptor.nil());

                        char_literal123=Token(matchStream(input,69,FOLLOW_69_in_unaryExp1153)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        char_literal123_tree = CommonTree(adaptor.create(char_literal123));
                        root_0 = CommonTree(adaptor.becomeRoot(char_literal123_tree, root_0));
                        }
                        pushFollow(FOLLOW_atom_in_unaryExp1156);
                        atom124=atom();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, atom124.tree);

                        }
                        break;
                    case 4 :
                        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:190:4: '!' atom
                        {
                        root_0 = CommonTree(adaptor.nil());

                        char_literal125=Token(matchStream(input,70,FOLLOW_70_in_unaryExp1161)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        char_literal125_tree = CommonTree(adaptor.create(char_literal125));
                        root_0 = CommonTree(adaptor.becomeRoot(char_literal125_tree, root_0));
                        }
                        pushFollow(FOLLOW_atom_in_unaryExp1164);
                        atom126=atom();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, atom126.tree);

                        }
                        break;
                    case 5 :
                        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:191:5: atom
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_atom_in_unaryExp1170);
                        atom127=atom();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, atom127.tree);

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
                if ( this.state.backtracking>0 ) { memoize(input, 21, unaryExp_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end unaryExp

        // $ANTLR start atom
        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:194:1: atom : ( NumberLiteral | StringLiteral | 'true' | 'false' | referenceOrFuncCall | '(' exp ')' );
        public final function atom():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var atom_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var NumberLiteral128:Token=null;
            var StringLiteral129:Token=null;
            var string_literal130:Token=null;
            var string_literal131:Token=null;
            var char_literal133:Token=null;
            var char_literal135:Token=null;
            var referenceOrFuncCall132:ParserRuleReturnScope = null;

            var exp134:ParserRuleReturnScope = null;


            var NumberLiteral128_tree:CommonTree=null;
            var StringLiteral129_tree:CommonTree=null;
            var string_literal130_tree:CommonTree=null;
            var string_literal131_tree:CommonTree=null;
            var char_literal133_tree:CommonTree=null;
            var char_literal135_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 22) ) { return retval; }
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:195:2: ( NumberLiteral | StringLiteral | 'true' | 'false' | referenceOrFuncCall | '(' exp ')' )
                var alt20:int=6;
                switch ( input.LA(1) ) {
                case NumberLiteral:
                    {
                    alt20=1;
                    }
                    break;
                case StringLiteral:
                    {
                    alt20=2;
                    }
                    break;
                case 71:
                    {
                    alt20=3;
                    }
                    break;
                case 72:
                    {
                    alt20=4;
                    }
                    break;
                case Identifier:
                case 73:
                    {
                    alt20=5;
                    }
                    break;
                case 27:
                    {
                    alt20=6;
                    }
                    break;
                default:
                    if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                    throw new NoViableAltException("", 20, 0, input);

                }

                switch (alt20) {
                    case 1 :
                        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:195:4: NumberLiteral
                        {
                        root_0 = CommonTree(adaptor.nil());

                        NumberLiteral128=Token(matchStream(input,NumberLiteral,FOLLOW_NumberLiteral_in_atom1182)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        NumberLiteral128_tree = CommonTree(adaptor.create(NumberLiteral128));
                        adaptor.addChild(root_0, NumberLiteral128_tree);
                        }

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:196:4: StringLiteral
                        {
                        root_0 = CommonTree(adaptor.nil());

                        StringLiteral129=Token(matchStream(input,StringLiteral,FOLLOW_StringLiteral_in_atom1187)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        StringLiteral129_tree = CommonTree(adaptor.create(StringLiteral129));
                        adaptor.addChild(root_0, StringLiteral129_tree);
                        }

                        }
                        break;
                    case 3 :
                        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:197:4: 'true'
                        {
                        root_0 = CommonTree(adaptor.nil());

                        string_literal130=Token(matchStream(input,71,FOLLOW_71_in_atom1192)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        string_literal130_tree = CommonTree(adaptor.create(string_literal130));
                        adaptor.addChild(root_0, string_literal130_tree);
                        }

                        }
                        break;
                    case 4 :
                        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:198:4: 'false'
                        {
                        root_0 = CommonTree(adaptor.nil());

                        string_literal131=Token(matchStream(input,72,FOLLOW_72_in_atom1197)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        string_literal131_tree = CommonTree(adaptor.create(string_literal131));
                        adaptor.addChild(root_0, string_literal131_tree);
                        }

                        }
                        break;
                    case 5 :
                        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:199:4: referenceOrFuncCall
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_referenceOrFuncCall_in_atom1202);
                        referenceOrFuncCall132=referenceOrFuncCall();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, referenceOrFuncCall132.tree);

                        }
                        break;
                    case 6 :
                        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:200:4: '(' exp ')'
                        {
                        root_0 = CommonTree(adaptor.nil());

                        char_literal133=Token(matchStream(input,27,FOLLOW_27_in_atom1207)); if (this.state.failed) return retval;
                        pushFollow(FOLLOW_exp_in_atom1210);
                        exp134=exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, exp134.tree);
                        char_literal135=Token(matchStream(input,28,FOLLOW_28_in_atom1212)); if (this.state.failed) return retval;

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
                if ( this.state.backtracking>0 ) { memoize(input, 22, atom_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end atom

        // $ANTLR start reference
        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:203:1: reference : (l= object -> $l) ( '[' e= exp ']' -> ^( PropExp $reference $e) | '.' i= Identifier -> ^( PropRef $reference $i) | '(' (p= params )? ')' '[' e= exp ']' -> ^( PropExp ^( FuncCall $reference $p) $e) | '(' (p= params )? ')' '.' i= Identifier -> ^( PropRef ^( FuncCall $reference $p) $i) )* ;
        public final function reference():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var reference_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var i:Token=null;
            var char_literal136:Token=null;
            var char_literal137:Token=null;
            var char_literal138:Token=null;
            var char_literal139:Token=null;
            var char_literal140:Token=null;
            var char_literal141:Token=null;
            var char_literal142:Token=null;
            var char_literal143:Token=null;
            var char_literal144:Token=null;
            var char_literal145:Token=null;
            var l:ParserRuleReturnScope = null;

            var e:ParserRuleReturnScope = null;

            var p:ParserRuleReturnScope = null;


            var i_tree:CommonTree=null;
            var char_literal136_tree:CommonTree=null;
            var char_literal137_tree:CommonTree=null;
            var char_literal138_tree:CommonTree=null;
            var char_literal139_tree:CommonTree=null;
            var char_literal140_tree:CommonTree=null;
            var char_literal141_tree:CommonTree=null;
            var char_literal142_tree:CommonTree=null;
            var char_literal143_tree:CommonTree=null;
            var char_literal144_tree:CommonTree=null;
            var char_literal145_tree:CommonTree=null;
            var stream_Identifier:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token Identifier");
            var stream_73:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 73");
            var stream_74:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 74");
            var stream_27:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 27");
            var stream_75:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 75");
            var stream_28:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 28");
            var stream_exp:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule exp");
            var stream_object:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule object");
            var stream_params:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule params");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 23) ) { return retval; }
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:204:2: ( (l= object -> $l) ( '[' e= exp ']' -> ^( PropExp $reference $e) | '.' i= Identifier -> ^( PropRef $reference $i) | '(' (p= params )? ')' '[' e= exp ']' -> ^( PropExp ^( FuncCall $reference $p) $e) | '(' (p= params )? ')' '.' i= Identifier -> ^( PropRef ^( FuncCall $reference $p) $i) )* )
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:204:4: (l= object -> $l) ( '[' e= exp ']' -> ^( PropExp $reference $e) | '.' i= Identifier -> ^( PropRef $reference $i) | '(' (p= params )? ')' '[' e= exp ']' -> ^( PropExp ^( FuncCall $reference $p) $e) | '(' (p= params )? ')' '.' i= Identifier -> ^( PropRef ^( FuncCall $reference $p) $i) )*
                {
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:204:4: (l= object -> $l)
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:204:5: l= object
                {
                pushFollow(FOLLOW_object_in_reference1227);
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
                // 204:18: -> $l
                {
                    adaptor.addChild(root_0, stream_l.nextTree());

                }

                retval.tree = root_0;}
                }

                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:205:3: ( '[' e= exp ']' -> ^( PropExp $reference $e) | '.' i= Identifier -> ^( PropRef $reference $i) | '(' (p= params )? ')' '[' e= exp ']' -> ^( PropExp ^( FuncCall $reference $p) $e) | '(' (p= params )? ')' '.' i= Identifier -> ^( PropRef ^( FuncCall $reference $p) $i) )*
                loop23:
                do {
                    var alt23:int=5;
                    alt23 = dfa23.predict(input);
                    switch (alt23) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:206:4: '[' e= exp ']'
                	    {
                	    char_literal136=Token(matchStream(input,73,FOLLOW_73_in_reference1246)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_73.add(char_literal136);

                	    pushFollow(FOLLOW_exp_in_reference1250);
                	    e=exp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) stream_exp.add(e.tree);
                	    char_literal137=Token(matchStream(input,74,FOLLOW_74_in_reference1252)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_74.add(char_literal137);



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
                	    // 206:20: -> ^( PropExp $reference $e)
                	    {
                	        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:206:23: ^( PropExp $reference $e)
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
                	    // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:208:5: '.' i= Identifier
                	    {
                	    char_literal138=Token(matchStream(input,75,FOLLOW_75_in_reference1276)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_75.add(char_literal138);

                	    i=Token(matchStream(input,Identifier,FOLLOW_Identifier_in_reference1280)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_Identifier.add(i);



                	    // AST REWRITE
                	    // elements: reference, i
                	    // token labels: i
                	    // rule labels: retval
                	    // token list labels: 
                	    // rule list labels: 
                	    if ( this.state.backtracking==0 ) {
                	    retval.tree = root_0;
                	    var stream_i:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token i",i);
                	    var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                	    root_0 = CommonTree(adaptor.nil());
                	    // 208:23: -> ^( PropRef $reference $i)
                	    {
                	        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:208:26: ^( PropRef $reference $i)
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
                	    // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:210:5: '(' (p= params )? ')' '[' e= exp ']'
                	    {
                	    char_literal139=Token(matchStream(input,27,FOLLOW_27_in_reference1302)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_27.add(char_literal139);

                	    // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:210:10: (p= params )?
                	    var alt21:int=2;
                	    var LA21_0:int = input.LA(1);

                	    if ( ((LA21_0>=14 && LA21_0<=16)||LA21_0==27||(LA21_0>=64 && LA21_0<=65)||(LA21_0>=69 && LA21_0<=73)) ) {
                	        alt21=1;
                	    }
                	    switch (alt21) {
                	        case 1 :
                	            // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:0:0: p= params
                	            {
                	            pushFollow(FOLLOW_params_in_reference1306);
                	            p=params();

                	            state._fsp = state._fsp - 1;
                	            if (this.state.failed) return retval;
                	            if ( this.state.backtracking==0 ) stream_params.add(p.tree);

                	            }
                	            break;

                	    }

                	    char_literal140=Token(matchStream(input,28,FOLLOW_28_in_reference1309)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_28.add(char_literal140);

                	    char_literal141=Token(matchStream(input,73,FOLLOW_73_in_reference1314)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_73.add(char_literal141);

                	    pushFollow(FOLLOW_exp_in_reference1318);
                	    e=exp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) stream_exp.add(e.tree);
                	    char_literal142=Token(matchStream(input,74,FOLLOW_74_in_reference1320)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_74.add(char_literal142);



                	    // AST REWRITE
                	    // elements: p, e, reference
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
                	    // 211:20: -> ^( PropExp ^( FuncCall $reference $p) $e)
                	    {
                	        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:211:23: ^( PropExp ^( FuncCall $reference $p) $e)
                	        {
                	        var root_1:CommonTree = CommonTree(adaptor.nil());
                	        root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(PropExp, "PropExp")), root_1));

                	        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:211:33: ^( FuncCall $reference $p)
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
                	    // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:213:5: '(' (p= params )? ')' '.' i= Identifier
                	    {
                	    char_literal143=Token(matchStream(input,27,FOLLOW_27_in_reference1351)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_27.add(char_literal143);

                	    // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:213:10: (p= params )?
                	    var alt22:int=2;
                	    var LA22_0:int = input.LA(1);

                	    if ( ((LA22_0>=14 && LA22_0<=16)||LA22_0==27||(LA22_0>=64 && LA22_0<=65)||(LA22_0>=69 && LA22_0<=73)) ) {
                	        alt22=1;
                	    }
                	    switch (alt22) {
                	        case 1 :
                	            // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:0:0: p= params
                	            {
                	            pushFollow(FOLLOW_params_in_reference1355);
                	            p=params();

                	            state._fsp = state._fsp - 1;
                	            if (this.state.failed) return retval;
                	            if ( this.state.backtracking==0 ) stream_params.add(p.tree);

                	            }
                	            break;

                	    }

                	    char_literal144=Token(matchStream(input,28,FOLLOW_28_in_reference1358)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_28.add(char_literal144);

                	    char_literal145=Token(matchStream(input,75,FOLLOW_75_in_reference1363)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_75.add(char_literal145);

                	    i=Token(matchStream(input,Identifier,FOLLOW_Identifier_in_reference1367)); if (this.state.failed) return retval; 
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
                	    // 214:22: -> ^( PropRef ^( FuncCall $reference $p) $i)
                	    {
                	        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:214:25: ^( PropRef ^( FuncCall $reference $p) $i)
                	        {
                	        var root_1:CommonTree = CommonTree(adaptor.nil());
                	        root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(PropRef, "PropRef")), root_1));

                	        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:214:35: ^( FuncCall $reference $p)
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
                	    break loop23;
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
                if ( this.state.backtracking>0 ) { memoize(input, 23, reference_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end reference

        // $ANTLR start referenceOrFuncCall
        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:218:1: referenceOrFuncCall : (l= object -> $l) ( '[' e= exp ']' -> ^( PropExp $referenceOrFuncCall $e) | '.' i= Identifier -> ^( PropRef $referenceOrFuncCall $i) | '(' p= params ')' -> ^( FuncCall $referenceOrFuncCall $p) | '(' ')' -> ^( FuncCall $referenceOrFuncCall) )* ;
        public final function referenceOrFuncCall():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var referenceOrFuncCall_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var i:Token=null;
            var char_literal146:Token=null;
            var char_literal147:Token=null;
            var char_literal148:Token=null;
            var char_literal149:Token=null;
            var char_literal150:Token=null;
            var char_literal151:Token=null;
            var char_literal152:Token=null;
            var l:ParserRuleReturnScope = null;

            var e:ParserRuleReturnScope = null;

            var p:ParserRuleReturnScope = null;


            var i_tree:CommonTree=null;
            var char_literal146_tree:CommonTree=null;
            var char_literal147_tree:CommonTree=null;
            var char_literal148_tree:CommonTree=null;
            var char_literal149_tree:CommonTree=null;
            var char_literal150_tree:CommonTree=null;
            var char_literal151_tree:CommonTree=null;
            var char_literal152_tree:CommonTree=null;
            var stream_Identifier:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token Identifier");
            var stream_73:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 73");
            var stream_74:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 74");
            var stream_27:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 27");
            var stream_75:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 75");
            var stream_28:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 28");
            var stream_exp:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule exp");
            var stream_object:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule object");
            var stream_params:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule params");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 24) ) { return retval; }
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:219:2: ( (l= object -> $l) ( '[' e= exp ']' -> ^( PropExp $referenceOrFuncCall $e) | '.' i= Identifier -> ^( PropRef $referenceOrFuncCall $i) | '(' p= params ')' -> ^( FuncCall $referenceOrFuncCall $p) | '(' ')' -> ^( FuncCall $referenceOrFuncCall) )* )
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:219:4: (l= object -> $l) ( '[' e= exp ']' -> ^( PropExp $referenceOrFuncCall $e) | '.' i= Identifier -> ^( PropRef $referenceOrFuncCall $i) | '(' p= params ')' -> ^( FuncCall $referenceOrFuncCall $p) | '(' ')' -> ^( FuncCall $referenceOrFuncCall) )*
                {
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:219:4: (l= object -> $l)
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:219:5: l= object
                {
                pushFollow(FOLLOW_object_in_referenceOrFuncCall1407);
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
                // 219:18: -> $l
                {
                    adaptor.addChild(root_0, stream_l.nextTree());

                }

                retval.tree = root_0;}
                }

                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:220:3: ( '[' e= exp ']' -> ^( PropExp $referenceOrFuncCall $e) | '.' i= Identifier -> ^( PropRef $referenceOrFuncCall $i) | '(' p= params ')' -> ^( FuncCall $referenceOrFuncCall $p) | '(' ')' -> ^( FuncCall $referenceOrFuncCall) )*
                loop24:
                do {
                    var alt24:int=5;
                    alt24 = dfa24.predict(input);
                    switch (alt24) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:221:4: '[' e= exp ']'
                	    {
                	    char_literal146=Token(matchStream(input,73,FOLLOW_73_in_referenceOrFuncCall1426)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_73.add(char_literal146);

                	    pushFollow(FOLLOW_exp_in_referenceOrFuncCall1430);
                	    e=exp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) stream_exp.add(e.tree);
                	    char_literal147=Token(matchStream(input,74,FOLLOW_74_in_referenceOrFuncCall1432)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_74.add(char_literal147);



                	    // AST REWRITE
                	    // elements: referenceOrFuncCall, e
                	    // token labels: 
                	    // rule labels: retval, e
                	    // token list labels: 
                	    // rule list labels: 
                	    if ( this.state.backtracking==0 ) {
                	    retval.tree = root_0;
                	    var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);
                	    var stream_e:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule e",e!=null?e.tree:null);

                	    root_0 = CommonTree(adaptor.nil());
                	    // 221:20: -> ^( PropExp $referenceOrFuncCall $e)
                	    {
                	        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:221:23: ^( PropExp $referenceOrFuncCall $e)
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
                	    // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:222:5: '.' i= Identifier
                	    {
                	    char_literal148=Token(matchStream(input,75,FOLLOW_75_in_referenceOrFuncCall1452)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_75.add(char_literal148);

                	    i=Token(matchStream(input,Identifier,FOLLOW_Identifier_in_referenceOrFuncCall1456)); if (this.state.failed) return retval; 
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
                	    // 222:23: -> ^( PropRef $referenceOrFuncCall $i)
                	    {
                	        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:222:26: ^( PropRef $referenceOrFuncCall $i)
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
                	    // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:223:5: '(' p= params ')'
                	    {
                	    char_literal149=Token(matchStream(input,27,FOLLOW_27_in_referenceOrFuncCall1475)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_27.add(char_literal149);

                	    pushFollow(FOLLOW_params_in_referenceOrFuncCall1479);
                	    p=params();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) stream_params.add(p.tree);
                	    char_literal150=Token(matchStream(input,28,FOLLOW_28_in_referenceOrFuncCall1481)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_28.add(char_literal150);



                	    // AST REWRITE
                	    // elements: p, referenceOrFuncCall
                	    // token labels: 
                	    // rule labels: retval, p
                	    // token list labels: 
                	    // rule list labels: 
                	    if ( this.state.backtracking==0 ) {
                	    retval.tree = root_0;
                	    var stream_retval:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);
                	    var stream_p:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule p",p!=null?p.tree:null);

                	    root_0 = CommonTree(adaptor.nil());
                	    // 223:23: -> ^( FuncCall $referenceOrFuncCall $p)
                	    {
                	        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:223:26: ^( FuncCall $referenceOrFuncCall $p)
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
                	    // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:224:5: '(' ')'
                	    {
                	    char_literal151=Token(matchStream(input,27,FOLLOW_27_in_referenceOrFuncCall1500)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_27.add(char_literal151);

                	    char_literal152=Token(matchStream(input,28,FOLLOW_28_in_referenceOrFuncCall1502)); if (this.state.failed) return retval; 
                	    if ( this.state.backtracking==0 ) stream_28.add(char_literal152);



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
                	    // 224:16: -> ^( FuncCall $referenceOrFuncCall)
                	    {
                	        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:224:19: ^( FuncCall $referenceOrFuncCall)
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
                	    break loop24;
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
                if ( this.state.backtracking>0 ) { memoize(input, 24, referenceOrFuncCall_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end referenceOrFuncCall

        // $ANTLR start object
        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:228:1: object : ( Identifier | array );
        public final function object():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var object_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var Identifier153:Token=null;
            var array154:ParserRuleReturnScope = null;


            var Identifier153_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 25) ) { return retval; }
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:229:2: ( Identifier | array )
                var alt25:int=2;
                var LA25_0:int = input.LA(1);

                if ( (LA25_0==16) ) {
                    alt25=1;
                }
                else if ( (LA25_0==73) ) {
                    alt25=2;
                }
                else {
                    if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                    throw new NoViableAltException("", 25, 0, input);

                }
                switch (alt25) {
                    case 1 :
                        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:229:4: Identifier
                        {
                        root_0 = CommonTree(adaptor.nil());

                        Identifier153=Token(matchStream(input,Identifier,FOLLOW_Identifier_in_object1531)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                        Identifier153_tree = CommonTree(adaptor.create(Identifier153));
                        adaptor.addChild(root_0, Identifier153_tree);
                        }

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:230:4: array
                        {
                        root_0 = CommonTree(adaptor.nil());

                        pushFollow(FOLLOW_array_in_object1536);
                        array154=array();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) adaptor.addChild(root_0, array154.tree);

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
                if ( this.state.backtracking>0 ) { memoize(input, 25, object_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end object

        // $ANTLR start params
        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:233:1: params : exp ( ',' exp )* ;
        public final function params():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var params_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal156:Token=null;
            var exp155:ParserRuleReturnScope = null;

            var exp157:ParserRuleReturnScope = null;


            var char_literal156_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 26) ) { return retval; }
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:234:2: ( exp ( ',' exp )* )
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:234:4: exp ( ',' exp )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_exp_in_params1548);
                exp155=exp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, exp155.tree);
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:235:3: ( ',' exp )*
                loop26:
                do {
                    var alt26:int=2;
                    var LA26_0:int = input.LA(1);

                    if ( (LA26_0==76) ) {
                        alt26=1;
                    }


                    switch (alt26) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:236:4: ',' exp
                	    {
                	    char_literal156=Token(matchStream(input,76,FOLLOW_76_in_params1557)); if (this.state.failed) return retval;
                	    pushFollow(FOLLOW_exp_in_params1563);
                	    exp157=exp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, exp157.tree);

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
                if ( this.state.backtracking>0 ) { memoize(input, 26, params_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end params

        // $ANTLR start array
        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:241:1: array : '[' (i= items )? ']' -> ^( CreateArray $i) ;
        public final function array():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var array_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal158:Token=null;
            var char_literal159:Token=null;
            var i:ParserRuleReturnScope = null;


            var char_literal158_tree:CommonTree=null;
            var char_literal159_tree:CommonTree=null;
            var stream_73:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 73");
            var stream_74:RewriteRuleTokenStream=new RewriteRuleTokenStream(adaptor,"token 74");
            var stream_items:RewriteRuleSubtreeStream=new RewriteRuleSubtreeStream(adaptor,"rule items");
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 27) ) { return retval; }
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:242:2: ( '[' (i= items )? ']' -> ^( CreateArray $i) )
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:242:4: '[' (i= items )? ']'
                {
                char_literal158=Token(matchStream(input,73,FOLLOW_73_in_array1580)); if (this.state.failed) return retval; 
                if ( this.state.backtracking==0 ) stream_73.add(char_literal158);

                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:242:9: (i= items )?
                var alt27:int=2;
                var LA27_0:int = input.LA(1);

                if ( ((LA27_0>=14 && LA27_0<=16)||LA27_0==27||(LA27_0>=64 && LA27_0<=65)||(LA27_0>=69 && LA27_0<=73)) ) {
                    alt27=1;
                }
                switch (alt27) {
                    case 1 :
                        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:0:0: i= items
                        {
                        pushFollow(FOLLOW_items_in_array1584);
                        i=items();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) stream_items.add(i.tree);

                        }
                        break;

                }

                char_literal159=Token(matchStream(input,74,FOLLOW_74_in_array1587)); if (this.state.failed) return retval; 
                if ( this.state.backtracking==0 ) stream_74.add(char_literal159);



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
                // 242:23: -> ^( CreateArray $i)
                {
                    // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:242:26: ^( CreateArray $i)
                    {
                    var root_1:CommonTree = CommonTree(adaptor.nil());
                    root_1 = CommonTree(adaptor.becomeRoot(CommonTree(adaptor.create(CreateArray, "CreateArray")), root_1));

                    adaptor.addChild(root_1, stream_i.nextTree());

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
                if ( this.state.backtracking>0 ) { memoize(input, 27, array_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end array

        // $ANTLR start items
        // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:245:1: items : exp ( ',' exp )* ;
        public final function items():ParserRuleReturnScope {
            var retval:ParserRuleReturnScope = new ParserRuleReturnScope();
            retval.start = input.LT(1);
            var items_StartIndex:int = input.index;
            var root_0:CommonTree = null;

            var char_literal161:Token=null;
            var exp160:ParserRuleReturnScope = null;

            var exp162:ParserRuleReturnScope = null;


            var char_literal161_tree:CommonTree=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 28) ) { return retval; }
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:246:2: ( exp ( ',' exp )* )
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:246:4: exp ( ',' exp )*
                {
                root_0 = CommonTree(adaptor.nil());

                pushFollow(FOLLOW_exp_in_items1610);
                exp160=exp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) adaptor.addChild(root_0, exp160.tree);
                // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:247:3: ( ',' exp )*
                loop28:
                do {
                    var alt28:int=2;
                    var LA28_0:int = input.LA(1);

                    if ( (LA28_0==76) ) {
                        alt28=1;
                    }


                    switch (alt28) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:248:4: ',' exp
                	    {
                	    char_literal161=Token(matchStream(input,76,FOLLOW_76_in_items1619)); if (this.state.failed) return retval;
                	    pushFollow(FOLLOW_exp_in_items1625);
                	    exp162=exp();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return retval;
                	    if ( this.state.backtracking==0 ) adaptor.addChild(root_0, exp162.tree);

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
                if ( this.state.backtracking>0 ) { memoize(input, 28, items_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end items

        // $ANTLR start synpred5_Expression
        public final function synpred5_Expression_fragment():void {
            var l:ParserRuleReturnScope = null;

            var r:ParserRuleReturnScope = null;


            // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:51:4: ( 'if' '(' exp ')' l= block 'else' r= block )
            // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:51:4: 'if' '(' exp ')' l= block 'else' r= block
            {
            matchStream(input,26,FOLLOW_26_in_synpred5_Expression201); if (this.state.failed) return ;
            matchStream(input,27,FOLLOW_27_in_synpred5_Expression203); if (this.state.failed) return ;
            pushFollow(FOLLOW_exp_in_synpred5_Expression205);
            exp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            matchStream(input,28,FOLLOW_28_in_synpred5_Expression207); if (this.state.failed) return ;
            pushFollow(FOLLOW_block_in_synpred5_Expression211);
            l=block();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            matchStream(input,29,FOLLOW_29_in_synpred5_Expression213); if (this.state.failed) return ;
            pushFollow(FOLLOW_block_in_synpred5_Expression217);
            r=block();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred5_Expression

        // $ANTLR start synpred6_Expression
        public final function synpred6_Expression_fragment():void {
            // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:52:4: ( 'if' '(' exp ')' block 'else' ifStmt )
            // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:52:4: 'if' '(' exp ')' block 'else' ifStmt
            {
            matchStream(input,26,FOLLOW_26_in_synpred6_Expression236); if (this.state.failed) return ;
            matchStream(input,27,FOLLOW_27_in_synpred6_Expression238); if (this.state.failed) return ;
            pushFollow(FOLLOW_exp_in_synpred6_Expression240);
            exp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            matchStream(input,28,FOLLOW_28_in_synpred6_Expression242); if (this.state.failed) return ;
            pushFollow(FOLLOW_block_in_synpred6_Expression244);
            block();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            matchStream(input,29,FOLLOW_29_in_synpred6_Expression246); if (this.state.failed) return ;
            pushFollow(FOLLOW_ifStmt_in_synpred6_Expression248);
            ifStmt();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred6_Expression

        // $ANTLR start synpred7_Expression
        public final function synpred7_Expression_fragment():void {
            // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:67:4: ( ';' exp )
            // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:67:4: ';' exp
            {
            matchStream(input,33,FOLLOW_33_in_synpred7_Expression360); if (this.state.failed) return ;
            pushFollow(FOLLOW_exp_in_synpred7_Expression362);
            exp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred7_Expression

        // $ANTLR start synpred8_Expression
        public final function synpred8_Expression_fragment():void {
            // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:68:5: ( ';' )
            // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:68:5: ';'
            {
            matchStream(input,33,FOLLOW_33_in_synpred8_Expression368); if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred8_Expression

        // $ANTLR start synpred9_Expression
        public final function synpred9_Expression_fragment():void {
            // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:73:4: ( assignExp )
            // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:73:4: assignExp
            {
            pushFollow(FOLLOW_assignExp_in_synpred9_Expression398);
            assignExp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred9_Expression

        // $ANTLR start synpred21_Expression
        public final function synpred21_Expression_fragment():void {
            var e1:ParserRuleReturnScope = null;

            var e2:ParserRuleReturnScope = null;


            // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:98:4: ( '?' e1= exp ':' e2= exp )
            // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:98:4: '?' e1= exp ':' e2= exp
            {
            matchStream(input,46,FOLLOW_46_in_synpred21_Expression698); if (this.state.failed) return ;
            pushFollow(FOLLOW_exp_in_synpred21_Expression705);
            e1=exp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            matchStream(input,47,FOLLOW_47_in_synpred21_Expression710); if (this.state.failed) return ;
            pushFollow(FOLLOW_exp_in_synpred21_Expression717);
            e2=exp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred21_Expression

        // $ANTLR start synpred38_Expression
        public final function synpred38_Expression_fragment():void {
            // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:172:4: ( '+' multExp )
            // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:172:4: '+' multExp
            {
            matchStream(input,64,FOLLOW_64_in_synpred38_Expression1058); if (this.state.failed) return ;
            pushFollow(FOLLOW_multExp_in_synpred38_Expression1061);
            multExp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred38_Expression

        // $ANTLR start synpred39_Expression
        public final function synpred39_Expression_fragment():void {
            // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:173:5: ( '-' multExp )
            // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:173:5: '-' multExp
            {
            matchStream(input,65,FOLLOW_65_in_synpred39_Expression1067); if (this.state.failed) return ;
            pushFollow(FOLLOW_multExp_in_synpred39_Expression1070);
            multExp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred39_Expression

        // $ANTLR start synpred55_Expression
        public final function synpred55_Expression_fragment():void {
            var p:ParserRuleReturnScope = null;

            var e:ParserRuleReturnScope = null;


            // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:210:5: ( '(' (p= params )? ')' '[' e= exp ']' )
            // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:210:5: '(' (p= params )? ')' '[' e= exp ']'
            {
            matchStream(input,27,FOLLOW_27_in_synpred55_Expression1302); if (this.state.failed) return ;
            // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:210:10: (p= params )?
            var alt29:int=2;
            var LA29_0:int = input.LA(1);

            if ( ((LA29_0>=14 && LA29_0<=16)||LA29_0==27||(LA29_0>=64 && LA29_0<=65)||(LA29_0>=69 && LA29_0<=73)) ) {
                alt29=1;
            }
            switch (alt29) {
                case 1 :
                    // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:0:0: p= params
                    {
                    pushFollow(FOLLOW_params_in_synpred55_Expression1306);
                    p=params();

                    state._fsp = state._fsp - 1;
                    if (this.state.failed) return ;

                    }
                    break;

            }

            matchStream(input,28,FOLLOW_28_in_synpred55_Expression1309); if (this.state.failed) return ;
            matchStream(input,73,FOLLOW_73_in_synpred55_Expression1314); if (this.state.failed) return ;
            pushFollow(FOLLOW_exp_in_synpred55_Expression1318);
            e=exp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            matchStream(input,74,FOLLOW_74_in_synpred55_Expression1320); if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred55_Expression

        // $ANTLR start synpred57_Expression
        public final function synpred57_Expression_fragment():void {
            var i:Token=null;
            var p:ParserRuleReturnScope = null;


            // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:213:5: ( '(' (p= params )? ')' '.' i= Identifier )
            // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:213:5: '(' (p= params )? ')' '.' i= Identifier
            {
            matchStream(input,27,FOLLOW_27_in_synpred57_Expression1351); if (this.state.failed) return ;
            // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:213:10: (p= params )?
            var alt30:int=2;
            var LA30_0:int = input.LA(1);

            if ( ((LA30_0>=14 && LA30_0<=16)||LA30_0==27||(LA30_0>=64 && LA30_0<=65)||(LA30_0>=69 && LA30_0<=73)) ) {
                alt30=1;
            }
            switch (alt30) {
                case 1 :
                    // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:0:0: p= params
                    {
                    pushFollow(FOLLOW_params_in_synpred57_Expression1355);
                    p=params();

                    state._fsp = state._fsp - 1;
                    if (this.state.failed) return ;

                    }
                    break;

            }

            matchStream(input,28,FOLLOW_28_in_synpred57_Expression1358); if (this.state.failed) return ;
            matchStream(input,75,FOLLOW_75_in_synpred57_Expression1363); if (this.state.failed) return ;
            i=Token(matchStream(input,Identifier,FOLLOW_Identifier_in_synpred57_Expression1367)); if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred57_Expression

        // $ANTLR start synpred58_Expression
        public final function synpred58_Expression_fragment():void {
            var e:ParserRuleReturnScope = null;


            // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:221:4: ( '[' e= exp ']' )
            // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:221:4: '[' e= exp ']'
            {
            matchStream(input,73,FOLLOW_73_in_synpred58_Expression1426); if (this.state.failed) return ;
            pushFollow(FOLLOW_exp_in_synpred58_Expression1430);
            e=exp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            matchStream(input,74,FOLLOW_74_in_synpred58_Expression1432); if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred58_Expression

        // $ANTLR start synpred60_Expression
        public final function synpred60_Expression_fragment():void {
            var p:ParserRuleReturnScope = null;


            // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:223:5: ( '(' p= params ')' )
            // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:223:5: '(' p= params ')'
            {
            matchStream(input,27,FOLLOW_27_in_synpred60_Expression1475); if (this.state.failed) return ;
            pushFollow(FOLLOW_params_in_synpred60_Expression1479);
            p=params();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            matchStream(input,28,FOLLOW_28_in_synpred60_Expression1481); if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred60_Expression

        // $ANTLR start synpred61_Expression
        public final function synpred61_Expression_fragment():void {
            // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:224:5: ( '(' ')' )
            // C:\\Users\\Stephan\\Documents\\Work\\Clients\\esoteric\\esoteric\\trunk\\scripts\\antlr\\Expression.g:224:5: '(' ')'
            {
            matchStream(input,27,FOLLOW_27_in_synpred61_Expression1500); if (this.state.failed) return ;
            matchStream(input,28,FOLLOW_28_in_synpred61_Expression1502); if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred61_Expression


           // Delegated rules

        public final function synpred61_Expression():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred61_Expression_fragment(); // can never throw exception
            } catch (re:RecognitionException) {
                trace("impossible: "+re);
            }
            var success:Boolean = !this.state.failed;
            input.rewindTo(start);
            this.state.backtracking--;
            this.state.failed=false;
            return success;
        }
        public final function synpred9_Expression():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred9_Expression_fragment(); // can never throw exception
            } catch (re:RecognitionException) {
                trace("impossible: "+re);
            }
            var success:Boolean = !this.state.failed;
            input.rewindTo(start);
            this.state.backtracking--;
            this.state.failed=false;
            return success;
        }
        public final function synpred39_Expression():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred39_Expression_fragment(); // can never throw exception
            } catch (re:RecognitionException) {
                trace("impossible: "+re);
            }
            var success:Boolean = !this.state.failed;
            input.rewindTo(start);
            this.state.backtracking--;
            this.state.failed=false;
            return success;
        }
        public final function synpred38_Expression():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred38_Expression_fragment(); // can never throw exception
            } catch (re:RecognitionException) {
                trace("impossible: "+re);
            }
            var success:Boolean = !this.state.failed;
            input.rewindTo(start);
            this.state.backtracking--;
            this.state.failed=false;
            return success;
        }
        public final function synpred60_Expression():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred60_Expression_fragment(); // can never throw exception
            } catch (re:RecognitionException) {
                trace("impossible: "+re);
            }
            var success:Boolean = !this.state.failed;
            input.rewindTo(start);
            this.state.backtracking--;
            this.state.failed=false;
            return success;
        }
        public final function synpred21_Expression():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred21_Expression_fragment(); // can never throw exception
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
        public final function synpred57_Expression():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred57_Expression_fragment(); // can never throw exception
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
        public final function synpred55_Expression():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred55_Expression_fragment(); // can never throw exception
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
            DFA.unpackEncodedString("\x13\u80ff\xff");
        private const DFA5_eof:Array =
            DFA.unpackEncodedString("\x01\x01\x12\u80ff\xff");
        private const DFA5_min:Array =
            DFA.unpackEncodedString("\x01\x0e\x0f\u80ff\xff\x01\x00\x02"+
            "\u80ff\xff", true);
        private const DFA5_max:Array =
            DFA.unpackEncodedString("\x01\x49\x0f\u80ff\xff\x01\x00\x02"+
            "\u80ff\xff", true);
        private const DFA5_accept:Array =
            DFA.unpackEncodedString("\x01\u80ff\xff\x01\x03\x0f\u80ff\xff"+
            "\x01\x01\x01\x02");
        private const DFA5_special:Array =
            DFA.unpackEncodedString("\x10\u80ff\xff\x01\x00\x02\u80ff\xff");
        private const DFA5_transition:Array = [
                DFA.unpackEncodedString("\x03\x01\x09\u80ff\xff\x02\x01"+
                "\x02\u80ff\xff\x01\x01\x01\u80ff\xff\x01\x01\x01\x10\x1e"+
                "\u80ff\xff\x02\x01\x03\u80ff\xff\x05\x01"),
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
                            var LA5_16:int = input.LA(1);

                             
                            var index5_16:int = input.index;
                            input.rewind();
                            s = -1;
                            if ( (synpred7_Expression()) ) {s = 17;}

                            else if ( (synpred8_Expression()) ) {s = 18;}

                             
                            input.seek(index5_16);
                            if ( s>=0 ) return s;
                            break;
                }
                if (this.state.backtracking>0) {this.state.failed=true; return -1;}
                throw dfa.error(new NoViableAltException(dfa.description, 5, _s, input));
            }

        protected var dfa5:DFA;  // initialized in constructor

        private const DFA6_eot:Array =
            DFA.unpackEncodedString("\x0d\u80ff\xff");
        private const DFA6_eof:Array =
            DFA.unpackEncodedString("\x0d\u80ff\xff");
        private const DFA6_min:Array =
            DFA.unpackEncodedString("\x01\x0e\x02\x00\x0a\u80ff\xff", true);
        private const DFA6_max:Array =
            DFA.unpackEncodedString("\x01\x49\x02\x00\x0a\u80ff\xff", true);
        private const DFA6_accept:Array =
            DFA.unpackEncodedString("\x03\u80ff\xff\x01\x02\x08\u80ff\xff"+
            "\x01\x01");
        private const DFA6_special:Array =
            DFA.unpackEncodedString("\x01\u80ff\xff\x01\x00\x01\x01\x0a"+
            "\u80ff\xff");
        private const DFA6_transition:Array = [
                DFA.unpackEncodedString("\x02\x03\x01\x01\x0a\u80ff\xff"+
                "\x01\x03\x24\u80ff\xff\x02\x03\x03\u80ff\xff\x04\x03\x01"+
                "\x02"),
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
                DFA.unpackEncodedString("")
        ];
            private function DFA6_specialStateTransition(dfa:DFA, s:int, _input:IntStream):int {
                var input:TokenStream = TokenStream(_input);
            	var _s:int = s;
                switch ( s ) {
                        case 0 : 
                            var LA6_1:int = input.LA(1);

                             
                            var index6_1:int = input.index;
                            input.rewind();
                            s = -1;
                            if ( (synpred9_Expression()) ) {s = 12;}

                            else if ( (true) ) {s = 3;}

                             
                            input.seek(index6_1);
                            if ( s>=0 ) return s;
                            break;
                        case 1 : 
                            var LA6_2:int = input.LA(1);

                             
                            var index6_2:int = input.index;
                            input.rewind();
                            s = -1;
                            if ( (synpred9_Expression()) ) {s = 12;}

                            else if ( (true) ) {s = 3;}

                             
                            input.seek(index6_2);
                            if ( s>=0 ) return s;
                            break;
                }
                if (this.state.backtracking>0) {this.state.failed=true; return -1;}
                throw dfa.error(new NoViableAltException(dfa.description, 6, _s, input));
            }

        protected var dfa6:DFA;  // initialized in constructor

        private const DFA17_eot:Array =
            DFA.unpackEncodedString("\x28\u80ff\xff");
        private const DFA17_eof:Array =
            DFA.unpackEncodedString("\x01\x01\x27\u80ff\xff");
        private const DFA17_min:Array =
            DFA.unpackEncodedString("\x01\x0e\x17\u80ff\xff\x02\x00\x0e"+
            "\u80ff\xff", true);
        private const DFA17_max:Array =
            DFA.unpackEncodedString("\x01\x4c\x17\u80ff\xff\x02\x00\x0e"+
            "\u80ff\xff", true);
        private const DFA17_accept:Array =
            DFA.unpackEncodedString("\x01\u80ff\xff\x01\x03\x24\u80ff\xff"+
            "\x01\x01\x01\x02");
        private const DFA17_special:Array =
            DFA.unpackEncodedString("\x18\u80ff\xff\x01\x00\x01\x01\x0e"+
            "\u80ff\xff");
        private const DFA17_transition:Array = [
                DFA.unpackEncodedString("\x03\x01\x09\u80ff\xff\x03\x01"+
                "\x01\u80ff\xff\x01\x01\x01\u80ff\xff\x02\x01\x0c\u80ff\xff"+
                "\x12\x01\x01\x18\x01\x19\x03\u80ff\xff\x06\x01\x01\u80ff\xff"+
                "\x01\x01"),
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
                DFA.unpackEncodedString("")
        ];
            private function DFA17_specialStateTransition(dfa:DFA, s:int, _input:IntStream):int {
                var input:TokenStream = TokenStream(_input);
            	var _s:int = s;
                switch ( s ) {
                        case 0 : 
                            var LA17_24:int = input.LA(1);

                             
                            var index17_24:int = input.index;
                            input.rewind();
                            s = -1;
                            if ( (synpred38_Expression()) ) {s = 38;}

                            else if ( (true) ) {s = 1;}

                             
                            input.seek(index17_24);
                            if ( s>=0 ) return s;
                            break;
                        case 1 : 
                            var LA17_25:int = input.LA(1);

                             
                            var index17_25:int = input.index;
                            input.rewind();
                            s = -1;
                            if ( (synpred39_Expression()) ) {s = 39;}

                            else if ( (true) ) {s = 1;}

                             
                            input.seek(index17_25);
                            if ( s>=0 ) return s;
                            break;
                }
                if (this.state.backtracking>0) {this.state.failed=true; return -1;}
                throw dfa.error(new NoViableAltException(dfa.description, 17, _s, input));
            }

        protected var dfa17:DFA;  // initialized in constructor

        private const DFA23_eot:Array =
            DFA.unpackEncodedString("\x12\u80ff\xff");
        private const DFA23_eof:Array =
            DFA.unpackEncodedString("\x12\u80ff\xff");
        private const DFA23_min:Array =
            DFA.unpackEncodedString("\x01\x1b\x0e\u80ff\xff\x01\x00\x02"+
            "\u80ff\xff", true);
        private const DFA23_max:Array =
            DFA.unpackEncodedString("\x01\x4b\x0e\u80ff\xff\x01\x00\x02"+
            "\u80ff\xff", true);
        private const DFA23_accept:Array =
            DFA.unpackEncodedString("\x01\u80ff\xff\x01\x05\x0b\u80ff\xff"+
            "\x01\x01\x01\x02\x01\u80ff\xff\x01\x03\x01\x04");
        private const DFA23_special:Array =
            DFA.unpackEncodedString("\x0f\u80ff\xff\x01\x00\x02\u80ff\xff");
        private const DFA23_transition:Array = [
                DFA.unpackEncodedString("\x01\x0f\x06\u80ff\xff\x0c\x01"+
                "\x1b\u80ff\xff\x01\x0d\x01\u80ff\xff\x01\x0e"),
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
            private function DFA23_specialStateTransition(dfa:DFA, s:int, _input:IntStream):int {
                var input:TokenStream = TokenStream(_input);
            	var _s:int = s;
                switch ( s ) {
                        case 0 : 
                            var LA23_15:int = input.LA(1);

                             
                            var index23_15:int = input.index;
                            input.rewind();
                            s = -1;
                            if ( (synpred55_Expression()) ) {s = 16;}

                            else if ( (synpred57_Expression()) ) {s = 17;}

                             
                            input.seek(index23_15);
                            if ( s>=0 ) return s;
                            break;
                }
                if (this.state.backtracking>0) {this.state.failed=true; return -1;}
                throw dfa.error(new NoViableAltException(dfa.description, 23, _s, input));
            }

        protected var dfa23:DFA;  // initialized in constructor

        private const DFA24_eot:Array =
            DFA.unpackEncodedString("\x2d\u80ff\xff");
        private const DFA24_eof:Array =
            DFA.unpackEncodedString("\x01\x01\x2c\u80ff\xff");
        private const DFA24_min:Array =
            DFA.unpackEncodedString("\x01\x0e\x1b\u80ff\xff\x01\x00\x06"+
            "\u80ff\xff\x01\x00\x09\u80ff\xff", true);
        private const DFA24_max:Array =
            DFA.unpackEncodedString("\x01\x4c\x1b\u80ff\xff\x01\x00\x06"+
            "\u80ff\xff\x01\x00\x09\u80ff\xff", true);
        private const DFA24_accept:Array =
            DFA.unpackEncodedString("\x01\u80ff\xff\x01\x05\x27\u80ff\xff"+
            "\x01\x02\x01\x01\x01\x03\x01\x04");
        private const DFA24_special:Array =
            DFA.unpackEncodedString("\x1c\u80ff\xff\x01\x00\x06\u80ff\xff"+
            "\x01\x01\x09\u80ff\xff");
        private const DFA24_transition:Array = [
                DFA.unpackEncodedString("\x03\x01\x09\u80ff\xff\x01\x01"+
                "\x01\x23\x01\x01\x01\u80ff\xff\x01\x01\x01\u80ff\xff\x02"+
                "\x01\x0c\u80ff\xff\x1b\x01\x01\x1c\x01\x01\x01\x29\x01\x01"),
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
            private function DFA24_specialStateTransition(dfa:DFA, s:int, _input:IntStream):int {
                var input:TokenStream = TokenStream(_input);
            	var _s:int = s;
                switch ( s ) {
                        case 0 : 
                            var LA24_28:int = input.LA(1);

                             
                            var index24_28:int = input.index;
                            input.rewind();
                            s = -1;
                            if ( (synpred58_Expression()) ) {s = 42;}

                            else if ( (true) ) {s = 1;}

                             
                            input.seek(index24_28);
                            if ( s>=0 ) return s;
                            break;
                        case 1 : 
                            var LA24_35:int = input.LA(1);

                             
                            var index24_35:int = input.index;
                            input.rewind();
                            s = -1;
                            if ( (synpred60_Expression()) ) {s = 43;}

                            else if ( (synpred61_Expression()) ) {s = 44;}

                            else if ( (true) ) {s = 1;}

                             
                            input.seek(index24_35);
                            if ( s>=0 ) return s;
                            break;
                }
                if (this.state.backtracking>0) {this.state.failed=true; return -1;}
                throw dfa.error(new NoViableAltException(dfa.description, 24, _s, input));
            }

        protected var dfa24:DFA;  // initialized in constructor
     

        public static const FOLLOW_stmtList_in_main114:BitSet = new BitSet([0x00000000, 0x00000000]);
        public static const FOLLOW_EOF_in_main117:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_EOF_in_main123:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_stmt_in_stmtList135:BitSet = new BitSet([0x4C01C002, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_stmt_in_stmtList144:BitSet = new BitSet([0x4C01C002, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_ifStmt_in_stmt176:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_whileStmt_in_stmt182:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_expList_in_stmt188:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_26_in_ifStmt201:BitSet = new BitSet([0x08000000, 0x00000000]);
        public static const FOLLOW_27_in_ifStmt203:BitSet = new BitSet([0x4C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_exp_in_ifStmt205:BitSet = new BitSet([0x10000000, 0x00000000]);
        public static const FOLLOW_28_in_ifStmt207:BitSet = new BitSet([0x80000000, 0x00000000]);
        public static const FOLLOW_block_in_ifStmt211:BitSet = new BitSet([0x20000000, 0x00000000]);
        public static const FOLLOW_29_in_ifStmt213:BitSet = new BitSet([0x80000000, 0x00000000]);
        public static const FOLLOW_block_in_ifStmt217:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_26_in_ifStmt236:BitSet = new BitSet([0x08000000, 0x00000000]);
        public static const FOLLOW_27_in_ifStmt238:BitSet = new BitSet([0x4C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_exp_in_ifStmt240:BitSet = new BitSet([0x10000000, 0x00000000]);
        public static const FOLLOW_28_in_ifStmt242:BitSet = new BitSet([0x80000000, 0x00000000]);
        public static const FOLLOW_block_in_ifStmt244:BitSet = new BitSet([0x20000000, 0x00000000]);
        public static const FOLLOW_29_in_ifStmt246:BitSet = new BitSet([0x04000000, 0x00000000]);
        public static const FOLLOW_ifStmt_in_ifStmt248:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_26_in_ifStmt265:BitSet = new BitSet([0x08000000, 0x00000000]);
        public static const FOLLOW_27_in_ifStmt267:BitSet = new BitSet([0x4C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_exp_in_ifStmt269:BitSet = new BitSet([0x10000000, 0x00000000]);
        public static const FOLLOW_28_in_ifStmt271:BitSet = new BitSet([0x80000000, 0x00000000]);
        public static const FOLLOW_block_in_ifStmt273:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_30_in_whileStmt297:BitSet = new BitSet([0x08000000, 0x00000000]);
        public static const FOLLOW_27_in_whileStmt299:BitSet = new BitSet([0x4C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_exp_in_whileStmt301:BitSet = new BitSet([0x10000000, 0x00000000]);
        public static const FOLLOW_28_in_whileStmt303:BitSet = new BitSet([0x80000000, 0x00000000]);
        public static const FOLLOW_block_in_whileStmt305:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_31_in_block328:BitSet = new BitSet([0x4C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_stmtList_in_block330:BitSet = new BitSet([0x00000000, 0x00000001]);
        public static const FOLLOW_32_in_block332:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_exp_in_expList351:BitSet = new BitSet([0x00000002, 0x00000002]);
        public static const FOLLOW_33_in_expList360:BitSet = new BitSet([0x4C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_exp_in_expList362:BitSet = new BitSet([0x00000002, 0x00000002]);
        public static const FOLLOW_33_in_expList368:BitSet = new BitSet([0x00000002, 0x00000002]);
        public static const FOLLOW_assignExp_in_exp398:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_condExp_in_exp404:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_reference_in_assignExp417:BitSet = new BitSet([0x00000000, 0x00003FFC]);
        public static const FOLLOW_34_in_assignExp426:BitSet = new BitSet([0x4C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp428:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_35_in_assignExp447:BitSet = new BitSet([0x4C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp449:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_36_in_assignExp467:BitSet = new BitSet([0x4C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp469:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_37_in_assignExp487:BitSet = new BitSet([0x4C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp489:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_38_in_assignExp507:BitSet = new BitSet([0x4C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp509:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_39_in_assignExp527:BitSet = new BitSet([0x4C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp529:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_40_in_assignExp547:BitSet = new BitSet([0x4C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp549:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_41_in_assignExp567:BitSet = new BitSet([0x4C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp569:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_42_in_assignExp587:BitSet = new BitSet([0x4C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp589:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_43_in_assignExp607:BitSet = new BitSet([0x4C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp609:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_44_in_assignExp627:BitSet = new BitSet([0x4C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp629:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_45_in_assignExp647:BitSet = new BitSet([0x4C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_exp_in_assignExp649:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_logicalOr_in_condExp680:BitSet = new BitSet([0x00000002, 0x00004000]);
        public static const FOLLOW_46_in_condExp698:BitSet = new BitSet([0x4C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_exp_in_condExp705:BitSet = new BitSet([0x00000000, 0x00008000]);
        public static const FOLLOW_47_in_condExp710:BitSet = new BitSet([0x4C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_exp_in_condExp717:BitSet = new BitSet([0x00000002, 0x00004000]);
        public static const FOLLOW_logicalAnd_in_logicalOr751:BitSet = new BitSet([0x00000002, 0x00010000]);
        public static const FOLLOW_48_in_logicalOr760:BitSet = new BitSet([0x4C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_logicalAnd_in_logicalOr763:BitSet = new BitSet([0x00000002, 0x00010000]);
        public static const FOLLOW_bitwiseOr_in_logicalAnd780:BitSet = new BitSet([0x00000002, 0x00020000]);
        public static const FOLLOW_49_in_logicalAnd789:BitSet = new BitSet([0x4C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_bitwiseOr_in_logicalAnd792:BitSet = new BitSet([0x00000002, 0x00020000]);
        public static const FOLLOW_bitwiseXor_in_bitwiseOr808:BitSet = new BitSet([0x00000002, 0x00040000]);
        public static const FOLLOW_50_in_bitwiseOr817:BitSet = new BitSet([0x4C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_bitwiseXor_in_bitwiseOr820:BitSet = new BitSet([0x00000002, 0x00040000]);
        public static const FOLLOW_bitwiseAnd_in_bitwiseXor836:BitSet = new BitSet([0x00000002, 0x00080000]);
        public static const FOLLOW_51_in_bitwiseXor845:BitSet = new BitSet([0x4C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_bitwiseAnd_in_bitwiseXor848:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_equalExp_in_bitwiseAnd864:BitSet = new BitSet([0x00000002, 0x00100000]);
        public static const FOLLOW_52_in_bitwiseAnd873:BitSet = new BitSet([0x4C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_equalExp_in_bitwiseAnd876:BitSet = new BitSet([0x00000002, 0x00100000]);
        public static const FOLLOW_relExp_in_equalExp892:BitSet = new BitSet([0x00000002, 0x01E00000]);
        public static const FOLLOW_53_in_equalExp901:BitSet = new BitSet([0x4C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_relExp_in_equalExp904:BitSet = new BitSet([0x00000002, 0x01E00000]);
        public static const FOLLOW_54_in_equalExp910:BitSet = new BitSet([0x4C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_relExp_in_equalExp913:BitSet = new BitSet([0x00000002, 0x01E00000]);
        public static const FOLLOW_55_in_equalExp919:BitSet = new BitSet([0x4C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_relExp_in_equalExp922:BitSet = new BitSet([0x00000002, 0x01E00000]);
        public static const FOLLOW_56_in_equalExp928:BitSet = new BitSet([0x4C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_relExp_in_equalExp931:BitSet = new BitSet([0x00000002, 0x01E00000]);
        public static const FOLLOW_shiftExp_in_relExp948:BitSet = new BitSet([0x00000002, 0x1E000000]);
        public static const FOLLOW_57_in_relExp957:BitSet = new BitSet([0x4C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_shiftExp_in_relExp960:BitSet = new BitSet([0x00000002, 0x1E000000]);
        public static const FOLLOW_58_in_relExp966:BitSet = new BitSet([0x4C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_shiftExp_in_relExp969:BitSet = new BitSet([0x00000002, 0x1E000000]);
        public static const FOLLOW_59_in_relExp975:BitSet = new BitSet([0x4C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_shiftExp_in_relExp978:BitSet = new BitSet([0x00000002, 0x1E000000]);
        public static const FOLLOW_60_in_relExp984:BitSet = new BitSet([0x4C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_shiftExp_in_relExp987:BitSet = new BitSet([0x00000002, 0x1E000000]);
        public static const FOLLOW_addExp_in_shiftExp1003:BitSet = new BitSet([0x00000002, 0xE0000000]);
        public static const FOLLOW_61_in_shiftExp1012:BitSet = new BitSet([0x4C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_addExp_in_shiftExp1015:BitSet = new BitSet([0x00000002, 0xE0000000]);
        public static const FOLLOW_62_in_shiftExp1021:BitSet = new BitSet([0x4C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_addExp_in_shiftExp1024:BitSet = new BitSet([0x00000002, 0xE0000000]);
        public static const FOLLOW_63_in_shiftExp1030:BitSet = new BitSet([0x4C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_addExp_in_shiftExp1033:BitSet = new BitSet([0x00000002, 0xE0000000]);
        public static const FOLLOW_multExp_in_addExp1049:BitSet = new BitSet([0x00000002, 0x00000000, 0x00000003, 0x00000000]);
        public static const FOLLOW_64_in_addExp1058:BitSet = new BitSet([0x4C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_multExp_in_addExp1061:BitSet = new BitSet([0x00000002, 0x00000000, 0x00000003, 0x00000000]);
        public static const FOLLOW_65_in_addExp1067:BitSet = new BitSet([0x4C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_multExp_in_addExp1070:BitSet = new BitSet([0x00000002, 0x00000000, 0x00000003, 0x00000000]);
        public static const FOLLOW_unaryExp_in_multExp1088:BitSet = new BitSet([0x00000002, 0x00000000, 0x0000001C, 0x00000000]);
        public static const FOLLOW_66_in_multExp1097:BitSet = new BitSet([0x4C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_unaryExp_in_multExp1100:BitSet = new BitSet([0x00000002, 0x00000000, 0x0000001C, 0x00000000]);
        public static const FOLLOW_67_in_multExp1106:BitSet = new BitSet([0x4C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_unaryExp_in_multExp1109:BitSet = new BitSet([0x00000002, 0x00000000, 0x0000001C, 0x00000000]);
        public static const FOLLOW_68_in_multExp1115:BitSet = new BitSet([0x4C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_unaryExp_in_multExp1118:BitSet = new BitSet([0x00000002, 0x00000000, 0x0000001C, 0x00000000]);
        public static const FOLLOW_64_in_unaryExp1137:BitSet = new BitSet([0x4C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_atom_in_unaryExp1140:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_65_in_unaryExp1145:BitSet = new BitSet([0x4C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_atom_in_unaryExp1148:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_69_in_unaryExp1153:BitSet = new BitSet([0x4C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_atom_in_unaryExp1156:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_70_in_unaryExp1161:BitSet = new BitSet([0x4C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_atom_in_unaryExp1164:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_atom_in_unaryExp1170:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_NumberLiteral_in_atom1182:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_StringLiteral_in_atom1187:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_71_in_atom1192:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_72_in_atom1197:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_referenceOrFuncCall_in_atom1202:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_27_in_atom1207:BitSet = new BitSet([0x4C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_exp_in_atom1210:BitSet = new BitSet([0x10000000, 0x00000000]);
        public static const FOLLOW_28_in_atom1212:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_object_in_reference1227:BitSet = new BitSet([0x08000002, 0x00000000, 0x00000A00, 0x00000000]);
        public static const FOLLOW_73_in_reference1246:BitSet = new BitSet([0x4C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_exp_in_reference1250:BitSet = new BitSet([0x00000000, 0x00000000, 0x00000400, 0x00000000]);
        public static const FOLLOW_74_in_reference1252:BitSet = new BitSet([0x08000002, 0x00000000, 0x00000A00, 0x00000000]);
        public static const FOLLOW_75_in_reference1276:BitSet = new BitSet([0x00010000, 0x00000000]);
        public static const FOLLOW_Identifier_in_reference1280:BitSet = new BitSet([0x08000002, 0x00000000, 0x00000A00, 0x00000000]);
        public static const FOLLOW_27_in_reference1302:BitSet = new BitSet([0x5C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_params_in_reference1306:BitSet = new BitSet([0x10000000, 0x00000000]);
        public static const FOLLOW_28_in_reference1309:BitSet = new BitSet([0x00000000, 0x00000000, 0x00000200, 0x00000000]);
        public static const FOLLOW_73_in_reference1314:BitSet = new BitSet([0x4C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_exp_in_reference1318:BitSet = new BitSet([0x00000000, 0x00000000, 0x00000400, 0x00000000]);
        public static const FOLLOW_74_in_reference1320:BitSet = new BitSet([0x08000002, 0x00000000, 0x00000A00, 0x00000000]);
        public static const FOLLOW_27_in_reference1351:BitSet = new BitSet([0x5C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_params_in_reference1355:BitSet = new BitSet([0x10000000, 0x00000000]);
        public static const FOLLOW_28_in_reference1358:BitSet = new BitSet([0x00000000, 0x00000000, 0x00000800, 0x00000000]);
        public static const FOLLOW_75_in_reference1363:BitSet = new BitSet([0x00010000, 0x00000000]);
        public static const FOLLOW_Identifier_in_reference1367:BitSet = new BitSet([0x08000002, 0x00000000, 0x00000A00, 0x00000000]);
        public static const FOLLOW_object_in_referenceOrFuncCall1407:BitSet = new BitSet([0x08000002, 0x00000000, 0x00000A00, 0x00000000]);
        public static const FOLLOW_73_in_referenceOrFuncCall1426:BitSet = new BitSet([0x4C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_exp_in_referenceOrFuncCall1430:BitSet = new BitSet([0x00000000, 0x00000000, 0x00000400, 0x00000000]);
        public static const FOLLOW_74_in_referenceOrFuncCall1432:BitSet = new BitSet([0x08000002, 0x00000000, 0x00000A00, 0x00000000]);
        public static const FOLLOW_75_in_referenceOrFuncCall1452:BitSet = new BitSet([0x00010000, 0x00000000]);
        public static const FOLLOW_Identifier_in_referenceOrFuncCall1456:BitSet = new BitSet([0x08000002, 0x00000000, 0x00000A00, 0x00000000]);
        public static const FOLLOW_27_in_referenceOrFuncCall1475:BitSet = new BitSet([0x4C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_params_in_referenceOrFuncCall1479:BitSet = new BitSet([0x10000000, 0x00000000]);
        public static const FOLLOW_28_in_referenceOrFuncCall1481:BitSet = new BitSet([0x08000002, 0x00000000, 0x00000A00, 0x00000000]);
        public static const FOLLOW_27_in_referenceOrFuncCall1500:BitSet = new BitSet([0x10000000, 0x00000000]);
        public static const FOLLOW_28_in_referenceOrFuncCall1502:BitSet = new BitSet([0x08000002, 0x00000000, 0x00000A00, 0x00000000]);
        public static const FOLLOW_Identifier_in_object1531:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_array_in_object1536:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_exp_in_params1548:BitSet = new BitSet([0x00000002, 0x00000000, 0x00001000, 0x00000000]);
        public static const FOLLOW_76_in_params1557:BitSet = new BitSet([0x4C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_exp_in_params1563:BitSet = new BitSet([0x00000002, 0x00000000, 0x00001000, 0x00000000]);
        public static const FOLLOW_73_in_array1580:BitSet = new BitSet([0x4C01C000, 0x00000000, 0x000007E3, 0x00000000]);
        public static const FOLLOW_items_in_array1584:BitSet = new BitSet([0x00000000, 0x00000000, 0x00000400, 0x00000000]);
        public static const FOLLOW_74_in_array1587:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_exp_in_items1610:BitSet = new BitSet([0x00000002, 0x00000000, 0x00001000, 0x00000000]);
        public static const FOLLOW_76_in_items1619:BitSet = new BitSet([0x4C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_exp_in_items1625:BitSet = new BitSet([0x00000002, 0x00000000, 0x00001000, 0x00000000]);
        public static const FOLLOW_26_in_synpred5_Expression201:BitSet = new BitSet([0x08000000, 0x00000000]);
        public static const FOLLOW_27_in_synpred5_Expression203:BitSet = new BitSet([0x4C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_exp_in_synpred5_Expression205:BitSet = new BitSet([0x10000000, 0x00000000]);
        public static const FOLLOW_28_in_synpred5_Expression207:BitSet = new BitSet([0x80000000, 0x00000000]);
        public static const FOLLOW_block_in_synpred5_Expression211:BitSet = new BitSet([0x20000000, 0x00000000]);
        public static const FOLLOW_29_in_synpred5_Expression213:BitSet = new BitSet([0x80000000, 0x00000000]);
        public static const FOLLOW_block_in_synpred5_Expression217:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_26_in_synpred6_Expression236:BitSet = new BitSet([0x08000000, 0x00000000]);
        public static const FOLLOW_27_in_synpred6_Expression238:BitSet = new BitSet([0x4C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_exp_in_synpred6_Expression240:BitSet = new BitSet([0x10000000, 0x00000000]);
        public static const FOLLOW_28_in_synpred6_Expression242:BitSet = new BitSet([0x80000000, 0x00000000]);
        public static const FOLLOW_block_in_synpred6_Expression244:BitSet = new BitSet([0x20000000, 0x00000000]);
        public static const FOLLOW_29_in_synpred6_Expression246:BitSet = new BitSet([0x04000000, 0x00000000]);
        public static const FOLLOW_ifStmt_in_synpred6_Expression248:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_33_in_synpred7_Expression360:BitSet = new BitSet([0x4C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_exp_in_synpred7_Expression362:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_33_in_synpred8_Expression368:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_assignExp_in_synpred9_Expression398:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_46_in_synpred21_Expression698:BitSet = new BitSet([0x4C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_exp_in_synpred21_Expression705:BitSet = new BitSet([0x00000000, 0x00008000]);
        public static const FOLLOW_47_in_synpred21_Expression710:BitSet = new BitSet([0x4C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_exp_in_synpred21_Expression717:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_64_in_synpred38_Expression1058:BitSet = new BitSet([0x4C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_multExp_in_synpred38_Expression1061:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_65_in_synpred39_Expression1067:BitSet = new BitSet([0x4C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_multExp_in_synpred39_Expression1070:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_27_in_synpred55_Expression1302:BitSet = new BitSet([0x5C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_params_in_synpred55_Expression1306:BitSet = new BitSet([0x10000000, 0x00000000]);
        public static const FOLLOW_28_in_synpred55_Expression1309:BitSet = new BitSet([0x00000000, 0x00000000, 0x00000200, 0x00000000]);
        public static const FOLLOW_73_in_synpred55_Expression1314:BitSet = new BitSet([0x4C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_exp_in_synpred55_Expression1318:BitSet = new BitSet([0x00000000, 0x00000000, 0x00000400, 0x00000000]);
        public static const FOLLOW_74_in_synpred55_Expression1320:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_27_in_synpred57_Expression1351:BitSet = new BitSet([0x5C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_params_in_synpred57_Expression1355:BitSet = new BitSet([0x10000000, 0x00000000]);
        public static const FOLLOW_28_in_synpred57_Expression1358:BitSet = new BitSet([0x00000000, 0x00000000, 0x00000800, 0x00000000]);
        public static const FOLLOW_75_in_synpred57_Expression1363:BitSet = new BitSet([0x00010000, 0x00000000]);
        public static const FOLLOW_Identifier_in_synpred57_Expression1367:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_73_in_synpred58_Expression1426:BitSet = new BitSet([0x4C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_exp_in_synpred58_Expression1430:BitSet = new BitSet([0x00000000, 0x00000000, 0x00000400, 0x00000000]);
        public static const FOLLOW_74_in_synpred58_Expression1432:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_27_in_synpred60_Expression1475:BitSet = new BitSet([0x4C01C000, 0x00000000, 0x000003E3, 0x00000000]);
        public static const FOLLOW_params_in_synpred60_Expression1479:BitSet = new BitSet([0x10000000, 0x00000000]);
        public static const FOLLOW_28_in_synpred60_Expression1481:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_27_in_synpred61_Expression1500:BitSet = new BitSet([0x10000000, 0x00000000]);
        public static const FOLLOW_28_in_synpred61_Expression1502:BitSet = new BitSet([0x00000002, 0x00000000]);

    }
}