// $ANTLR 3.2 Sep 23, 2009 12:02:23 C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g 2010-01-24 12:59:38
package com.esoteric.expressions {
    import org.antlr.runtime.*;
        import org.antlr.runtime.tree.*;    

    public class ExpressionWalker extends TreeParser {
        public static const tokenNames:Array = [
            "<invalid>", "<EOR>", "<DOWN>", "<UP>", "StmtList", "InstrList", "FuncCall", "PropRef", "PropExp", "CondExp", "CreateArray", "CreateObject", "IfStmt", "WhileStmt", "ForStmt", "FuncDef", "Return", "Local", "PreInc", "PostInc", "PreDec", "PostDec", "Identifier", "NumberLiteral", "StringLiteral", "LineComment", "MultilineComment", "Digit", "Exponent", "HexDigit", "EscapeSequence", "WhiteSpace", "Letter", "UnicodeEscapeChar", "'if'", "'('", "')'", "'else'", "'while'", "'{'", "'}'", "';'", "'='", "'*='", "'/='", "'%='", "'+='", "'-='", "'<<='", "'>>='", "'>>>='", "'&='", "'^='", "'|='", "'var'", "'?'", "':'", "'||'", "'or'", "'&&'", "'and'", "'|'", "'^'", "'&'", "'=='", "'!='", "'==='", "'!=='", "'<'", "'lt'", "'>'", "'gt'", "'<='", "'lte'", "'>='", "'gte'", "'<<'", "'>>'", "'>>>'", "'+'", "'-'", "'*'", "'/'", "'%'", "'~'", "'!'", "'++'", "'--'", "'true'", "'false'", "'null'", "'['", "']'", "'.'", "'function'", "','", "'this'", "'return'"
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
        public static const T__97:int=97;
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
        public static const T__73:int=73;
        public static const EscapeSequence:int=30;
        public static const Letter:int=32;
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
        public static const Exponent:int=28;
        public static const LineComment:int=25;
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


            public function ExpressionWalker(input:TreeNodeStream, state:RecognizerSharedState = null) {
                super(input, state);

                dfa13 = new DFA(this, 13,
                            "121:1: value : ( ^(o= ( '|' | '^' | '&' | '==' | '!=' | '===' | '!==' | '<' | 'lt' | '>' | 'gt' | '<=' | 'lte' | '>=' | 'gte' | '<<' | '>>' | '>>>' | '+' | '-' | '*' | '/' | '%' ) exp exp ) | ^(o= ( '||' | 'or' ) exp exp ) | ^(o= ( '&&' | 'and' ) exp exp ) | ^( PreInc i= Identifier ) | ^( PreInc ^( PropRef exp i= Identifier ) ) | ^( PreDec i= Identifier ) | ^( PreDec ^( PropRef exp i= Identifier ) ) | ^( PostInc i= Identifier ) | ^( PostInc ^( PropRef exp i= Identifier ) ) | ^( PostDec i= Identifier ) | ^( PostDec ^( PropRef exp i= Identifier ) ) | ^( CondExp exp exp exp ) | ^(o= ( '-' | '+' | '~' | '!' ) exp ) | ^(f= FuncCall ( exp )+ ) | ^( PropRef exp i= Identifier ) | ^( PropExp exp exp ) | NumberLiteral | StringLiteral | 'true' | 'false' | 'null' | 'this' | i= Identifier | ^(a= CreateArray ( exp )* ) | ^(o= CreateObject (i= Identifier exp | s= StringLiteral exp )* ) | funcDef );",
                            DFA13_eot, DFA13_eof, DFA13_min,
                            DFA13_max, DFA13_accept, DFA13_special,
                            DFA13_transition, DFA13_specialStateTransition);

                this.state.ruleMemo = new Array(99+1);
                 
            }
            

        public override function get tokenNames():Array { return ExpressionWalker.tokenNames; }
        public override function get grammarFileName():String { return "C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g"; }


        	private var _codegen:ExpressionCodegen = new ExpressionCodegen();
        	
        	public function get instructions():Vector.<Array> { return _codegen.instructions; }
        			
        	private function cleanUpString(s:String):String
        	{
        		if (s.charAt(0) == '"')
        		{
        			var result:String = s.substr(1, s.length - 2).replace(/\\\"/g, '"');
        		}
        		else
        		{
        			result = s.substr(1, s.length - 2).replace(/\\\'/g, "'");
        		}
        		
        		result = result.replace(/\\\\/g, '\\');
        		result = result.replace(/\\b/g, '\b');
        		result = result.replace(/\\t/g, '\t');
        		result = result.replace(/\\n/g, '\n');
        		result = result.replace(/\\r/g, '\r');
        		
        		return result;
        	}


        // $ANTLR start main
        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:42:1: main : stmtList ;
        public final function main():void {
            var main_StartIndex:int = input.index;
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 1) ) { return ; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:42:6: ( stmtList )
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:42:8: stmtList
                {
                pushFollow(FOLLOW_stmtList_in_main63);
                stmtList();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return ;

                }

            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 1, main_StartIndex); }
            }
            return ;
        }
        // $ANTLR end main

        // $ANTLR start stmtList
        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:45:1: stmtList : ( ^( StmtList ( stmt )* ) | EOF );
        public final function stmtList():void {
            var stmtList_StartIndex:int = input.index;
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 2) ) { return ; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:45:9: ( ^( StmtList ( stmt )* ) | EOF )
                var alt2:int=2;
                var LA2_0:int = input.LA(1);

                if ( (LA2_0==4) ) {
                    alt2=1;
                }
                else if ( (LA2_0==-1) ) {
                    alt2=2;
                }
                else {
                    if (this.state.backtracking>0) {this.state.failed=true; return ;}
                    throw new NoViableAltException("", 2, 0, input);

                }
                switch (alt2) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:45:11: ^( StmtList ( stmt )* )
                        {
                        matchStream(input,StmtList,FOLLOW_StmtList_in_stmtList74); if (this.state.failed) return ;

                        if ( input.LA(1)==TokenConstants.DOWN ) {
                            matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
                            // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:45:22: ( stmt )*
                            loop1:
                            do {
                                var alt1:int=2;
                                var LA1_0:int = input.LA(1);

                                if ( (LA1_0==5||(LA1_0>=12 && LA1_0<=13)) ) {
                                    alt1=1;
                                }


                                switch (alt1) {
                            	case 1 :
                            	    // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:0:0: stmt
                            	    {
                            	    pushFollow(FOLLOW_stmt_in_stmtList76);
                            	    stmt();

                            	    state._fsp = state._fsp - 1;
                            	    if (this.state.failed) return ;

                            	    }
                            	    break;

                            	default :
                            	    break loop1;
                                }
                            } while (true);


                            matchStream(input, TokenConstants.UP, null); if (this.state.failed) return ;
                        }

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:46:4: EOF
                        {
                        matchStream(input,EOF,FOLLOW_EOF_in_stmtList83); if (this.state.failed) return ;

                        }
                        break;

                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 2, stmtList_StartIndex); }
            }
            return ;
        }
        // $ANTLR end stmtList

        // $ANTLR start stmt
        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:49:1: stmt : ( instrList | ifStmt | whileStmt );
        public final function stmt():void {
            var stmt_StartIndex:int = input.index;
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 3) ) { return ; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:49:6: ( instrList | ifStmt | whileStmt )
                var alt3:int=3;
                switch ( input.LA(1) ) {
                case InstrList:
                    {
                    alt3=1;
                    }
                    break;
                case IfStmt:
                    {
                    alt3=2;
                    }
                    break;
                case WhileStmt:
                    {
                    alt3=3;
                    }
                    break;
                default:
                    if (this.state.backtracking>0) {this.state.failed=true; return ;}
                    throw new NoViableAltException("", 3, 0, input);

                }

                switch (alt3) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:49:8: instrList
                        {
                        pushFollow(FOLLOW_instrList_in_stmt94);
                        instrList();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return ;

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:50:4: ifStmt
                        {
                        pushFollow(FOLLOW_ifStmt_in_stmt99);
                        ifStmt();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return ;

                        }
                        break;
                    case 3 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:51:4: whileStmt
                        {
                        pushFollow(FOLLOW_whileStmt_in_stmt104);
                        whileStmt();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return ;

                        }
                        break;

                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 3, stmt_StartIndex); }
            }
            return ;
        }
        // $ANTLR end stmt

        // $ANTLR start instrList
        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:54:1: instrList : ^( InstrList ( instr )* ) ;
        public final function instrList():void {
            var instrList_StartIndex:int = input.index;
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 4) ) { return ; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:55:2: ( ^( InstrList ( instr )* ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:55:4: ^( InstrList ( instr )* )
                {
                matchStream(input,InstrList,FOLLOW_InstrList_in_instrList117); if (this.state.failed) return ;

                if ( input.LA(1)==TokenConstants.DOWN ) {
                    matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
                    // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:55:16: ( instr )*
                    loop4:
                    do {
                        var alt4:int=2;
                        var LA4_0:int = input.LA(1);

                        if ( ((LA4_0>=6 && LA4_0<=11)||(LA4_0>=15 && LA4_0<=24)||(LA4_0>=42 && LA4_0<=53)||(LA4_0>=57 && LA4_0<=85)||(LA4_0>=88 && LA4_0<=90)||LA4_0==96) ) {
                            alt4=1;
                        }


                        switch (alt4) {
                    	case 1 :
                    	    // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:0:0: instr
                    	    {
                    	    pushFollow(FOLLOW_instr_in_instrList119);
                    	    instr();

                    	    state._fsp = state._fsp - 1;
                    	    if (this.state.failed) return ;

                    	    }
                    	    break;

                    	default :
                    	    break loop4;
                        }
                    } while (true);


                    matchStream(input, TokenConstants.UP, null); if (this.state.failed) return ;
                }

                }

            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 4, instrList_StartIndex); }
            }
            return ;
        }
        // $ANTLR end instrList

        // $ANTLR start ifStmt
        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:58:1: ifStmt : ( ^( IfStmt exp stmtList stmtList ) | ^( IfStmt exp stmtList ifStmt ) | ^( IfStmt exp stmtList ) );
        public final function ifStmt():void {
            var ifStmt_StartIndex:int = input.index;
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 5) ) { return ; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:58:8: ( ^( IfStmt exp stmtList stmtList ) | ^( IfStmt exp stmtList ifStmt ) | ^( IfStmt exp stmtList ) )
                var alt5:int=3;
                var LA5_0:int = input.LA(1);

                if ( (LA5_0==12) ) {
                    var LA5_1:int = input.LA(2);

                    if ( (synpred6_ExpressionWalker()) ) {
                        alt5=1;
                    }
                    else if ( (synpred7_ExpressionWalker()) ) {
                        alt5=2;
                    }
                    else if ( (true) ) {
                        alt5=3;
                    }
                    else {
                        if (this.state.backtracking>0) {this.state.failed=true; return ;}
                        throw new NoViableAltException("", 5, 1, input);

                    }
                }
                else {
                    if (this.state.backtracking>0) {this.state.failed=true; return ;}
                    throw new NoViableAltException("", 5, 0, input);

                }
                switch (alt5) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:58:10: ^( IfStmt exp stmtList stmtList )
                        {
                        matchStream(input,IfStmt,FOLLOW_IfStmt_in_ifStmt137); if (this.state.failed) return ;

                        matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
                        pushFollow(FOLLOW_exp_in_ifStmt142);
                        exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return ;
                        if ( this.state.backtracking==0 ) {
                           _codegen.beginif() 
                        }
                        pushFollow(FOLLOW_stmtList_in_ifStmt154);
                        stmtList();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return ;
                        if ( this.state.backtracking==0 ) {
                           _codegen.beginelse() 
                        }
                        pushFollow(FOLLOW_stmtList_in_ifStmt165);
                        stmtList();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return ;
                        if ( this.state.backtracking==0 ) {
                           _codegen.endif() 
                        }

                        matchStream(input, TokenConstants.UP, null); if (this.state.failed) return ;

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:65:4: ^( IfStmt exp stmtList ifStmt )
                        {
                        matchStream(input,IfStmt,FOLLOW_IfStmt_in_ifStmt188); if (this.state.failed) return ;

                        matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
                        pushFollow(FOLLOW_exp_in_ifStmt193);
                        exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return ;
                        if ( this.state.backtracking==0 ) {
                           _codegen.beginif() 
                        }
                        pushFollow(FOLLOW_stmtList_in_ifStmt205);
                        stmtList();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return ;
                        if ( this.state.backtracking==0 ) {
                           _codegen.beginelse() 
                        }
                        pushFollow(FOLLOW_ifStmt_in_ifStmt216);
                        ifStmt();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return ;
                        if ( this.state.backtracking==0 ) {
                           _codegen.endif() 
                        }

                        matchStream(input, TokenConstants.UP, null); if (this.state.failed) return ;

                        }
                        break;
                    case 3 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:72:4: ^( IfStmt exp stmtList )
                        {
                        matchStream(input,IfStmt,FOLLOW_IfStmt_in_ifStmt240); if (this.state.failed) return ;

                        matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
                        pushFollow(FOLLOW_exp_in_ifStmt245);
                        exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return ;
                        if ( this.state.backtracking==0 ) {
                           _codegen.beginif() 
                        }
                        pushFollow(FOLLOW_stmtList_in_ifStmt257);
                        stmtList();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return ;
                        if ( this.state.backtracking==0 ) {
                           _codegen.endif(false) 
                        }

                        matchStream(input, TokenConstants.UP, null); if (this.state.failed) return ;

                        }
                        break;

                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 5, ifStmt_StartIndex); }
            }
            return ;
        }
        // $ANTLR end ifStmt

        // $ANTLR start whileStmt
        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:79:1: whileStmt : ^( WhileStmt exp stmtList ) ;
        public final function whileStmt():void {
            var whileStmt_StartIndex:int = input.index;
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 6) ) { return ; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:80:2: ( ^( WhileStmt exp stmtList ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:80:4: ^( WhileStmt exp stmtList )
                {
                matchStream(input,WhileStmt,FOLLOW_WhileStmt_in_whileStmt284); if (this.state.failed) return ;

                if ( this.state.backtracking==0 ) {
                   _codegen.prewhile() 
                }

                matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
                pushFollow(FOLLOW_exp_in_whileStmt295);
                exp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return ;
                if ( this.state.backtracking==0 ) {
                   _codegen.beginwhile() 
                }
                pushFollow(FOLLOW_stmtList_in_whileStmt307);
                stmtList();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return ;
                if ( this.state.backtracking==0 ) {
                   _codegen.endwhile() 
                }

                matchStream(input, TokenConstants.UP, null); if (this.state.failed) return ;

                }

            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 6, whileStmt_StartIndex); }
            }
            return ;
        }
        // $ANTLR end whileStmt

        // $ANTLR start instr
        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:87:1: instr : ( exp | ret );
        public final function instr():void {
            var instr_StartIndex:int = input.index;
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 7) ) { return ; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:87:7: ( exp | ret )
                var alt6:int=2;
                var LA6_0:int = input.LA(1);

                if ( ((LA6_0>=6 && LA6_0<=11)||LA6_0==15||(LA6_0>=17 && LA6_0<=24)||(LA6_0>=42 && LA6_0<=53)||(LA6_0>=57 && LA6_0<=83)||(LA6_0>=84 && LA6_0<=85)||(LA6_0>=88 && LA6_0<=90)||LA6_0==96) ) {
                    alt6=1;
                }
                else if ( (LA6_0==16) ) {
                    alt6=2;
                }
                else {
                    if (this.state.backtracking>0) {this.state.failed=true; return ;}
                    throw new NoViableAltException("", 6, 0, input);

                }
                switch (alt6) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:87:9: exp
                        {
                        pushFollow(FOLLOW_exp_in_instr328);
                        exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return ;

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:88:4: ret
                        {
                        pushFollow(FOLLOW_ret_in_instr333);
                        ret();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return ;

                        }
                        break;

                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 7, instr_StartIndex); }
            }
            return ;
        }
        // $ANTLR end instr

        // $ANTLR start exp
        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:91:1: exp : ( set | local | value );
        public final function exp():void {
            var exp_StartIndex:int = input.index;
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 8) ) { return ; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:91:5: ( set | local | value )
                var alt7:int=3;
                switch ( input.LA(1) ) {
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                case 50:
                case 51:
                case 52:
                case 53:
                    {
                    alt7=1;
                    }
                    break;
                case Local:
                    {
                    alt7=2;
                    }
                    break;
                case FuncCall:
                case PropRef:
                case PropExp:
                case CondExp:
                case CreateArray:
                case CreateObject:
                case FuncDef:
                case PreInc:
                case PostInc:
                case PreDec:
                case PostDec:
                case Identifier:
                case NumberLiteral:
                case StringLiteral:
                case 57:
                case 58:
                case 59:
                case 60:
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                case 68:
                case 69:
                case 70:
                case 71:
                case 72:
                case 73:
                case 74:
                case 75:
                case 76:
                case 77:
                case 78:
                case 79:
                case 80:
                case 81:
                case 82:
                case 83:
                case 84:
                case 85:
                case 88:
                case 89:
                case 90:
                case 96:
                    {
                    alt7=3;
                    }
                    break;
                default:
                    if (this.state.backtracking>0) {this.state.failed=true; return ;}
                    throw new NoViableAltException("", 7, 0, input);

                }

                switch (alt7) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:91:7: set
                        {
                        pushFollow(FOLLOW_set_in_exp343);
                        set();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return ;

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:92:4: local
                        {
                        pushFollow(FOLLOW_local_in_exp348);
                        local();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return ;

                        }
                        break;
                    case 3 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:93:4: value
                        {
                        pushFollow(FOLLOW_value_in_exp353);
                        value();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return ;

                        }
                        break;

                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 8, exp_StartIndex); }
            }
            return ;
        }
        // $ANTLR end exp

        // $ANTLR start set
        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:96:1: set : ^(o= ( '=' | '*=' | '/=' | '%=' | '+=' | '-=' | '<<=' | '>>=' | '>>>=' | '&=' | '^=' | '|=' ) exp ( seti | sete | setr ) ) ;
        public final function set():void {
            var set_StartIndex:int = input.index;
            var o:Object=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 9) ) { return ; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:96:5: ( ^(o= ( '=' | '*=' | '/=' | '%=' | '+=' | '-=' | '<<=' | '>>=' | '>>>=' | '&=' | '^=' | '|=' ) exp ( seti | sete | setr ) ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:96:7: ^(o= ( '=' | '*=' | '/=' | '%=' | '+=' | '-=' | '<<=' | '>>=' | '>>>=' | '&=' | '^=' | '|=' ) exp ( seti | sete | setr ) )
                {
                o=Object(input.LT(1));
                if ( (input.LA(1)>=42 && input.LA(1)<=53) ) {
                    input.consume();
                    this.state.errorRecovery=false;this.state.failed=false;
                }
                else {
                    if (this.state.backtracking>0) {this.state.failed=true; return ;}
                    throw new MismatchedSetException(null,input);
                }


                matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
                pushFollow(FOLLOW_exp_in_set422);
                exp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return ;
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:98:8: ( seti | sete | setr )
                var alt8:int=3;
                switch ( input.LA(1) ) {
                case Identifier:
                    {
                    alt8=1;
                    }
                    break;
                case PropExp:
                    {
                    alt8=2;
                    }
                    break;
                case PropRef:
                    {
                    alt8=3;
                    }
                    break;
                default:
                    if (this.state.backtracking>0) {this.state.failed=true; return ;}
                    throw new NoViableAltException("", 8, 0, input);

                }

                switch (alt8) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:98:9: seti
                        {
                        pushFollow(FOLLOW_seti_in_set425);
                        seti();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return ;

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:98:16: sete
                        {
                        pushFollow(FOLLOW_sete_in_set429);
                        sete();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return ;

                        }
                        break;
                    case 3 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:98:23: setr
                        {
                        pushFollow(FOLLOW_setr_in_set433);
                        setr();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return ;

                        }
                        break;

                }


                matchStream(input, TokenConstants.UP, null); if (this.state.failed) return ;
                if ( this.state.backtracking==0 ) {
                   _codegen.save((o!=null?o.text:null)); 
                }

                }

            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 9, set_StartIndex); }
            }
            return ;
        }
        // $ANTLR end set

        // $ANTLR start local
        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:102:1: local : ^( Local ( exp i= Identifier | i= Identifier ) ) ;
        public final function local():void {
            var local_StartIndex:int = input.index;
            var i:Object=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 10) ) { return ; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:102:7: ( ^( Local ( exp i= Identifier | i= Identifier ) ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:102:9: ^( Local ( exp i= Identifier | i= Identifier ) )
                {
                matchStream(input,Local,FOLLOW_Local_in_local461); if (this.state.failed) return ;

                matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:104:4: ( exp i= Identifier | i= Identifier )
                var alt9:int=2;
                var LA9_0:int = input.LA(1);

                if ( ((LA9_0>=6 && LA9_0<=11)||LA9_0==15||(LA9_0>=17 && LA9_0<=21)||(LA9_0>=23 && LA9_0<=24)||(LA9_0>=42 && LA9_0<=53)||(LA9_0>=57 && LA9_0<=85)||(LA9_0>=88 && LA9_0<=90)||LA9_0==96) ) {
                    alt9=1;
                }
                else if ( (LA9_0==22) ) {
                    var LA9_2:int = input.LA(2);

                    if ( (LA9_2==3) ) {
                        alt9=2;
                    }
                    else if ( (LA9_2==22) ) {
                        alt9=1;
                    }
                    else {
                        if (this.state.backtracking>0) {this.state.failed=true; return ;}
                        throw new NoViableAltException("", 9, 2, input);

                    }
                }
                else {
                    if (this.state.backtracking>0) {this.state.failed=true; return ;}
                    throw new NoViableAltException("", 9, 0, input);

                }
                switch (alt9) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:105:5: exp i= Identifier
                        {
                        pushFollow(FOLLOW_exp_in_local472);
                        exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return ;
                        i=Object(matchStream(input,Identifier,FOLLOW_Identifier_in_local476)); if (this.state.failed) return ;
                        if ( this.state.backtracking==0 ) {
                           _codegen.local((i!=null?i.text:null), true) 
                        }

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:106:6: i= Identifier
                        {
                        i=Object(matchStream(input,Identifier,FOLLOW_Identifier_in_local489)); if (this.state.failed) return ;
                        if ( this.state.backtracking==0 ) {
                           _codegen.local((i!=null?i.text:null), false) 
                        }

                        }
                        break;

                }


                matchStream(input, TokenConstants.UP, null); if (this.state.failed) return ;

                }

            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 10, local_StartIndex); }
            }
            return ;
        }
        // $ANTLR end local

        // $ANTLR start seti
        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:111:1: seti : i= Identifier ;
        public final function seti():void {
            var seti_StartIndex:int = input.index;
            var i:Object=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 11) ) { return ; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:111:6: (i= Identifier )
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:111:8: i= Identifier
                {
                i=Object(matchStream(input,Identifier,FOLLOW_Identifier_in_seti515)); if (this.state.failed) return ;
                if ( this.state.backtracking==0 ) {
                   _codegen.pushc();  
                }
                if ( this.state.backtracking==0 ) {
                   _codegen.push((i!=null?i.text:null)); 
                }

                }

            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 11, seti_StartIndex); }
            }
            return ;
        }
        // $ANTLR end seti

        // $ANTLR start sete
        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:115:1: sete : ^( PropExp exp exp ) ;
        public final function sete():void {
            var sete_StartIndex:int = input.index;
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 12) ) { return ; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:115:6: ( ^( PropExp exp exp ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:115:8: ^( PropExp exp exp )
                {
                matchStream(input,PropExp,FOLLOW_PropExp_in_sete545); if (this.state.failed) return ;

                matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
                pushFollow(FOLLOW_exp_in_sete547);
                exp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return ;
                pushFollow(FOLLOW_exp_in_sete549);
                exp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return ;

                matchStream(input, TokenConstants.UP, null); if (this.state.failed) return ;
                if ( this.state.backtracking==0 ) {
                    
                }

                }

            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 12, sete_StartIndex); }
            }
            return ;
        }
        // $ANTLR end sete

        // $ANTLR start setr
        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:118:1: setr : ^( PropRef exp i= Identifier ) ;
        public final function setr():void {
            var setr_StartIndex:int = input.index;
            var i:Object=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 13) ) { return ; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:118:6: ( ^( PropRef exp i= Identifier ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:118:8: ^( PropRef exp i= Identifier )
                {
                matchStream(input,PropRef,FOLLOW_PropRef_in_setr567); if (this.state.failed) return ;

                matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
                pushFollow(FOLLOW_exp_in_setr569);
                exp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return ;
                i=Object(matchStream(input,Identifier,FOLLOW_Identifier_in_setr573)); if (this.state.failed) return ;

                matchStream(input, TokenConstants.UP, null); if (this.state.failed) return ;
                if ( this.state.backtracking==0 ) {
                   _codegen.push((i!=null?i.text:null));  
                }

                }

            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 13, setr_StartIndex); }
            }
            return ;
        }
        // $ANTLR end setr

        // $ANTLR start value
        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:121:1: value : ( ^(o= ( '|' | '^' | '&' | '==' | '!=' | '===' | '!==' | '<' | 'lt' | '>' | 'gt' | '<=' | 'lte' | '>=' | 'gte' | '<<' | '>>' | '>>>' | '+' | '-' | '*' | '/' | '%' ) exp exp ) | ^(o= ( '||' | 'or' ) exp exp ) | ^(o= ( '&&' | 'and' ) exp exp ) | ^( PreInc i= Identifier ) | ^( PreInc ^( PropRef exp i= Identifier ) ) | ^( PreDec i= Identifier ) | ^( PreDec ^( PropRef exp i= Identifier ) ) | ^( PostInc i= Identifier ) | ^( PostInc ^( PropRef exp i= Identifier ) ) | ^( PostDec i= Identifier ) | ^( PostDec ^( PropRef exp i= Identifier ) ) | ^( CondExp exp exp exp ) | ^(o= ( '-' | '+' | '~' | '!' ) exp ) | ^(f= FuncCall ( exp )+ ) | ^( PropRef exp i= Identifier ) | ^( PropExp exp exp ) | NumberLiteral | StringLiteral | 'true' | 'false' | 'null' | 'this' | i= Identifier | ^(a= CreateArray ( exp )* ) | ^(o= CreateObject (i= Identifier exp | s= StringLiteral exp )* ) | funcDef );
        public final function value():TreeRuleReturnScope {
            var retval:TreeRuleReturnScope = new TreeRuleReturnScope();
            retval.start = input.LT(1);
            var value_StartIndex:int = input.index;
            var o:Object=null;
            var i:Object=null;
            var f:Object=null;
            var a:Object=null;
            var s:Object=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 14) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:121:7: ( ^(o= ( '|' | '^' | '&' | '==' | '!=' | '===' | '!==' | '<' | 'lt' | '>' | 'gt' | '<=' | 'lte' | '>=' | 'gte' | '<<' | '>>' | '>>>' | '+' | '-' | '*' | '/' | '%' ) exp exp ) | ^(o= ( '||' | 'or' ) exp exp ) | ^(o= ( '&&' | 'and' ) exp exp ) | ^( PreInc i= Identifier ) | ^( PreInc ^( PropRef exp i= Identifier ) ) | ^( PreDec i= Identifier ) | ^( PreDec ^( PropRef exp i= Identifier ) ) | ^( PostInc i= Identifier ) | ^( PostInc ^( PropRef exp i= Identifier ) ) | ^( PostDec i= Identifier ) | ^( PostDec ^( PropRef exp i= Identifier ) ) | ^( CondExp exp exp exp ) | ^(o= ( '-' | '+' | '~' | '!' ) exp ) | ^(f= FuncCall ( exp )+ ) | ^( PropRef exp i= Identifier ) | ^( PropExp exp exp ) | NumberLiteral | StringLiteral | 'true' | 'false' | 'null' | 'this' | i= Identifier | ^(a= CreateArray ( exp )* ) | ^(o= CreateObject (i= Identifier exp | s= StringLiteral exp )* ) | funcDef )
                var alt13:int=26;
                alt13 = dfa13.predict(input);
                switch (alt13) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:121:9: ^(o= ( '|' | '^' | '&' | '==' | '!=' | '===' | '!==' | '<' | 'lt' | '>' | 'gt' | '<=' | 'lte' | '>=' | 'gte' | '<<' | '>>' | '>>>' | '+' | '-' | '*' | '/' | '%' ) exp exp )
                        {
                        o=Object(input.LT(1));
                        if ( (input.LA(1)>=61 && input.LA(1)<=83) ) {
                            input.consume();
                            this.state.errorRecovery=false;this.state.failed=false;
                        }
                        else {
                            if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                            throw new MismatchedSetException(null,input);
                        }


                        matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return retval;
                        pushFollow(FOLLOW_exp_in_value692);
                        exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        pushFollow(FOLLOW_exp_in_value694);
                        exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                           _codegen.binop((o!=null?o.text:null)) 
                        }

                        matchStream(input, TokenConstants.UP, null); if (this.state.failed) return retval;

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:126:4: ^(o= ( '||' | 'or' ) exp exp )
                        {
                        o=Object(input.LT(1));
                        if ( (input.LA(1)>=57 && input.LA(1)<=58) ) {
                            input.consume();
                            this.state.errorRecovery=false;this.state.failed=false;
                        }
                        else {
                            if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                            throw new MismatchedSetException(null,input);
                        }


                        matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return retval;
                        pushFollow(FOLLOW_exp_in_value734);
                        exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                           _codegen.unaryop('!'); _codegen.beginif(); 
                        }
                        pushFollow(FOLLOW_exp_in_value746);
                        exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                           _codegen.endif(false, true) 
                        }

                        matchStream(input, TokenConstants.UP, null); if (this.state.failed) return retval;

                        }
                        break;
                    case 3 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:132:4: ^(o= ( '&&' | 'and' ) exp exp )
                        {
                        o=Object(input.LT(1));
                        if ( (input.LA(1)>=59 && input.LA(1)<=60) ) {
                            input.consume();
                            this.state.errorRecovery=false;this.state.failed=false;
                        }
                        else {
                            if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                            throw new MismatchedSetException(null,input);
                        }


                        matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return retval;
                        pushFollow(FOLLOW_exp_in_value785);
                        exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                            _codegen.beginif(); 
                        }
                        pushFollow(FOLLOW_exp_in_value797);
                        exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                           _codegen.endif(false, true) 
                        }

                        matchStream(input, TokenConstants.UP, null); if (this.state.failed) return retval;

                        }
                        break;
                    case 4 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:139:3: ^( PreInc i= Identifier )
                        {
                        matchStream(input,PreInc,FOLLOW_PreInc_in_value822); if (this.state.failed) return retval;

                        matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return retval;
                        i=Object(matchStream(input,Identifier,FOLLOW_Identifier_in_value826)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                           _codegen.pushc(); _codegen.push((i!=null?i.text:null)); _codegen.preinc() 
                        }

                        matchStream(input, TokenConstants.UP, null); if (this.state.failed) return retval;

                        }
                        break;
                    case 5 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:144:3: ^( PreInc ^( PropRef exp i= Identifier ) )
                        {
                        matchStream(input,PreInc,FOLLOW_PreInc_in_value849); if (this.state.failed) return retval;

                        matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return retval;
                        matchStream(input,PropRef,FOLLOW_PropRef_in_value852); if (this.state.failed) return retval;

                        matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return retval;
                        pushFollow(FOLLOW_exp_in_value854);
                        exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        i=Object(matchStream(input,Identifier,FOLLOW_Identifier_in_value858)); if (this.state.failed) return retval;

                        matchStream(input, TokenConstants.UP, null); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                           _codegen.push((i!=null?i.text:null)); _codegen.preinc() 
                        }

                        matchStream(input, TokenConstants.UP, null); if (this.state.failed) return retval;

                        }
                        break;
                    case 6 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:149:3: ^( PreDec i= Identifier )
                        {
                        matchStream(input,PreDec,FOLLOW_PreDec_in_value880); if (this.state.failed) return retval;

                        matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return retval;
                        i=Object(matchStream(input,Identifier,FOLLOW_Identifier_in_value884)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                           _codegen.pushc(); _codegen.push((i!=null?i.text:null)); _codegen.predec() 
                        }

                        matchStream(input, TokenConstants.UP, null); if (this.state.failed) return retval;

                        }
                        break;
                    case 7 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:154:3: ^( PreDec ^( PropRef exp i= Identifier ) )
                        {
                        matchStream(input,PreDec,FOLLOW_PreDec_in_value907); if (this.state.failed) return retval;

                        matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return retval;
                        matchStream(input,PropRef,FOLLOW_PropRef_in_value910); if (this.state.failed) return retval;

                        matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return retval;
                        pushFollow(FOLLOW_exp_in_value912);
                        exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        i=Object(matchStream(input,Identifier,FOLLOW_Identifier_in_value916)); if (this.state.failed) return retval;

                        matchStream(input, TokenConstants.UP, null); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                           _codegen.push((i!=null?i.text:null)); _codegen.predec() 
                        }

                        matchStream(input, TokenConstants.UP, null); if (this.state.failed) return retval;

                        }
                        break;
                    case 8 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:159:3: ^( PostInc i= Identifier )
                        {
                        matchStream(input,PostInc,FOLLOW_PostInc_in_value938); if (this.state.failed) return retval;

                        matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return retval;
                        i=Object(matchStream(input,Identifier,FOLLOW_Identifier_in_value942)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                           _codegen.pushc(); _codegen.push((i!=null?i.text:null)); _codegen.postinc() 
                        }

                        matchStream(input, TokenConstants.UP, null); if (this.state.failed) return retval;

                        }
                        break;
                    case 9 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:164:3: ^( PostInc ^( PropRef exp i= Identifier ) )
                        {
                        matchStream(input,PostInc,FOLLOW_PostInc_in_value965); if (this.state.failed) return retval;

                        matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return retval;
                        matchStream(input,PropRef,FOLLOW_PropRef_in_value968); if (this.state.failed) return retval;

                        matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return retval;
                        pushFollow(FOLLOW_exp_in_value970);
                        exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        i=Object(matchStream(input,Identifier,FOLLOW_Identifier_in_value974)); if (this.state.failed) return retval;

                        matchStream(input, TokenConstants.UP, null); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                           _codegen.push((i!=null?i.text:null)); _codegen.postinc() 
                        }

                        matchStream(input, TokenConstants.UP, null); if (this.state.failed) return retval;

                        }
                        break;
                    case 10 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:169:3: ^( PostDec i= Identifier )
                        {
                        matchStream(input,PostDec,FOLLOW_PostDec_in_value996); if (this.state.failed) return retval;

                        matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return retval;
                        i=Object(matchStream(input,Identifier,FOLLOW_Identifier_in_value1000)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                           _codegen.pushc(); _codegen.push((i!=null?i.text:null)); _codegen.postdec() 
                        }

                        matchStream(input, TokenConstants.UP, null); if (this.state.failed) return retval;

                        }
                        break;
                    case 11 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:174:3: ^( PostDec ^( PropRef exp i= Identifier ) )
                        {
                        matchStream(input,PostDec,FOLLOW_PostDec_in_value1023); if (this.state.failed) return retval;

                        matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return retval;
                        matchStream(input,PropRef,FOLLOW_PropRef_in_value1026); if (this.state.failed) return retval;

                        matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return retval;
                        pushFollow(FOLLOW_exp_in_value1028);
                        exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        i=Object(matchStream(input,Identifier,FOLLOW_Identifier_in_value1032)); if (this.state.failed) return retval;

                        matchStream(input, TokenConstants.UP, null); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                           _codegen.push((i!=null?i.text:null)); _codegen.postdec() 
                        }

                        matchStream(input, TokenConstants.UP, null); if (this.state.failed) return retval;

                        }
                        break;
                    case 12 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:178:4: ^( CondExp exp exp exp )
                        {
                        matchStream(input,CondExp,FOLLOW_CondExp_in_value1053); if (this.state.failed) return retval;

                        matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return retval;
                        pushFollow(FOLLOW_exp_in_value1064);
                        exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                           _codegen.beginif() 
                        }
                        pushFollow(FOLLOW_exp_in_value1076);
                        exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                           _codegen.beginelse() 
                        }
                        pushFollow(FOLLOW_exp_in_value1088);
                        exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                           _codegen.endif() 
                        }

                        matchStream(input, TokenConstants.UP, null); if (this.state.failed) return retval;

                        }
                        break;
                    case 13 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:185:4: ^(o= ( '-' | '+' | '~' | '!' ) exp )
                        {
                        o=Object(input.LT(1));
                        if ( (input.LA(1)>=79 && input.LA(1)<=80)||(input.LA(1)>=84 && input.LA(1)<=85) ) {
                            input.consume();
                            this.state.errorRecovery=false;this.state.failed=false;
                        }
                        else {
                            if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                            throw new MismatchedSetException(null,input);
                        }


                        matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return retval;
                        pushFollow(FOLLOW_exp_in_value1133);
                        exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;

                        matchStream(input, TokenConstants.UP, null); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                           _codegen.unaryop((o!=null?o.text:null)) 
                        }

                        }
                        break;
                    case 14 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:190:4: ^(f= FuncCall ( exp )+ )
                        {
                        f=Object(matchStream(input,FuncCall,FOLLOW_FuncCall_in_value1156)); if (this.state.failed) return retval;

                        matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return retval;
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:190:17: ( exp )+
                        var cnt10:int=0;
                        loop10:
                        do {
                            var alt10:int=2;
                            var LA10_0:int = input.LA(1);

                            if ( ((LA10_0>=6 && LA10_0<=11)||LA10_0==15||(LA10_0>=17 && LA10_0<=24)||(LA10_0>=42 && LA10_0<=53)||(LA10_0>=57 && LA10_0<=83)||(LA10_0>=84 && LA10_0<=85)||(LA10_0>=88 && LA10_0<=90)||LA10_0==96) ) {
                                alt10=1;
                            }


                            switch (alt10) {
                        	case 1 :
                        	    // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:0:0: exp
                        	    {
                        	    pushFollow(FOLLOW_exp_in_value1158);
                        	    exp();

                        	    state._fsp = state._fsp - 1;
                        	    if (this.state.failed) return retval;

                        	    }
                        	    break;

                        	default :
                        	    if ( cnt10 >= 1 ) break loop10;
                        	    if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                                    throw new EarlyExitException(10, input);

                            }
                            cnt10++;
                        } while (true);


                        matchStream(input, TokenConstants.UP, null); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                           _codegen.call(f.childCount - 1); 
                        }

                        }
                        break;
                    case 15 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:192:4: ^( PropRef exp i= Identifier )
                        {
                        matchStream(input,PropRef,FOLLOW_PropRef_in_value1174); if (this.state.failed) return retval;

                        matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return retval;
                        pushFollow(FOLLOW_exp_in_value1176);
                        exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        i=Object(matchStream(input,Identifier,FOLLOW_Identifier_in_value1180)); if (this.state.failed) return retval;

                        matchStream(input, TokenConstants.UP, null); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                           _codegen.push((i!=null?i.text:null)); 
                        }
                        if ( this.state.backtracking==0 ) {
                           _codegen.load(); 
                        }

                        }
                        break;
                    case 16 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:195:4: ^( PropExp exp exp )
                        {
                        matchStream(input,PropExp,FOLLOW_PropExp_in_value1205); if (this.state.failed) return retval;

                        matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return retval;
                        pushFollow(FOLLOW_exp_in_value1207);
                        exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        pushFollow(FOLLOW_exp_in_value1209);
                        exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;

                        matchStream(input, TokenConstants.UP, null); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                           _codegen.load(); 
                        }

                        }
                        break;
                    case 17 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:197:4: NumberLiteral
                        {
                        matchStream(input,NumberLiteral,FOLLOW_NumberLiteral_in_value1223); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                           _codegen.push(Number(input.tokenStream.toStringWithRange(
                            input.treeAdaptor.getTokenStartIndex(retval.start),
                            input.treeAdaptor.getTokenStopIndex(retval.start)))); 
                        }

                        }
                        break;
                    case 18 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:199:4: StringLiteral
                        {
                        matchStream(input,StringLiteral,FOLLOW_StringLiteral_in_value1237); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                           _codegen.push(cleanUpString(input.tokenStream.toStringWithRange(
                            input.treeAdaptor.getTokenStartIndex(retval.start),
                            input.treeAdaptor.getTokenStopIndex(retval.start)))); 
                        }

                        }
                        break;
                    case 19 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:201:4: 'true'
                        {
                        matchStream(input,88,FOLLOW_88_in_value1251); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                           _codegen.push(true); 
                        }

                        }
                        break;
                    case 20 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:202:4: 'false'
                        {
                        matchStream(input,89,FOLLOW_89_in_value1264); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                           _codegen.push(false); 
                        }

                        }
                        break;
                    case 21 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:203:4: 'null'
                        {
                        matchStream(input,90,FOLLOW_90_in_value1277); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                           _codegen.push(null); 
                        }

                        }
                        break;
                    case 22 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:205:4: 'this'
                        {
                        matchStream(input,96,FOLLOW_96_in_value1292); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                           _codegen.pusht(); 
                        }

                        }
                        break;
                    case 23 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:207:4: i= Identifier
                        {
                        i=Object(matchStream(input,Identifier,FOLLOW_Identifier_in_value1309)); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                           _codegen.pushc(); 
                        }
                        if ( this.state.backtracking==0 ) {
                           _codegen.push((i!=null?i.text:null)); 
                        }
                        if ( this.state.backtracking==0 ) {
                           _codegen.load(); 
                        }

                        }
                        break;
                    case 24 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:211:4: ^(a= CreateArray ( exp )* )
                        {
                        a=Object(matchStream(input,CreateArray,FOLLOW_CreateArray_in_value1356)); if (this.state.failed) return retval;

                        if ( input.LA(1)==TokenConstants.DOWN ) {
                            matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return retval;
                            // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:211:20: ( exp )*
                            loop11:
                            do {
                                var alt11:int=2;
                                var LA11_0:int = input.LA(1);

                                if ( ((LA11_0>=6 && LA11_0<=11)||LA11_0==15||(LA11_0>=17 && LA11_0<=24)||(LA11_0>=42 && LA11_0<=53)||(LA11_0>=57 && LA11_0<=83)||(LA11_0>=84 && LA11_0<=85)||(LA11_0>=88 && LA11_0<=90)||LA11_0==96) ) {
                                    alt11=1;
                                }


                                switch (alt11) {
                            	case 1 :
                            	    // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:0:0: exp
                            	    {
                            	    pushFollow(FOLLOW_exp_in_value1358);
                            	    exp();

                            	    state._fsp = state._fsp - 1;
                            	    if (this.state.failed) return retval;

                            	    }
                            	    break;

                            	default :
                            	    break loop11;
                                }
                            } while (true);


                            matchStream(input, TokenConstants.UP, null); if (this.state.failed) return retval;
                        }
                        if ( this.state.backtracking==0 ) {
                           _codegen.array(a.childCount); 
                        }

                        }
                        break;
                    case 25 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:212:4: ^(o= CreateObject (i= Identifier exp | s= StringLiteral exp )* )
                        {
                        o=Object(matchStream(input,CreateObject,FOLLOW_CreateObject_in_value1378)); if (this.state.failed) return retval;

                        if ( input.LA(1)==TokenConstants.DOWN ) {
                            matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return retval;
                            // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:214:4: (i= Identifier exp | s= StringLiteral exp )*
                            loop12:
                            do {
                                var alt12:int=3;
                                var LA12_0:int = input.LA(1);

                                if ( (LA12_0==22) ) {
                                    alt12=1;
                                }
                                else if ( (LA12_0==24) ) {
                                    alt12=2;
                                }


                                switch (alt12) {
                            	case 1 :
                            	    // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:215:5: i= Identifier exp
                            	    {
                            	    i=Object(matchStream(input,Identifier,FOLLOW_Identifier_in_value1391)); if (this.state.failed) return retval;
                            	    pushFollow(FOLLOW_exp_in_value1393);
                            	    exp();

                            	    state._fsp = state._fsp - 1;
                            	    if (this.state.failed) return retval;
                            	    if ( this.state.backtracking==0 ) {
                            	       _codegen.push((i!=null?i.text:null)) 
                            	    }

                            	    }
                            	    break;
                            	case 2 :
                            	    // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:216:6: s= StringLiteral exp
                            	    {
                            	    s=Object(matchStream(input,StringLiteral,FOLLOW_StringLiteral_in_value1406)); if (this.state.failed) return retval;
                            	    pushFollow(FOLLOW_exp_in_value1408);
                            	    exp();

                            	    state._fsp = state._fsp - 1;
                            	    if (this.state.failed) return retval;
                            	    if ( this.state.backtracking==0 ) {
                            	       _codegen.push(cleanUpString((s!=null?s.text:null))) 
                            	    }

                            	    }
                            	    break;

                            	default :
                            	    break loop12;
                                }
                            } while (true);

                            if ( this.state.backtracking==0 ) {
                               _codegen.object(o.childCount) 
                            }

                            matchStream(input, TokenConstants.UP, null); if (this.state.failed) return retval;
                        }

                        }
                        break;
                    case 26 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:219:4: funcDef
                        {
                        pushFollow(FOLLOW_funcDef_in_value1434);
                        funcDef();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;

                        }
                        break;

                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 14, value_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end value

        // $ANTLR start funcDef
        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:222:1: funcDef : ^( FuncDef ( arg )* stmtList ) ;
        public final function funcDef():void {
            var funcDef_StartIndex:int = input.index;
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 15) ) { return ; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:222:9: ( ^( FuncDef ( arg )* stmtList ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:222:11: ^( FuncDef ( arg )* stmtList )
                {
                matchStream(input,FuncDef,FOLLOW_FuncDef_in_funcDef1450); if (this.state.failed) return ;

                if ( this.state.backtracking==0 ) {
                   _codegen.beginfunc() 
                }

                matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:224:4: ( arg )*
                loop14:
                do {
                    var alt14:int=2;
                    var LA14_0:int = input.LA(1);

                    if ( (LA14_0==22) ) {
                        alt14=1;
                    }


                    switch (alt14) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:0:0: arg
                	    {
                	    pushFollow(FOLLOW_arg_in_funcDef1462);
                	    arg();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return ;

                	    }
                	    break;

                	default :
                	    break loop14;
                    }
                } while (true);

                pushFollow(FOLLOW_stmtList_in_funcDef1468);
                stmtList();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return ;
                if ( this.state.backtracking==0 ) {
                   _codegen.endfunc() 
                }

                matchStream(input, TokenConstants.UP, null); if (this.state.failed) return ;

                }

            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 15, funcDef_StartIndex); }
            }
            return ;
        }
        // $ANTLR end funcDef

        // $ANTLR start arg
        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:229:1: arg : i= Identifier ;
        public final function arg():void {
            var arg_StartIndex:int = input.index;
            var i:Object=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 16) ) { return ; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:229:5: (i= Identifier )
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:229:7: i= Identifier
                {
                i=Object(matchStream(input,Identifier,FOLLOW_Identifier_in_arg1491)); if (this.state.failed) return ;
                if ( this.state.backtracking==0 ) {
                   _codegen.arg((i!=null?i.text:null)) 
                }

                }

            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 16, arg_StartIndex); }
            }
            return ;
        }
        // $ANTLR end arg

        // $ANTLR start ret
        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:232:1: ret : ( ^( Return exp ) | Return );
        public final function ret():void {
            var ret_StartIndex:int = input.index;
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 17) ) { return ; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:233:2: ( ^( Return exp ) | Return )
                var alt15:int=2;
                var LA15_0:int = input.LA(1);

                if ( (LA15_0==16) ) {
                    var LA15_1:int = input.LA(2);

                    if ( (LA15_1==2) ) {
                        alt15=1;
                    }
                    else if ( (LA15_1==-1||LA15_1==3||(LA15_1>=6 && LA15_1<=11)||(LA15_1>=15 && LA15_1<=24)||(LA15_1>=42 && LA15_1<=53)||(LA15_1>=57 && LA15_1<=85)||(LA15_1>=88 && LA15_1<=90)||LA15_1==96) ) {
                        alt15=2;
                    }
                    else {
                        if (this.state.backtracking>0) {this.state.failed=true; return ;}
                        throw new NoViableAltException("", 15, 1, input);

                    }
                }
                else {
                    if (this.state.backtracking>0) {this.state.failed=true; return ;}
                    throw new NoViableAltException("", 15, 0, input);

                }
                switch (alt15) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:234:3: ^( Return exp )
                        {
                        matchStream(input,Return,FOLLOW_Return_in_ret1512); if (this.state.failed) return ;

                        matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
                        pushFollow(FOLLOW_exp_in_ret1514);
                        exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return ;

                        matchStream(input, TokenConstants.UP, null); if (this.state.failed) return ;
                        if ( this.state.backtracking==0 ) {
                           _codegen.ret(true) 
                        }

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:235:4: Return
                        {
                        matchStream(input,Return,FOLLOW_Return_in_ret1527); if (this.state.failed) return ;
                        if ( this.state.backtracking==0 ) {
                           _codegen.ret(false) 
                        }

                        }
                        break;

                }
            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 17, ret_StartIndex); }
            }
            return ;
        }
        // $ANTLR end ret

        // $ANTLR start synpred6_ExpressionWalker
        public final function synpred6_ExpressionWalker_fragment():void {
            // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:58:10: ( ^( IfStmt exp stmtList stmtList ) )
            // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:58:10: ^( IfStmt exp stmtList stmtList )
            {
            matchStream(input,IfStmt,FOLLOW_IfStmt_in_synpred6_ExpressionWalker137); if (this.state.failed) return ;

            matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
            pushFollow(FOLLOW_exp_in_synpred6_ExpressionWalker142);
            exp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            pushFollow(FOLLOW_stmtList_in_synpred6_ExpressionWalker154);
            stmtList();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            pushFollow(FOLLOW_stmtList_in_synpred6_ExpressionWalker165);
            stmtList();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;

            matchStream(input, TokenConstants.UP, null); if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred6_ExpressionWalker

        // $ANTLR start synpred7_ExpressionWalker
        public final function synpred7_ExpressionWalker_fragment():void {
            // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:65:4: ( ^( IfStmt exp stmtList ifStmt ) )
            // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:65:4: ^( IfStmt exp stmtList ifStmt )
            {
            matchStream(input,IfStmt,FOLLOW_IfStmt_in_synpred7_ExpressionWalker188); if (this.state.failed) return ;

            matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
            pushFollow(FOLLOW_exp_in_synpred7_ExpressionWalker193);
            exp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            pushFollow(FOLLOW_stmtList_in_synpred7_ExpressionWalker205);
            stmtList();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            pushFollow(FOLLOW_ifStmt_in_synpred7_ExpressionWalker216);
            ifStmt();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;

            matchStream(input, TokenConstants.UP, null); if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred7_ExpressionWalker

        // $ANTLR start synpred47_ExpressionWalker
        public final function synpred47_ExpressionWalker_fragment():void {
            var o:Object=null;

            // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:121:9: ( ^(o= ( '|' | '^' | '&' | '==' | '!=' | '===' | '!==' | '<' | 'lt' | '>' | 'gt' | '<=' | 'lte' | '>=' | 'gte' | '<<' | '>>' | '>>>' | '+' | '-' | '*' | '/' | '%' ) exp exp ) )
            // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:121:9: ^(o= ( '|' | '^' | '&' | '==' | '!=' | '===' | '!==' | '<' | 'lt' | '>' | 'gt' | '<=' | 'lte' | '>=' | 'gte' | '<<' | '>>' | '>>>' | '+' | '-' | '*' | '/' | '%' ) exp exp )
            {
            o=Object(input.LT(1));
            if ( (input.LA(1)>=61 && input.LA(1)<=83) ) {
                input.consume();
                this.state.errorRecovery=false;this.state.failed=false;
            }
            else {
                if (this.state.backtracking>0) {this.state.failed=true; return ;}
                throw new MismatchedSetException(null,input);
            }


            matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
            pushFollow(FOLLOW_exp_in_synpred47_ExpressionWalker692);
            exp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            pushFollow(FOLLOW_exp_in_synpred47_ExpressionWalker694);
            exp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;

            matchStream(input, TokenConstants.UP, null); if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred47_ExpressionWalker

        // $ANTLR start synpred52_ExpressionWalker
        public final function synpred52_ExpressionWalker_fragment():void {
            var i:Object=null;

            // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:139:3: ( ^( PreInc i= Identifier ) )
            // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:139:3: ^( PreInc i= Identifier )
            {
            matchStream(input,PreInc,FOLLOW_PreInc_in_synpred52_ExpressionWalker822); if (this.state.failed) return ;

            matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
            i=Object(matchStream(input,Identifier,FOLLOW_Identifier_in_synpred52_ExpressionWalker826)); if (this.state.failed) return ;

            matchStream(input, TokenConstants.UP, null); if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred52_ExpressionWalker

        // $ANTLR start synpred53_ExpressionWalker
        public final function synpred53_ExpressionWalker_fragment():void {
            var i:Object=null;

            // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:144:3: ( ^( PreInc ^( PropRef exp i= Identifier ) ) )
            // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:144:3: ^( PreInc ^( PropRef exp i= Identifier ) )
            {
            matchStream(input,PreInc,FOLLOW_PreInc_in_synpred53_ExpressionWalker849); if (this.state.failed) return ;

            matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
            matchStream(input,PropRef,FOLLOW_PropRef_in_synpred53_ExpressionWalker852); if (this.state.failed) return ;

            matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
            pushFollow(FOLLOW_exp_in_synpred53_ExpressionWalker854);
            exp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            i=Object(matchStream(input,Identifier,FOLLOW_Identifier_in_synpred53_ExpressionWalker858)); if (this.state.failed) return ;

            matchStream(input, TokenConstants.UP, null); if (this.state.failed) return ;

            matchStream(input, TokenConstants.UP, null); if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred53_ExpressionWalker

        // $ANTLR start synpred54_ExpressionWalker
        public final function synpred54_ExpressionWalker_fragment():void {
            var i:Object=null;

            // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:149:3: ( ^( PreDec i= Identifier ) )
            // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:149:3: ^( PreDec i= Identifier )
            {
            matchStream(input,PreDec,FOLLOW_PreDec_in_synpred54_ExpressionWalker880); if (this.state.failed) return ;

            matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
            i=Object(matchStream(input,Identifier,FOLLOW_Identifier_in_synpred54_ExpressionWalker884)); if (this.state.failed) return ;

            matchStream(input, TokenConstants.UP, null); if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred54_ExpressionWalker

        // $ANTLR start synpred55_ExpressionWalker
        public final function synpred55_ExpressionWalker_fragment():void {
            var i:Object=null;

            // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:154:3: ( ^( PreDec ^( PropRef exp i= Identifier ) ) )
            // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:154:3: ^( PreDec ^( PropRef exp i= Identifier ) )
            {
            matchStream(input,PreDec,FOLLOW_PreDec_in_synpred55_ExpressionWalker907); if (this.state.failed) return ;

            matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
            matchStream(input,PropRef,FOLLOW_PropRef_in_synpred55_ExpressionWalker910); if (this.state.failed) return ;

            matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
            pushFollow(FOLLOW_exp_in_synpred55_ExpressionWalker912);
            exp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            i=Object(matchStream(input,Identifier,FOLLOW_Identifier_in_synpred55_ExpressionWalker916)); if (this.state.failed) return ;

            matchStream(input, TokenConstants.UP, null); if (this.state.failed) return ;

            matchStream(input, TokenConstants.UP, null); if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred55_ExpressionWalker

        // $ANTLR start synpred56_ExpressionWalker
        public final function synpred56_ExpressionWalker_fragment():void {
            var i:Object=null;

            // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:159:3: ( ^( PostInc i= Identifier ) )
            // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:159:3: ^( PostInc i= Identifier )
            {
            matchStream(input,PostInc,FOLLOW_PostInc_in_synpred56_ExpressionWalker938); if (this.state.failed) return ;

            matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
            i=Object(matchStream(input,Identifier,FOLLOW_Identifier_in_synpred56_ExpressionWalker942)); if (this.state.failed) return ;

            matchStream(input, TokenConstants.UP, null); if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred56_ExpressionWalker

        // $ANTLR start synpred57_ExpressionWalker
        public final function synpred57_ExpressionWalker_fragment():void {
            var i:Object=null;

            // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:164:3: ( ^( PostInc ^( PropRef exp i= Identifier ) ) )
            // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:164:3: ^( PostInc ^( PropRef exp i= Identifier ) )
            {
            matchStream(input,PostInc,FOLLOW_PostInc_in_synpred57_ExpressionWalker965); if (this.state.failed) return ;

            matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
            matchStream(input,PropRef,FOLLOW_PropRef_in_synpred57_ExpressionWalker968); if (this.state.failed) return ;

            matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
            pushFollow(FOLLOW_exp_in_synpred57_ExpressionWalker970);
            exp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            i=Object(matchStream(input,Identifier,FOLLOW_Identifier_in_synpred57_ExpressionWalker974)); if (this.state.failed) return ;

            matchStream(input, TokenConstants.UP, null); if (this.state.failed) return ;

            matchStream(input, TokenConstants.UP, null); if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred57_ExpressionWalker

        // $ANTLR start synpred58_ExpressionWalker
        public final function synpred58_ExpressionWalker_fragment():void {
            var i:Object=null;

            // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:169:3: ( ^( PostDec i= Identifier ) )
            // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:169:3: ^( PostDec i= Identifier )
            {
            matchStream(input,PostDec,FOLLOW_PostDec_in_synpred58_ExpressionWalker996); if (this.state.failed) return ;

            matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
            i=Object(matchStream(input,Identifier,FOLLOW_Identifier_in_synpred58_ExpressionWalker1000)); if (this.state.failed) return ;

            matchStream(input, TokenConstants.UP, null); if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred58_ExpressionWalker

        // $ANTLR start synpred59_ExpressionWalker
        public final function synpred59_ExpressionWalker_fragment():void {
            var i:Object=null;

            // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:174:3: ( ^( PostDec ^( PropRef exp i= Identifier ) ) )
            // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:174:3: ^( PostDec ^( PropRef exp i= Identifier ) )
            {
            matchStream(input,PostDec,FOLLOW_PostDec_in_synpred59_ExpressionWalker1023); if (this.state.failed) return ;

            matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
            matchStream(input,PropRef,FOLLOW_PropRef_in_synpred59_ExpressionWalker1026); if (this.state.failed) return ;

            matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
            pushFollow(FOLLOW_exp_in_synpred59_ExpressionWalker1028);
            exp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            i=Object(matchStream(input,Identifier,FOLLOW_Identifier_in_synpred59_ExpressionWalker1032)); if (this.state.failed) return ;

            matchStream(input, TokenConstants.UP, null); if (this.state.failed) return ;

            matchStream(input, TokenConstants.UP, null); if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred59_ExpressionWalker

        // $ANTLR start synpred64_ExpressionWalker
        public final function synpred64_ExpressionWalker_fragment():void {
            var o:Object=null;

            // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:185:4: ( ^(o= ( '-' | '+' | '~' | '!' ) exp ) )
            // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:185:4: ^(o= ( '-' | '+' | '~' | '!' ) exp )
            {
            o=Object(input.LT(1));
            if ( (input.LA(1)>=79 && input.LA(1)<=80)||(input.LA(1)>=84 && input.LA(1)<=85) ) {
                input.consume();
                this.state.errorRecovery=false;this.state.failed=false;
            }
            else {
                if (this.state.backtracking>0) {this.state.failed=true; return ;}
                throw new MismatchedSetException(null,input);
            }


            matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
            pushFollow(FOLLOW_exp_in_synpred64_ExpressionWalker1133);
            exp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;

            matchStream(input, TokenConstants.UP, null); if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred64_ExpressionWalker


           // Delegated rules

        public final function synpred54_ExpressionWalker():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred54_ExpressionWalker_fragment(); // can never throw exception
            } catch (re:RecognitionException) {
                trace("impossible: "+re);
            }
            var success:Boolean = !this.state.failed;
            input.rewindTo(start);
            this.state.backtracking--;
            this.state.failed=false;
            return success;
        }
        public final function synpred53_ExpressionWalker():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred53_ExpressionWalker_fragment(); // can never throw exception
            } catch (re:RecognitionException) {
                trace("impossible: "+re);
            }
            var success:Boolean = !this.state.failed;
            input.rewindTo(start);
            this.state.backtracking--;
            this.state.failed=false;
            return success;
        }
        public final function synpred47_ExpressionWalker():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred47_ExpressionWalker_fragment(); // can never throw exception
            } catch (re:RecognitionException) {
                trace("impossible: "+re);
            }
            var success:Boolean = !this.state.failed;
            input.rewindTo(start);
            this.state.backtracking--;
            this.state.failed=false;
            return success;
        }
        public final function synpred56_ExpressionWalker():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred56_ExpressionWalker_fragment(); // can never throw exception
            } catch (re:RecognitionException) {
                trace("impossible: "+re);
            }
            var success:Boolean = !this.state.failed;
            input.rewindTo(start);
            this.state.backtracking--;
            this.state.failed=false;
            return success;
        }
        public final function synpred52_ExpressionWalker():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred52_ExpressionWalker_fragment(); // can never throw exception
            } catch (re:RecognitionException) {
                trace("impossible: "+re);
            }
            var success:Boolean = !this.state.failed;
            input.rewindTo(start);
            this.state.backtracking--;
            this.state.failed=false;
            return success;
        }
        public final function synpred6_ExpressionWalker():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred6_ExpressionWalker_fragment(); // can never throw exception
            } catch (re:RecognitionException) {
                trace("impossible: "+re);
            }
            var success:Boolean = !this.state.failed;
            input.rewindTo(start);
            this.state.backtracking--;
            this.state.failed=false;
            return success;
        }
        public final function synpred59_ExpressionWalker():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred59_ExpressionWalker_fragment(); // can never throw exception
            } catch (re:RecognitionException) {
                trace("impossible: "+re);
            }
            var success:Boolean = !this.state.failed;
            input.rewindTo(start);
            this.state.backtracking--;
            this.state.failed=false;
            return success;
        }
        public final function synpred7_ExpressionWalker():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred7_ExpressionWalker_fragment(); // can never throw exception
            } catch (re:RecognitionException) {
                trace("impossible: "+re);
            }
            var success:Boolean = !this.state.failed;
            input.rewindTo(start);
            this.state.backtracking--;
            this.state.failed=false;
            return success;
        }
        public final function synpred64_ExpressionWalker():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred64_ExpressionWalker_fragment(); // can never throw exception
            } catch (re:RecognitionException) {
                trace("impossible: "+re);
            }
            var success:Boolean = !this.state.failed;
            input.rewindTo(start);
            this.state.backtracking--;
            this.state.failed=false;
            return success;
        }
        public final function synpred58_ExpressionWalker():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred58_ExpressionWalker_fragment(); // can never throw exception
            } catch (re:RecognitionException) {
                trace("impossible: "+re);
            }
            var success:Boolean = !this.state.failed;
            input.rewindTo(start);
            this.state.backtracking--;
            this.state.failed=false;
            return success;
        }
        public final function synpred57_ExpressionWalker():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred57_ExpressionWalker_fragment(); // can never throw exception
            } catch (re:RecognitionException) {
                trace("impossible: "+re);
            }
            var success:Boolean = !this.state.failed;
            input.rewindTo(start);
            this.state.backtracking--;
            this.state.failed=false;
            return success;
        }
        public final function synpred55_ExpressionWalker():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred55_ExpressionWalker_fragment(); // can never throw exception
            } catch (re:RecognitionException) {
                trace("impossible: "+re);
            }
            var success:Boolean = !this.state.failed;
            input.rewindTo(start);
            this.state.backtracking--;
            this.state.failed=false;
            return success;
        }



        private const DFA13_eot:Array =
            DFA.unpackEncodedString("\x20\u80ff\xff");
        private const DFA13_eof:Array =
            DFA.unpackEncodedString("\x20\u80ff\xff");
        private const DFA13_min:Array =
            DFA.unpackEncodedString("\x01\x06\x01\x00\x02\u80ff\xff\x04"+
            "\x00\x18\u80ff\xff", true);
        private const DFA13_max:Array =
            DFA.unpackEncodedString("\x01\x60\x01\x00\x02\u80ff\xff\x04"+
            "\x00\x18\u80ff\xff", true);
        private const DFA13_accept:Array =
            DFA.unpackEncodedString("\x02\u80ff\xff\x01\x02\x01\x03\x04"+
            "\u80ff\xff\x01\x0c\x01\x01\x01\x0d\x01\x0e\x01\x0f\x01\x10\x01"+
            "\x11\x01\x12\x01\x13\x01\x14\x01\x15\x01\x16\x01\x17\x01\x18"+
            "\x01\x19\x01\x1a\x01\x04\x01\x05\x01\x06\x01\x07\x01\x08\x01"+
            "\x09\x01\x0a\x01\x0b");
        private const DFA13_special:Array =
            DFA.unpackEncodedString("\x01\u80ff\xff\x01\x00\x02\u80ff\xff"+
            "\x01\x01\x01\x02\x01\x03\x01\x04\x18\u80ff\xff");
        private const DFA13_transition:Array = [
                DFA.unpackEncodedString("\x01\x0b\x01\x0c\x01\x0d\x01\x08"+
                "\x01\x15\x01\x16\x03\u80ff\xff\x01\x17\x02\u80ff\xff\x01"+
                "\x04\x01\x06\x01\x05\x01\x07\x01\x14\x01\x0e\x01\x0f\x20"+
                "\u80ff\xff\x02\x02\x02\x03\x12\x09\x02\x01\x03\x09\x02\x0a"+
                "\x02\u80ff\xff\x01\x10\x01\x11\x01\x12\x05\u80ff\xff\x01"+
                "\x13"),
                DFA.unpackEncodedString("\x01\u80ff\xff"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x01\u80ff\xff"),
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
            private function DFA13_specialStateTransition(dfa:DFA, s:int, _input:IntStream):int {
                var input:TreeNodeStream = TreeNodeStream(_input);
            	var _s:int = s;
                switch ( s ) {
                        case 0 : 
                            var LA13_1:int = input.LA(1);

                             
                            var index13_1:int = input.index;
                            input.rewind();
                            s = -1;
                            if ( (synpred47_ExpressionWalker()) ) {s = 9;}

                            else if ( (synpred64_ExpressionWalker()) ) {s = 10;}

                             
                            input.seek(index13_1);
                            if ( s>=0 ) return s;
                            break;
                        case 1 : 
                            var LA13_4:int = input.LA(1);

                             
                            var index13_4:int = input.index;
                            input.rewind();
                            s = -1;
                            if ( (synpred52_ExpressionWalker()) ) {s = 24;}

                            else if ( (synpred53_ExpressionWalker()) ) {s = 25;}

                             
                            input.seek(index13_4);
                            if ( s>=0 ) return s;
                            break;
                        case 2 : 
                            var LA13_5:int = input.LA(1);

                             
                            var index13_5:int = input.index;
                            input.rewind();
                            s = -1;
                            if ( (synpred54_ExpressionWalker()) ) {s = 26;}

                            else if ( (synpred55_ExpressionWalker()) ) {s = 27;}

                             
                            input.seek(index13_5);
                            if ( s>=0 ) return s;
                            break;
                        case 3 : 
                            var LA13_6:int = input.LA(1);

                             
                            var index13_6:int = input.index;
                            input.rewind();
                            s = -1;
                            if ( (synpred56_ExpressionWalker()) ) {s = 28;}

                            else if ( (synpred57_ExpressionWalker()) ) {s = 29;}

                             
                            input.seek(index13_6);
                            if ( s>=0 ) return s;
                            break;
                        case 4 : 
                            var LA13_7:int = input.LA(1);

                             
                            var index13_7:int = input.index;
                            input.rewind();
                            s = -1;
                            if ( (synpred58_ExpressionWalker()) ) {s = 30;}

                            else if ( (synpred59_ExpressionWalker()) ) {s = 31;}

                             
                            input.seek(index13_7);
                            if ( s>=0 ) return s;
                            break;
                }
                if (this.state.backtracking>0) {this.state.failed=true; return -1;}
                throw dfa.error(new NoViableAltException(dfa.description, 13, _s, input));
            }

        protected var dfa13:DFA;  // initialized in constructor
     

        public static const FOLLOW_stmtList_in_main63:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_StmtList_in_stmtList74:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_stmt_in_stmtList76:BitSet = new BitSet([0x00003028, 0x00000000]);
        public static const FOLLOW_EOF_in_stmtList83:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_instrList_in_stmt94:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_ifStmt_in_stmt99:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_whileStmt_in_stmt104:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_InstrList_in_instrList117:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_instr_in_instrList119:BitSet = new BitSet([0x01FF8FC8, 0xFE3FFC00, 0x073FFFFF, 0x00000001]);
        public static const FOLLOW_IfStmt_in_ifStmt137:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_ifStmt142:BitSet = new BitSet([0x00000010, 0x00000000]);
        public static const FOLLOW_stmtList_in_ifStmt154:BitSet = new BitSet([0x00000010, 0x00000000]);
        public static const FOLLOW_stmtList_in_ifStmt165:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_IfStmt_in_ifStmt188:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_ifStmt193:BitSet = new BitSet([0x00000010, 0x00000000]);
        public static const FOLLOW_stmtList_in_ifStmt205:BitSet = new BitSet([0x00001000, 0x00000000]);
        public static const FOLLOW_ifStmt_in_ifStmt216:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_IfStmt_in_ifStmt240:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_ifStmt245:BitSet = new BitSet([0x00000010, 0x00000000]);
        public static const FOLLOW_stmtList_in_ifStmt257:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_WhileStmt_in_whileStmt284:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_whileStmt295:BitSet = new BitSet([0x00000010, 0x00000000]);
        public static const FOLLOW_stmtList_in_whileStmt307:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_exp_in_instr328:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_ret_in_instr333:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_set_in_exp343:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_local_in_exp348:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_value_in_exp353:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_set_in_set371:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_set422:BitSet = new BitSet([0x00400180, 0x00000000]);
        public static const FOLLOW_seti_in_set425:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_sete_in_set429:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_setr_in_set433:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_Local_in_local461:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_local472:BitSet = new BitSet([0x00400000, 0x00000000]);
        public static const FOLLOW_Identifier_in_local476:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_Identifier_in_local489:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_Identifier_in_seti515:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_PropExp_in_sete545:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_sete547:BitSet = new BitSet([0x01FE8FC0, 0xFE3FFC00, 0x073FFFFF, 0x00000001]);
        public static const FOLLOW_exp_in_sete549:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_PropRef_in_setr567:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_setr569:BitSet = new BitSet([0x00400000, 0x00000000]);
        public static const FOLLOW_Identifier_in_setr573:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_set_in_value597:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_value692:BitSet = new BitSet([0x01FE8FC0, 0xFE3FFC00, 0x073FFFFF, 0x00000001]);
        public static const FOLLOW_exp_in_value694:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_set_in_value723:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_value734:BitSet = new BitSet([0x01FE8FC0, 0xFE3FFC00, 0x073FFFFF, 0x00000001]);
        public static const FOLLOW_exp_in_value746:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_set_in_value774:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_value785:BitSet = new BitSet([0x01FE8FC0, 0xFE3FFC00, 0x073FFFFF, 0x00000001]);
        public static const FOLLOW_exp_in_value797:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_PreInc_in_value822:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_Identifier_in_value826:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_PreInc_in_value849:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_PropRef_in_value852:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_value854:BitSet = new BitSet([0x00400000, 0x00000000]);
        public static const FOLLOW_Identifier_in_value858:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_PreDec_in_value880:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_Identifier_in_value884:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_PreDec_in_value907:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_PropRef_in_value910:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_value912:BitSet = new BitSet([0x00400000, 0x00000000]);
        public static const FOLLOW_Identifier_in_value916:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_PostInc_in_value938:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_Identifier_in_value942:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_PostInc_in_value965:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_PropRef_in_value968:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_value970:BitSet = new BitSet([0x00400000, 0x00000000]);
        public static const FOLLOW_Identifier_in_value974:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_PostDec_in_value996:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_Identifier_in_value1000:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_PostDec_in_value1023:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_PropRef_in_value1026:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_value1028:BitSet = new BitSet([0x00400000, 0x00000000]);
        public static const FOLLOW_Identifier_in_value1032:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_CondExp_in_value1053:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_value1064:BitSet = new BitSet([0x01FE8FC0, 0xFE3FFC00, 0x073FFFFF, 0x00000001]);
        public static const FOLLOW_exp_in_value1076:BitSet = new BitSet([0x01FE8FC0, 0xFE3FFC00, 0x073FFFFF, 0x00000001]);
        public static const FOLLOW_exp_in_value1088:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_set_in_value1114:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_value1133:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_FuncCall_in_value1156:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_value1158:BitSet = new BitSet([0x01FE8FC8, 0xFE3FFC00, 0x073FFFFF, 0x00000001]);
        public static const FOLLOW_PropRef_in_value1174:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_value1176:BitSet = new BitSet([0x00400000, 0x00000000]);
        public static const FOLLOW_Identifier_in_value1180:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_PropExp_in_value1205:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_value1207:BitSet = new BitSet([0x01FE8FC0, 0xFE3FFC00, 0x073FFFFF, 0x00000001]);
        public static const FOLLOW_exp_in_value1209:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_NumberLiteral_in_value1223:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_StringLiteral_in_value1237:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_88_in_value1251:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_89_in_value1264:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_90_in_value1277:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_96_in_value1292:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_Identifier_in_value1309:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_CreateArray_in_value1356:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_value1358:BitSet = new BitSet([0x01FE8FC8, 0xFE3FFC00, 0x073FFFFF, 0x00000001]);
        public static const FOLLOW_CreateObject_in_value1378:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_Identifier_in_value1391:BitSet = new BitSet([0x01FE8FC0, 0xFE3FFC00, 0x073FFFFF, 0x00000001]);
        public static const FOLLOW_exp_in_value1393:BitSet = new BitSet([0x01400008, 0x00000000]);
        public static const FOLLOW_StringLiteral_in_value1406:BitSet = new BitSet([0x01FE8FC0, 0xFE3FFC00, 0x073FFFFF, 0x00000001]);
        public static const FOLLOW_exp_in_value1408:BitSet = new BitSet([0x01400008, 0x00000000]);
        public static const FOLLOW_funcDef_in_value1434:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_FuncDef_in_funcDef1450:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_arg_in_funcDef1462:BitSet = new BitSet([0x00400010, 0x00000000]);
        public static const FOLLOW_stmtList_in_funcDef1468:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_Identifier_in_arg1491:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_Return_in_ret1512:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_ret1514:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_Return_in_ret1527:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_IfStmt_in_synpred6_ExpressionWalker137:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_synpred6_ExpressionWalker142:BitSet = new BitSet([0x00000010, 0x00000000]);
        public static const FOLLOW_stmtList_in_synpred6_ExpressionWalker154:BitSet = new BitSet([0x00000010, 0x00000000]);
        public static const FOLLOW_stmtList_in_synpred6_ExpressionWalker165:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_IfStmt_in_synpred7_ExpressionWalker188:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_synpred7_ExpressionWalker193:BitSet = new BitSet([0x00000010, 0x00000000]);
        public static const FOLLOW_stmtList_in_synpred7_ExpressionWalker205:BitSet = new BitSet([0x00001000, 0x00000000]);
        public static const FOLLOW_ifStmt_in_synpred7_ExpressionWalker216:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_set_in_synpred47_ExpressionWalker597:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_synpred47_ExpressionWalker692:BitSet = new BitSet([0x01FE8FC0, 0xFE3FFC00, 0x073FFFFF, 0x00000001]);
        public static const FOLLOW_exp_in_synpred47_ExpressionWalker694:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_PreInc_in_synpred52_ExpressionWalker822:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_Identifier_in_synpred52_ExpressionWalker826:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_PreInc_in_synpred53_ExpressionWalker849:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_PropRef_in_synpred53_ExpressionWalker852:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_synpred53_ExpressionWalker854:BitSet = new BitSet([0x00400000, 0x00000000]);
        public static const FOLLOW_Identifier_in_synpred53_ExpressionWalker858:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_PreDec_in_synpred54_ExpressionWalker880:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_Identifier_in_synpred54_ExpressionWalker884:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_PreDec_in_synpred55_ExpressionWalker907:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_PropRef_in_synpred55_ExpressionWalker910:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_synpred55_ExpressionWalker912:BitSet = new BitSet([0x00400000, 0x00000000]);
        public static const FOLLOW_Identifier_in_synpred55_ExpressionWalker916:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_PostInc_in_synpred56_ExpressionWalker938:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_Identifier_in_synpred56_ExpressionWalker942:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_PostInc_in_synpred57_ExpressionWalker965:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_PropRef_in_synpred57_ExpressionWalker968:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_synpred57_ExpressionWalker970:BitSet = new BitSet([0x00400000, 0x00000000]);
        public static const FOLLOW_Identifier_in_synpred57_ExpressionWalker974:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_PostDec_in_synpred58_ExpressionWalker996:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_Identifier_in_synpred58_ExpressionWalker1000:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_PostDec_in_synpred59_ExpressionWalker1023:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_PropRef_in_synpred59_ExpressionWalker1026:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_synpred59_ExpressionWalker1028:BitSet = new BitSet([0x00400000, 0x00000000]);
        public static const FOLLOW_Identifier_in_synpred59_ExpressionWalker1032:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_set_in_synpred64_ExpressionWalker1114:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_synpred64_ExpressionWalker1133:BitSet = new BitSet([0x00000008, 0x00000000]);

    }
}