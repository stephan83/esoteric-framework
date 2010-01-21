// $ANTLR 3.2 Sep 23, 2009 12:02:23 C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g 2010-01-21 19:04:30
package com.esoteric.expressions {
    import org.antlr.runtime.*;
        import org.antlr.runtime.tree.*;    

    public class ExpressionWalker extends TreeParser {
        public static const tokenNames:Array = [
            "<invalid>", "<EOR>", "<DOWN>", "<UP>", "StmtList", "InstrList", "FuncCall", "PropRef", "PropExp", "CondExp", "CreateArray", "IfStmt", "WhileStmt", "ForStmt", "FuncDef", "Return", "NumberLiteral", "StringLiteral", "Identifier", "LineComment", "MultilineComment", "Digit", "Exponent", "HexDigit", "EscapeSequence", "WhiteSpace", "Letter", "UnicodeEscapeChar", "'if'", "'('", "')'", "'else'", "'while'", "'{'", "'}'", "';'", "'='", "'*='", "'/='", "'%='", "'+='", "'-='", "'<<='", "'>>='", "'>>>='", "'&='", "'^='", "'|='", "'?'", "':'", "'||'", "'or'", "'&&'", "'and'", "'|'", "'^'", "'&'", "'=='", "'!='", "'==='", "'!=='", "'<'", "'lt'", "'>'", "'gt'", "'<='", "'lte'", "'>='", "'gte'", "'<<'", "'>>'", "'>>>'", "'+'", "'-'", "'*'", "'/'", "'%'", "'~'", "'!'", "'true'", "'false'", "'null'", "'['", "']'", "'.'", "'function'", "','", "'return'"
        ];
        public static const T__68:int=68;
        public static const T__69:int=69;
        public static const T__66:int=66;
        public static const T__67:int=67;
        public static const T__64:int=64;
        public static const T__29:int=29;
        public static const StmtList:int=4;
        public static const T__65:int=65;
        public static const T__28:int=28;
        public static const T__62:int=62;
        public static const T__63:int=63;
        public static const LineComment:int=19;
        public static const Exponent:int=22;
        public static const T__61:int=61;
        public static const T__60:int=60;
        public static const EOF:int=-1;
        public static const HexDigit:int=23;
        public static const PropExp:int=8;
        public static const Identifier:int=18;
        public static const T__55:int=55;
        public static const T__56:int=56;
        public static const T__57:int=57;
        public static const T__58:int=58;
        public static const T__51:int=51;
        public static const FuncDef:int=14;
        public static const T__52:int=52;
        public static const T__53:int=53;
        public static const T__54:int=54;
        public static const WhileStmt:int=12;
        public static const T__59:int=59;
        public static const IfStmt:int=11;
        public static const CondExp:int=9;
        public static const WhiteSpace:int=25;
        public static const Return:int=15;
        public static const T__50:int=50;
        public static const ForStmt:int=13;
        public static const CreateArray:int=10;
        public static const T__42:int=42;
        public static const T__43:int=43;
        public static const T__40:int=40;
        public static const T__41:int=41;
        public static const T__46:int=46;
        public static const T__80:int=80;
        public static const T__47:int=47;
        public static const T__81:int=81;
        public static const T__44:int=44;
        public static const T__82:int=82;
        public static const T__45:int=45;
        public static const T__83:int=83;
        public static const UnicodeEscapeChar:int=27;
        public static const T__48:int=48;
        public static const NumberLiteral:int=16;
        public static const T__49:int=49;
        public static const InstrList:int=5;
        public static const T__85:int=85;
        public static const Digit:int=21;
        public static const T__84:int=84;
        public static const T__87:int=87;
        public static const T__86:int=86;
        public static const StringLiteral:int=17;
        public static const T__30:int=30;
        public static const T__31:int=31;
        public static const T__32:int=32;
        public static const T__33:int=33;
        public static const T__71:int=71;
        public static const T__34:int=34;
        public static const T__72:int=72;
        public static const T__35:int=35;
        public static const T__36:int=36;
        public static const T__70:int=70;
        public static const T__37:int=37;
        public static const T__38:int=38;
        public static const FuncCall:int=6;
        public static const T__39:int=39;
        public static const PropRef:int=7;
        public static const T__76:int=76;
        public static const T__75:int=75;
        public static const MultilineComment:int=20;
        public static const T__74:int=74;
        public static const T__73:int=73;
        public static const EscapeSequence:int=24;
        public static const Letter:int=26;
        public static const T__79:int=79;
        public static const T__78:int=78;
        public static const T__77:int=77;

        // delegates
        // delegators


            public function ExpressionWalker(input:TreeNodeStream, state:RecognizerSharedState = null) {
                super(input, state);

                dfa11 = new DFA(this, 11,
                            "111:1: value : ( ^(o= ( '||' | 'or' | '&&' | 'and' | '|' | '^' | '&' | '==' | '!=' | '===' | '!==' | '<' | 'lt' | '>' | 'gt' | '<=' | 'lte' | '>=' | 'gte' | '<<' | '>>' | '>>>' | '+' | '-' | '*' | '/' | '%' ) exp exp ) | ^( CondExp exp exp exp ) | ^(o= ( '-' | '+' | '~' | '!' ) exp ) | ^(f= FuncCall ( exp )+ ) | ^( PropRef exp i= Identifier ) | ^( PropExp exp exp ) | NumberLiteral | StringLiteral | 'true' | 'false' | 'null' | i= Identifier | ^(a= CreateArray ( exp )* ) | funcDef );",
                            DFA11_eot, DFA11_eof, DFA11_min,
                            DFA11_max, DFA11_accept, DFA11_special,
                            DFA11_transition, DFA11_specialStateTransition);

                this.state.ruleMemo = new Array(84+1);
                 
            }
            

        public override function get tokenNames():Array { return ExpressionWalker.tokenNames; }
        public override function get grammarFileName():String { return "C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g"; }


        	private var _codegen:ExpressionCodegen = new ExpressionCodegen();
        	
        	public function get instructions():Array { return _codegen.instructions; }
        			
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

                                if ( (LA1_0==5||(LA1_0>=11 && LA1_0<=12)) ) {
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

                        if ( ((LA4_0>=6 && LA4_0<=10)||(LA4_0>=14 && LA4_0<=18)||(LA4_0>=36 && LA4_0<=47)||(LA4_0>=50 && LA4_0<=81)) ) {
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

                if ( (LA5_0==11) ) {
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

                if ( ((LA6_0>=6 && LA6_0<=10)||LA6_0==14||(LA6_0>=16 && LA6_0<=18)||(LA6_0>=36 && LA6_0<=47)||(LA6_0>=50 && LA6_0<=81)) ) {
                    alt6=1;
                }
                else if ( (LA6_0==15) ) {
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
        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:91:1: exp : ( set | value );
        public final function exp():void {
            var exp_StartIndex:int = input.index;
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 8) ) { return ; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:91:5: ( set | value )
                var alt7:int=2;
                var LA7_0:int = input.LA(1);

                if ( ((LA7_0>=36 && LA7_0<=47)) ) {
                    alt7=1;
                }
                else if ( ((LA7_0>=6 && LA7_0<=10)||LA7_0==14||(LA7_0>=16 && LA7_0<=18)||(LA7_0>=50 && LA7_0<=81)) ) {
                    alt7=2;
                }
                else {
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
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:92:4: value
                        {
                        pushFollow(FOLLOW_value_in_exp348);
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
        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:95:1: set : ^(o= ( '=' | '*=' | '/=' | '%=' | '+=' | '-=' | '<<=' | '>>=' | '>>>=' | '&=' | '^=' | '|=' ) exp ( seti | sete | setr ) ) ;
        public final function set():void {
            var set_StartIndex:int = input.index;
            var o:Object=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 9) ) { return ; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:95:5: ( ^(o= ( '=' | '*=' | '/=' | '%=' | '+=' | '-=' | '<<=' | '>>=' | '>>>=' | '&=' | '^=' | '|=' ) exp ( seti | sete | setr ) ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:95:7: ^(o= ( '=' | '*=' | '/=' | '%=' | '+=' | '-=' | '<<=' | '>>=' | '>>>=' | '&=' | '^=' | '|=' ) exp ( seti | sete | setr ) )
                {
                o=Object(input.LT(1));
                if ( (input.LA(1)>=36 && input.LA(1)<=47) ) {
                    input.consume();
                    this.state.errorRecovery=false;this.state.failed=false;
                }
                else {
                    if (this.state.backtracking>0) {this.state.failed=true; return ;}
                    throw new MismatchedSetException(null,input);
                }


                matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
                pushFollow(FOLLOW_exp_in_set417);
                exp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return ;
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:97:8: ( seti | sete | setr )
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
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:97:9: seti
                        {
                        pushFollow(FOLLOW_seti_in_set420);
                        seti();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return ;

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:97:16: sete
                        {
                        pushFollow(FOLLOW_sete_in_set424);
                        sete();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return ;

                        }
                        break;
                    case 3 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:97:23: setr
                        {
                        pushFollow(FOLLOW_setr_in_set428);
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

        // $ANTLR start seti
        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:101:1: seti : i= Identifier ;
        public final function seti():void {
            var seti_StartIndex:int = input.index;
            var i:Object=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 10) ) { return ; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:101:6: (i= Identifier )
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:101:8: i= Identifier
                {
                i=Object(matchStream(input,Identifier,FOLLOW_Identifier_in_seti453)); if (this.state.failed) return ;
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
                if ( this.state.backtracking>0 ) { memoize(input, 10, seti_StartIndex); }
            }
            return ;
        }
        // $ANTLR end seti

        // $ANTLR start sete
        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:105:1: sete : ^( PropExp exp exp ) ;
        public final function sete():void {
            var sete_StartIndex:int = input.index;
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 11) ) { return ; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:105:6: ( ^( PropExp exp exp ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:105:8: ^( PropExp exp exp )
                {
                matchStream(input,PropExp,FOLLOW_PropExp_in_sete483); if (this.state.failed) return ;

                matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
                pushFollow(FOLLOW_exp_in_sete485);
                exp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return ;
                pushFollow(FOLLOW_exp_in_sete487);
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
                if ( this.state.backtracking>0 ) { memoize(input, 11, sete_StartIndex); }
            }
            return ;
        }
        // $ANTLR end sete

        // $ANTLR start setr
        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:108:1: setr : ^( PropRef exp i= Identifier ) ;
        public final function setr():void {
            var setr_StartIndex:int = input.index;
            var i:Object=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 12) ) { return ; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:108:6: ( ^( PropRef exp i= Identifier ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:108:8: ^( PropRef exp i= Identifier )
                {
                matchStream(input,PropRef,FOLLOW_PropRef_in_setr505); if (this.state.failed) return ;

                matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
                pushFollow(FOLLOW_exp_in_setr507);
                exp();

                state._fsp = state._fsp - 1;
                if (this.state.failed) return ;
                i=Object(matchStream(input,Identifier,FOLLOW_Identifier_in_setr511)); if (this.state.failed) return ;

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
                if ( this.state.backtracking>0 ) { memoize(input, 12, setr_StartIndex); }
            }
            return ;
        }
        // $ANTLR end setr

        // $ANTLR start value
        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:111:1: value : ( ^(o= ( '||' | 'or' | '&&' | 'and' | '|' | '^' | '&' | '==' | '!=' | '===' | '!==' | '<' | 'lt' | '>' | 'gt' | '<=' | 'lte' | '>=' | 'gte' | '<<' | '>>' | '>>>' | '+' | '-' | '*' | '/' | '%' ) exp exp ) | ^( CondExp exp exp exp ) | ^(o= ( '-' | '+' | '~' | '!' ) exp ) | ^(f= FuncCall ( exp )+ ) | ^( PropRef exp i= Identifier ) | ^( PropExp exp exp ) | NumberLiteral | StringLiteral | 'true' | 'false' | 'null' | i= Identifier | ^(a= CreateArray ( exp )* ) | funcDef );
        public final function value():TreeRuleReturnScope {
            var retval:TreeRuleReturnScope = new TreeRuleReturnScope();
            retval.start = input.LT(1);
            var value_StartIndex:int = input.index;
            var o:Object=null;
            var f:Object=null;
            var i:Object=null;
            var a:Object=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 13) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:111:7: ( ^(o= ( '||' | 'or' | '&&' | 'and' | '|' | '^' | '&' | '==' | '!=' | '===' | '!==' | '<' | 'lt' | '>' | 'gt' | '<=' | 'lte' | '>=' | 'gte' | '<<' | '>>' | '>>>' | '+' | '-' | '*' | '/' | '%' ) exp exp ) | ^( CondExp exp exp exp ) | ^(o= ( '-' | '+' | '~' | '!' ) exp ) | ^(f= FuncCall ( exp )+ ) | ^( PropRef exp i= Identifier ) | ^( PropExp exp exp ) | NumberLiteral | StringLiteral | 'true' | 'false' | 'null' | i= Identifier | ^(a= CreateArray ( exp )* ) | funcDef )
                var alt11:int=14;
                alt11 = dfa11.predict(input);
                switch (alt11) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:111:9: ^(o= ( '||' | 'or' | '&&' | 'and' | '|' | '^' | '&' | '==' | '!=' | '===' | '!==' | '<' | 'lt' | '>' | 'gt' | '<=' | 'lte' | '>=' | 'gte' | '<<' | '>>' | '>>>' | '+' | '-' | '*' | '/' | '%' ) exp exp )
                        {
                        o=Object(input.LT(1));
                        if ( (input.LA(1)>=50 && input.LA(1)<=76) ) {
                            input.consume();
                            this.state.errorRecovery=false;this.state.failed=false;
                        }
                        else {
                            if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                            throw new MismatchedSetException(null,input);
                        }


                        matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return retval;
                        pushFollow(FOLLOW_exp_in_value645);
                        exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        pushFollow(FOLLOW_exp_in_value647);
                        exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;

                        matchStream(input, TokenConstants.UP, null); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                           _codegen.binop((o!=null?o.text:null)) 
                        }

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:116:4: ^( CondExp exp exp exp )
                        {
                        matchStream(input,CondExp,FOLLOW_CondExp_in_value672); if (this.state.failed) return retval;

                        matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return retval;
                        pushFollow(FOLLOW_exp_in_value683);
                        exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                           _codegen.beginif() 
                        }
                        pushFollow(FOLLOW_exp_in_value695);
                        exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                           _codegen.beginelse() 
                        }
                        pushFollow(FOLLOW_exp_in_value707);
                        exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                           _codegen.endif() 
                        }

                        matchStream(input, TokenConstants.UP, null); if (this.state.failed) return retval;

                        }
                        break;
                    case 3 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:123:4: ^(o= ( '-' | '+' | '~' | '!' ) exp )
                        {
                        o=Object(input.LT(1));
                        if ( (input.LA(1)>=72 && input.LA(1)<=73)||(input.LA(1)>=77 && input.LA(1)<=78) ) {
                            input.consume();
                            this.state.errorRecovery=false;this.state.failed=false;
                        }
                        else {
                            if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                            throw new MismatchedSetException(null,input);
                        }


                        matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return retval;
                        pushFollow(FOLLOW_exp_in_value752);
                        exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;

                        matchStream(input, TokenConstants.UP, null); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                           _codegen.unaryop((o!=null?o.text:null)) 
                        }

                        }
                        break;
                    case 4 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:128:4: ^(f= FuncCall ( exp )+ )
                        {
                        f=Object(matchStream(input,FuncCall,FOLLOW_FuncCall_in_value775)); if (this.state.failed) return retval;

                        matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return retval;
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:128:17: ( exp )+
                        var cnt9:int=0;
                        loop9:
                        do {
                            var alt9:int=2;
                            var LA9_0:int = input.LA(1);

                            if ( ((LA9_0>=6 && LA9_0<=10)||LA9_0==14||(LA9_0>=16 && LA9_0<=18)||(LA9_0>=36 && LA9_0<=47)||(LA9_0>=50 && LA9_0<=81)) ) {
                                alt9=1;
                            }


                            switch (alt9) {
                        	case 1 :
                        	    // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:0:0: exp
                        	    {
                        	    pushFollow(FOLLOW_exp_in_value777);
                        	    exp();

                        	    state._fsp = state._fsp - 1;
                        	    if (this.state.failed) return retval;

                        	    }
                        	    break;

                        	default :
                        	    if ( cnt9 >= 1 ) break loop9;
                        	    if (this.state.backtracking>0) {this.state.failed=true; return retval;}
                                    throw new EarlyExitException(9, input);

                            }
                            cnt9++;
                        } while (true);


                        matchStream(input, TokenConstants.UP, null); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                           _codegen.call(f.childCount - 1); 
                        }

                        }
                        break;
                    case 5 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:130:4: ^( PropRef exp i= Identifier )
                        {
                        matchStream(input,PropRef,FOLLOW_PropRef_in_value793); if (this.state.failed) return retval;

                        matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return retval;
                        pushFollow(FOLLOW_exp_in_value795);
                        exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        i=Object(matchStream(input,Identifier,FOLLOW_Identifier_in_value799)); if (this.state.failed) return retval;

                        matchStream(input, TokenConstants.UP, null); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                           _codegen.push((i!=null?i.text:null)); 
                        }
                        if ( this.state.backtracking==0 ) {
                           _codegen.load(); 
                        }

                        }
                        break;
                    case 6 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:133:4: ^( PropExp exp exp )
                        {
                        matchStream(input,PropExp,FOLLOW_PropExp_in_value824); if (this.state.failed) return retval;

                        matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return retval;
                        pushFollow(FOLLOW_exp_in_value826);
                        exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;
                        pushFollow(FOLLOW_exp_in_value828);
                        exp();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return retval;

                        matchStream(input, TokenConstants.UP, null); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                           _codegen.load(); 
                        }

                        }
                        break;
                    case 7 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:135:4: NumberLiteral
                        {
                        matchStream(input,NumberLiteral,FOLLOW_NumberLiteral_in_value842); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                           _codegen.push(Number(input.tokenStream.toStringWithRange(
                            input.treeAdaptor.getTokenStartIndex(retval.start),
                            input.treeAdaptor.getTokenStopIndex(retval.start)))); 
                        }

                        }
                        break;
                    case 8 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:137:4: StringLiteral
                        {
                        matchStream(input,StringLiteral,FOLLOW_StringLiteral_in_value856); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                           _codegen.push(cleanUpString(input.tokenStream.toStringWithRange(
                            input.treeAdaptor.getTokenStartIndex(retval.start),
                            input.treeAdaptor.getTokenStopIndex(retval.start)))); 
                        }

                        }
                        break;
                    case 9 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:139:4: 'true'
                        {
                        matchStream(input,79,FOLLOW_79_in_value870); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                           _codegen.push(true); 
                        }

                        }
                        break;
                    case 10 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:140:4: 'false'
                        {
                        matchStream(input,80,FOLLOW_80_in_value883); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                           _codegen.push(false); 
                        }

                        }
                        break;
                    case 11 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:141:4: 'null'
                        {
                        matchStream(input,81,FOLLOW_81_in_value896); if (this.state.failed) return retval;
                        if ( this.state.backtracking==0 ) {
                           _codegen.push(null); 
                        }

                        }
                        break;
                    case 12 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:143:4: i= Identifier
                        {
                        i=Object(matchStream(input,Identifier,FOLLOW_Identifier_in_value913)); if (this.state.failed) return retval;
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
                    case 13 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:147:4: ^(a= CreateArray ( exp )* )
                        {
                        a=Object(matchStream(input,CreateArray,FOLLOW_CreateArray_in_value960)); if (this.state.failed) return retval;

                        if ( input.LA(1)==TokenConstants.DOWN ) {
                            matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return retval;
                            // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:147:20: ( exp )*
                            loop10:
                            do {
                                var alt10:int=2;
                                var LA10_0:int = input.LA(1);

                                if ( ((LA10_0>=6 && LA10_0<=10)||LA10_0==14||(LA10_0>=16 && LA10_0<=18)||(LA10_0>=36 && LA10_0<=47)||(LA10_0>=50 && LA10_0<=81)) ) {
                                    alt10=1;
                                }


                                switch (alt10) {
                            	case 1 :
                            	    // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:0:0: exp
                            	    {
                            	    pushFollow(FOLLOW_exp_in_value962);
                            	    exp();

                            	    state._fsp = state._fsp - 1;
                            	    if (this.state.failed) return retval;

                            	    }
                            	    break;

                            	default :
                            	    break loop10;
                                }
                            } while (true);


                            matchStream(input, TokenConstants.UP, null); if (this.state.failed) return retval;
                        }
                        if ( this.state.backtracking==0 ) {
                           _codegen.array(a.childCount); 
                        }

                        }
                        break;
                    case 14 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:148:4: funcDef
                        {
                        pushFollow(FOLLOW_funcDef_in_value975);
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
                if ( this.state.backtracking>0 ) { memoize(input, 13, value_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end value

        // $ANTLR start funcDef
        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:151:1: funcDef : ^( FuncDef ( arg )* stmtList ) ;
        public final function funcDef():void {
            var funcDef_StartIndex:int = input.index;
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 14) ) { return ; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:151:9: ( ^( FuncDef ( arg )* stmtList ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:151:11: ^( FuncDef ( arg )* stmtList )
                {
                matchStream(input,FuncDef,FOLLOW_FuncDef_in_funcDef991); if (this.state.failed) return ;

                if ( this.state.backtracking==0 ) {
                   _codegen.beginfunc() 
                }

                matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:153:4: ( arg )*
                loop12:
                do {
                    var alt12:int=2;
                    var LA12_0:int = input.LA(1);

                    if ( (LA12_0==18) ) {
                        alt12=1;
                    }


                    switch (alt12) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:0:0: arg
                	    {
                	    pushFollow(FOLLOW_arg_in_funcDef1003);
                	    arg();

                	    state._fsp = state._fsp - 1;
                	    if (this.state.failed) return ;

                	    }
                	    break;

                	default :
                	    break loop12;
                    }
                } while (true);

                pushFollow(FOLLOW_stmtList_in_funcDef1009);
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
                if ( this.state.backtracking>0 ) { memoize(input, 14, funcDef_StartIndex); }
            }
            return ;
        }
        // $ANTLR end funcDef

        // $ANTLR start arg
        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:158:1: arg : i= Identifier ;
        public final function arg():void {
            var arg_StartIndex:int = input.index;
            var i:Object=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 15) ) { return ; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:158:5: (i= Identifier )
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:158:7: i= Identifier
                {
                i=Object(matchStream(input,Identifier,FOLLOW_Identifier_in_arg1032)); if (this.state.failed) return ;
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
                if ( this.state.backtracking>0 ) { memoize(input, 15, arg_StartIndex); }
            }
            return ;
        }
        // $ANTLR end arg

        // $ANTLR start ret
        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:161:1: ret : ( ^( Return exp ) | Return );
        public final function ret():void {
            var ret_StartIndex:int = input.index;
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 16) ) { return ; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:162:2: ( ^( Return exp ) | Return )
                var alt13:int=2;
                var LA13_0:int = input.LA(1);

                if ( (LA13_0==15) ) {
                    var LA13_1:int = input.LA(2);

                    if ( (LA13_1==2) ) {
                        alt13=1;
                    }
                    else if ( (LA13_1==-1||LA13_1==3||(LA13_1>=6 && LA13_1<=10)||(LA13_1>=14 && LA13_1<=18)||(LA13_1>=36 && LA13_1<=47)||(LA13_1>=50 && LA13_1<=81)) ) {
                        alt13=2;
                    }
                    else {
                        if (this.state.backtracking>0) {this.state.failed=true; return ;}
                        throw new NoViableAltException("", 13, 1, input);

                    }
                }
                else {
                    if (this.state.backtracking>0) {this.state.failed=true; return ;}
                    throw new NoViableAltException("", 13, 0, input);

                }
                switch (alt13) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:163:3: ^( Return exp )
                        {
                        matchStream(input,Return,FOLLOW_Return_in_ret1053); if (this.state.failed) return ;

                        matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
                        pushFollow(FOLLOW_exp_in_ret1055);
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
                        // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:164:4: Return
                        {
                        matchStream(input,Return,FOLLOW_Return_in_ret1068); if (this.state.failed) return ;
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
                if ( this.state.backtracking>0 ) { memoize(input, 16, ret_StartIndex); }
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

        // $ANTLR start synpred49_ExpressionWalker
        public final function synpred49_ExpressionWalker_fragment():void {
            var o:Object=null;

            // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:111:9: ( ^(o= ( '||' | 'or' | '&&' | 'and' | '|' | '^' | '&' | '==' | '!=' | '===' | '!==' | '<' | 'lt' | '>' | 'gt' | '<=' | 'lte' | '>=' | 'gte' | '<<' | '>>' | '>>>' | '+' | '-' | '*' | '/' | '%' ) exp exp ) )
            // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:111:9: ^(o= ( '||' | 'or' | '&&' | 'and' | '|' | '^' | '&' | '==' | '!=' | '===' | '!==' | '<' | 'lt' | '>' | 'gt' | '<=' | 'lte' | '>=' | 'gte' | '<<' | '>>' | '>>>' | '+' | '-' | '*' | '/' | '%' ) exp exp )
            {
            o=Object(input.LT(1));
            if ( (input.LA(1)>=50 && input.LA(1)<=76) ) {
                input.consume();
                this.state.errorRecovery=false;this.state.failed=false;
            }
            else {
                if (this.state.backtracking>0) {this.state.failed=true; return ;}
                throw new MismatchedSetException(null,input);
            }


            matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
            pushFollow(FOLLOW_exp_in_synpred49_ExpressionWalker645);
            exp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;
            pushFollow(FOLLOW_exp_in_synpred49_ExpressionWalker647);
            exp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;

            matchStream(input, TokenConstants.UP, null); if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred49_ExpressionWalker

        // $ANTLR start synpred54_ExpressionWalker
        public final function synpred54_ExpressionWalker_fragment():void {
            var o:Object=null;

            // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:123:4: ( ^(o= ( '-' | '+' | '~' | '!' ) exp ) )
            // C:\\Users\\Stephan\\Desktop\\compiler\\ExpressionWalker.g:123:4: ^(o= ( '-' | '+' | '~' | '!' ) exp )
            {
            o=Object(input.LT(1));
            if ( (input.LA(1)>=72 && input.LA(1)<=73)||(input.LA(1)>=77 && input.LA(1)<=78) ) {
                input.consume();
                this.state.errorRecovery=false;this.state.failed=false;
            }
            else {
                if (this.state.backtracking>0) {this.state.failed=true; return ;}
                throw new MismatchedSetException(null,input);
            }


            matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
            pushFollow(FOLLOW_exp_in_synpred54_ExpressionWalker752);
            exp();

            state._fsp = state._fsp - 1;
            if (this.state.failed) return ;

            matchStream(input, TokenConstants.UP, null); if (this.state.failed) return ;

            }
        }
        // $ANTLR end synpred54_ExpressionWalker


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
        public final function synpred49_ExpressionWalker():Boolean {
            this.state.backtracking++;
            var start:int = input.mark();
            try {
                synpred49_ExpressionWalker_fragment(); // can never throw exception
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



        private const DFA11_eot:Array =
            DFA.unpackEncodedString("\x10\u80ff\xff");
        private const DFA11_eof:Array =
            DFA.unpackEncodedString("\x10\u80ff\xff");
        private const DFA11_min:Array =
            DFA.unpackEncodedString("\x01\x06\x01\x00\x0e\u80ff\xff", true);
        private const DFA11_max:Array =
            DFA.unpackEncodedString("\x01\x51\x01\x00\x0e\u80ff\xff", true);
        private const DFA11_accept:Array =
            DFA.unpackEncodedString("\x02\u80ff\xff\x01\x02\x01\x01\x01"+
            "\x03\x01\x04\x01\x05\x01\x06\x01\x07\x01\x08\x01\x09\x01\x0a"+
            "\x01\x0b\x01\x0c\x01\x0d\x01\x0e");
        private const DFA11_special:Array =
            DFA.unpackEncodedString("\x01\u80ff\xff\x01\x00\x0e\u80ff\xff");
        private const DFA11_transition:Array = [
                DFA.unpackEncodedString("\x01\x05\x01\x06\x01\x07\x01\x02"+
                "\x01\x0e\x03\u80ff\xff\x01\x0f\x01\u80ff\xff\x01\x08\x01"+
                "\x09\x01\x0d\x1f\u80ff\xff\x16\x03\x02\x01\x03\x03\x02\x04"+
                "\x01\x0a\x01\x0b\x01\x0c"),
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
            private function DFA11_specialStateTransition(dfa:DFA, s:int, _input:IntStream):int {
                var input:TreeNodeStream = TreeNodeStream(_input);
            	var _s:int = s;
                switch ( s ) {
                        case 0 : 
                            var LA11_1:int = input.LA(1);

                             
                            var index11_1:int = input.index;
                            input.rewind();
                            s = -1;
                            if ( (synpred49_ExpressionWalker()) ) {s = 3;}

                            else if ( (synpred54_ExpressionWalker()) ) {s = 4;}

                             
                            input.seek(index11_1);
                            if ( s>=0 ) return s;
                            break;
                }
                if (this.state.backtracking>0) {this.state.failed=true; return -1;}
                throw dfa.error(new NoViableAltException(dfa.description, 11, _s, input));
            }

        protected var dfa11:DFA;  // initialized in constructor
     

        public static const FOLLOW_stmtList_in_main63:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_StmtList_in_stmtList74:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_stmt_in_stmtList76:BitSet = new BitSet([0x00001828, 0x00000000]);
        public static const FOLLOW_EOF_in_stmtList83:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_instrList_in_stmt94:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_ifStmt_in_stmt99:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_whileStmt_in_stmt104:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_InstrList_in_instrList117:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_instr_in_instrList119:BitSet = new BitSet([0x0007C7C8, 0xFFFCFFF0, 0x0003FFFF, 0x00000000]);
        public static const FOLLOW_IfStmt_in_ifStmt137:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_ifStmt142:BitSet = new BitSet([0x00000010, 0x00000000]);
        public static const FOLLOW_stmtList_in_ifStmt154:BitSet = new BitSet([0x00000010, 0x00000000]);
        public static const FOLLOW_stmtList_in_ifStmt165:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_IfStmt_in_ifStmt188:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_ifStmt193:BitSet = new BitSet([0x00000010, 0x00000000]);
        public static const FOLLOW_stmtList_in_ifStmt205:BitSet = new BitSet([0x00000800, 0x00000000]);
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
        public static const FOLLOW_value_in_exp348:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_set_in_set366:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_set417:BitSet = new BitSet([0x00040180, 0x00000000]);
        public static const FOLLOW_seti_in_set420:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_sete_in_set424:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_setr_in_set428:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_Identifier_in_seti453:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_PropExp_in_sete483:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_sete485:BitSet = new BitSet([0x000747C0, 0xFFFCFFF0, 0x0003FFFF, 0x00000000]);
        public static const FOLLOW_exp_in_sete487:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_PropRef_in_setr505:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_setr507:BitSet = new BitSet([0x00040000, 0x00000000]);
        public static const FOLLOW_Identifier_in_setr511:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_set_in_value535:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_value645:BitSet = new BitSet([0x000747C0, 0xFFFCFFF0, 0x0003FFFF, 0x00000000]);
        public static const FOLLOW_exp_in_value647:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_CondExp_in_value672:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_value683:BitSet = new BitSet([0x000747C0, 0xFFFCFFF0, 0x0003FFFF, 0x00000000]);
        public static const FOLLOW_exp_in_value695:BitSet = new BitSet([0x000747C0, 0xFFFCFFF0, 0x0003FFFF, 0x00000000]);
        public static const FOLLOW_exp_in_value707:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_set_in_value733:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_value752:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_FuncCall_in_value775:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_value777:BitSet = new BitSet([0x000747C8, 0xFFFCFFF0, 0x0003FFFF, 0x00000000]);
        public static const FOLLOW_PropRef_in_value793:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_value795:BitSet = new BitSet([0x00040000, 0x00000000]);
        public static const FOLLOW_Identifier_in_value799:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_PropExp_in_value824:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_value826:BitSet = new BitSet([0x000747C0, 0xFFFCFFF0, 0x0003FFFF, 0x00000000]);
        public static const FOLLOW_exp_in_value828:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_NumberLiteral_in_value842:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_StringLiteral_in_value856:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_79_in_value870:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_80_in_value883:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_81_in_value896:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_Identifier_in_value913:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_CreateArray_in_value960:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_value962:BitSet = new BitSet([0x000747C8, 0xFFFCFFF0, 0x0003FFFF, 0x00000000]);
        public static const FOLLOW_funcDef_in_value975:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_FuncDef_in_funcDef991:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_arg_in_funcDef1003:BitSet = new BitSet([0x00040010, 0x00000000]);
        public static const FOLLOW_stmtList_in_funcDef1009:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_Identifier_in_arg1032:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_Return_in_ret1053:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_ret1055:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_Return_in_ret1068:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_IfStmt_in_synpred6_ExpressionWalker137:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_synpred6_ExpressionWalker142:BitSet = new BitSet([0x00000010, 0x00000000]);
        public static const FOLLOW_stmtList_in_synpred6_ExpressionWalker154:BitSet = new BitSet([0x00000010, 0x00000000]);
        public static const FOLLOW_stmtList_in_synpred6_ExpressionWalker165:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_IfStmt_in_synpred7_ExpressionWalker188:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_synpred7_ExpressionWalker193:BitSet = new BitSet([0x00000010, 0x00000000]);
        public static const FOLLOW_stmtList_in_synpred7_ExpressionWalker205:BitSet = new BitSet([0x00000800, 0x00000000]);
        public static const FOLLOW_ifStmt_in_synpred7_ExpressionWalker216:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_set_in_synpred49_ExpressionWalker535:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_synpred49_ExpressionWalker645:BitSet = new BitSet([0x000747C0, 0xFFFCFFF0, 0x0003FFFF, 0x00000000]);
        public static const FOLLOW_exp_in_synpred49_ExpressionWalker647:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_set_in_synpred54_ExpressionWalker733:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_exp_in_synpred54_ExpressionWalker752:BitSet = new BitSet([0x00000008, 0x00000000]);

    }
}