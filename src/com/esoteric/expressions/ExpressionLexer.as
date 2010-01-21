// $ANTLR 3.2 Sep 23, 2009 12:02:23 C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g 2010-01-21 14:33:45
package com.esoteric.expressions {
    import org.antlr.runtime.*;
        

    public class ExpressionLexer extends Lexer {
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
        public static const T__27:int=27;
        public static const T__63:int=63;
        public static const T__26:int=26;
        public static const ExpList:int=5;
        public static const LineComment:int=17;
        public static const Exponent:int=20;
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
        public static const T__80:int=80;
        public static const T__47:int=47;
        public static const T__81:int=81;
        public static const T__44:int=44;
        public static const T__82:int=82;
        public static const T__45:int=45;
        public static const UnicodeEscapeChar:int=25;
        public static const T__48:int=48;
        public static const NumberLiteral:int=14;
        public static const T__49:int=49;
        public static const Digit:int=19;
        public static const StringLiteral:int=15;
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
        public static const MultilineComment:int=18;
        public static const T__74:int=74;
        public static const T__73:int=73;
        public static const EscapeSequence:int=22;
        public static const Letter:int=24;
        public static const T__79:int=79;
        public static const T__78:int=78;
        public static const T__77:int=77;

        // delegates
        // delegators

        public function ExpressionLexer(input:CharStream = null, state:RecognizerSharedState = null) {
            super(input, state);

            dfa13 = new DFA(this, 13,
                        "278:1: NumberLiteral : ( ( '-' )? ( '.' )? ( Digit )+ ( Exponent )? | ( '-' )? ( Digit )+ '.' ( Digit )+ ( Exponent )? | '0' ( 'x' | 'X' ) ( HexDigit )+ );",
                        DFA13_eot, DFA13_eof, DFA13_min,
                        DFA13_max, DFA13_accept, DFA13_special,
                        DFA13_transition);

            dfa22 = new DFA(this, 22,
                        "1:1: Tokens : ( T__26 | T__27 | T__28 | T__29 | T__30 | T__31 | T__32 | T__33 | T__34 | T__35 | T__36 | T__37 | T__38 | T__39 | T__40 | T__41 | T__42 | T__43 | T__44 | T__45 | T__46 | T__47 | T__48 | T__49 | T__50 | T__51 | T__52 | T__53 | T__54 | T__55 | T__56 | T__57 | T__58 | T__59 | T__60 | T__61 | T__62 | T__63 | T__64 | T__65 | T__66 | T__67 | T__68 | T__69 | T__70 | T__71 | T__72 | T__73 | T__74 | T__75 | T__76 | T__77 | T__78 | T__79 | T__80 | T__81 | T__82 | LineComment | MultilineComment | NumberLiteral | Exponent | StringLiteral | WhiteSpace | Identifier );",
                        DFA22_eot, DFA22_eof, DFA22_min,
                        DFA22_max, DFA22_accept, DFA22_special,
                        DFA22_transition);


        }
        public override function get grammarFileName():String { return "C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g"; }

        // $ANTLR start T__26
        public final function mT__26():void {
            try {
                var _type:int = T__26;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:9:7: ( 'if' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:9:9: 'if'
                {
                matchString("if"); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__26

        // $ANTLR start T__27
        public final function mT__27():void {
            try {
                var _type:int = T__27;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:10:7: ( '(' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:10:9: '('
                {
                match(40); 

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__27

        // $ANTLR start T__28
        public final function mT__28():void {
            try {
                var _type:int = T__28;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:11:7: ( ')' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:11:9: ')'
                {
                match(41); 

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__28

        // $ANTLR start T__29
        public final function mT__29():void {
            try {
                var _type:int = T__29;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:12:7: ( 'else' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:12:9: 'else'
                {
                matchString("else"); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__29

        // $ANTLR start T__30
        public final function mT__30():void {
            try {
                var _type:int = T__30;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:13:7: ( 'while' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:13:9: 'while'
                {
                matchString("while"); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__30

        // $ANTLR start T__31
        public final function mT__31():void {
            try {
                var _type:int = T__31;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:14:7: ( '{' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:14:9: '{'
                {
                match(123); 

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__31

        // $ANTLR start T__32
        public final function mT__32():void {
            try {
                var _type:int = T__32;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:15:7: ( '}' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:15:9: '}'
                {
                match(125); 

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__32

        // $ANTLR start T__33
        public final function mT__33():void {
            try {
                var _type:int = T__33;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:16:7: ( ';' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:16:9: ';'
                {
                match(59); 

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__33

        // $ANTLR start T__34
        public final function mT__34():void {
            try {
                var _type:int = T__34;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:17:7: ( '=' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:17:9: '='
                {
                match(61); 

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__34

        // $ANTLR start T__35
        public final function mT__35():void {
            try {
                var _type:int = T__35;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:18:7: ( '*=' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:18:9: '*='
                {
                matchString("*="); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__35

        // $ANTLR start T__36
        public final function mT__36():void {
            try {
                var _type:int = T__36;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:19:7: ( '/=' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:19:9: '/='
                {
                matchString("/="); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__36

        // $ANTLR start T__37
        public final function mT__37():void {
            try {
                var _type:int = T__37;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:20:7: ( '%=' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:20:9: '%='
                {
                matchString("%="); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__37

        // $ANTLR start T__38
        public final function mT__38():void {
            try {
                var _type:int = T__38;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:21:7: ( '+=' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:21:9: '+='
                {
                matchString("+="); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__38

        // $ANTLR start T__39
        public final function mT__39():void {
            try {
                var _type:int = T__39;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:22:7: ( '-=' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:22:9: '-='
                {
                matchString("-="); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__39

        // $ANTLR start T__40
        public final function mT__40():void {
            try {
                var _type:int = T__40;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:23:7: ( '<<=' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:23:9: '<<='
                {
                matchString("<<="); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__40

        // $ANTLR start T__41
        public final function mT__41():void {
            try {
                var _type:int = T__41;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:24:7: ( '>>=' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:24:9: '>>='
                {
                matchString(">>="); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__41

        // $ANTLR start T__42
        public final function mT__42():void {
            try {
                var _type:int = T__42;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:25:7: ( '>>>=' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:25:9: '>>>='
                {
                matchString(">>>="); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__42

        // $ANTLR start T__43
        public final function mT__43():void {
            try {
                var _type:int = T__43;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:26:7: ( '&=' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:26:9: '&='
                {
                matchString("&="); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__43

        // $ANTLR start T__44
        public final function mT__44():void {
            try {
                var _type:int = T__44;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:27:7: ( '^=' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:27:9: '^='
                {
                matchString("^="); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__44

        // $ANTLR start T__45
        public final function mT__45():void {
            try {
                var _type:int = T__45;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:28:7: ( '|=' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:28:9: '|='
                {
                matchString("|="); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__45

        // $ANTLR start T__46
        public final function mT__46():void {
            try {
                var _type:int = T__46;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:29:7: ( '?' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:29:9: '?'
                {
                match(63); 

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__46

        // $ANTLR start T__47
        public final function mT__47():void {
            try {
                var _type:int = T__47;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:30:7: ( ':' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:30:9: ':'
                {
                match(58); 

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__47

        // $ANTLR start T__48
        public final function mT__48():void {
            try {
                var _type:int = T__48;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:31:7: ( '||' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:31:9: '||'
                {
                matchString("||"); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__48

        // $ANTLR start T__49
        public final function mT__49():void {
            try {
                var _type:int = T__49;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:32:7: ( 'or' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:32:9: 'or'
                {
                matchString("or"); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__49

        // $ANTLR start T__50
        public final function mT__50():void {
            try {
                var _type:int = T__50;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:33:7: ( '&&' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:33:9: '&&'
                {
                matchString("&&"); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__50

        // $ANTLR start T__51
        public final function mT__51():void {
            try {
                var _type:int = T__51;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:34:7: ( 'and' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:34:9: 'and'
                {
                matchString("and"); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__51

        // $ANTLR start T__52
        public final function mT__52():void {
            try {
                var _type:int = T__52;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:35:7: ( '|' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:35:9: '|'
                {
                match(124); 

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__52

        // $ANTLR start T__53
        public final function mT__53():void {
            try {
                var _type:int = T__53;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:36:7: ( '^' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:36:9: '^'
                {
                match(94); 

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__53

        // $ANTLR start T__54
        public final function mT__54():void {
            try {
                var _type:int = T__54;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:37:7: ( '&' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:37:9: '&'
                {
                match(38); 

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__54

        // $ANTLR start T__55
        public final function mT__55():void {
            try {
                var _type:int = T__55;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:38:7: ( '==' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:38:9: '=='
                {
                matchString("=="); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__55

        // $ANTLR start T__56
        public final function mT__56():void {
            try {
                var _type:int = T__56;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:39:7: ( '!=' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:39:9: '!='
                {
                matchString("!="); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__56

        // $ANTLR start T__57
        public final function mT__57():void {
            try {
                var _type:int = T__57;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:40:7: ( '===' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:40:9: '==='
                {
                matchString("==="); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__57

        // $ANTLR start T__58
        public final function mT__58():void {
            try {
                var _type:int = T__58;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:41:7: ( '!==' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:41:9: '!=='
                {
                matchString("!=="); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__58

        // $ANTLR start T__59
        public final function mT__59():void {
            try {
                var _type:int = T__59;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:42:7: ( '<' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:42:9: '<'
                {
                match(60); 

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__59

        // $ANTLR start T__60
        public final function mT__60():void {
            try {
                var _type:int = T__60;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:43:7: ( 'lt' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:43:9: 'lt'
                {
                matchString("lt"); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__60

        // $ANTLR start T__61
        public final function mT__61():void {
            try {
                var _type:int = T__61;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:44:7: ( '>' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:44:9: '>'
                {
                match(62); 

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__61

        // $ANTLR start T__62
        public final function mT__62():void {
            try {
                var _type:int = T__62;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:45:7: ( 'gt' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:45:9: 'gt'
                {
                matchString("gt"); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__62

        // $ANTLR start T__63
        public final function mT__63():void {
            try {
                var _type:int = T__63;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:46:7: ( '<=' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:46:9: '<='
                {
                matchString("<="); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__63

        // $ANTLR start T__64
        public final function mT__64():void {
            try {
                var _type:int = T__64;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:47:7: ( 'lte' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:47:9: 'lte'
                {
                matchString("lte"); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__64

        // $ANTLR start T__65
        public final function mT__65():void {
            try {
                var _type:int = T__65;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:48:7: ( '>=' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:48:9: '>='
                {
                matchString(">="); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__65

        // $ANTLR start T__66
        public final function mT__66():void {
            try {
                var _type:int = T__66;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:49:7: ( 'gte' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:49:9: 'gte'
                {
                matchString("gte"); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__66

        // $ANTLR start T__67
        public final function mT__67():void {
            try {
                var _type:int = T__67;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:50:7: ( '<<' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:50:9: '<<'
                {
                matchString("<<"); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__67

        // $ANTLR start T__68
        public final function mT__68():void {
            try {
                var _type:int = T__68;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:51:7: ( '>>' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:51:9: '>>'
                {
                matchString(">>"); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__68

        // $ANTLR start T__69
        public final function mT__69():void {
            try {
                var _type:int = T__69;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:52:7: ( '>>>' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:52:9: '>>>'
                {
                matchString(">>>"); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__69

        // $ANTLR start T__70
        public final function mT__70():void {
            try {
                var _type:int = T__70;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:53:7: ( '+' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:53:9: '+'
                {
                match(43); 

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__70

        // $ANTLR start T__71
        public final function mT__71():void {
            try {
                var _type:int = T__71;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:54:7: ( '-' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:54:9: '-'
                {
                match(45); 

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__71

        // $ANTLR start T__72
        public final function mT__72():void {
            try {
                var _type:int = T__72;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:55:7: ( '*' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:55:9: '*'
                {
                match(42); 

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__72

        // $ANTLR start T__73
        public final function mT__73():void {
            try {
                var _type:int = T__73;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:56:7: ( '/' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:56:9: '/'
                {
                match(47); 

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__73

        // $ANTLR start T__74
        public final function mT__74():void {
            try {
                var _type:int = T__74;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:57:7: ( '%' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:57:9: '%'
                {
                match(37); 

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__74

        // $ANTLR start T__75
        public final function mT__75():void {
            try {
                var _type:int = T__75;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:58:7: ( '~' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:58:9: '~'
                {
                match(126); 

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__75

        // $ANTLR start T__76
        public final function mT__76():void {
            try {
                var _type:int = T__76;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:59:7: ( '!' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:59:9: '!'
                {
                match(33); 

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__76

        // $ANTLR start T__77
        public final function mT__77():void {
            try {
                var _type:int = T__77;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:60:7: ( 'true' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:60:9: 'true'
                {
                matchString("true"); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__77

        // $ANTLR start T__78
        public final function mT__78():void {
            try {
                var _type:int = T__78;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:61:7: ( 'false' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:61:9: 'false'
                {
                matchString("false"); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__78

        // $ANTLR start T__79
        public final function mT__79():void {
            try {
                var _type:int = T__79;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:62:7: ( '[' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:62:9: '['
                {
                match(91); 

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__79

        // $ANTLR start T__80
        public final function mT__80():void {
            try {
                var _type:int = T__80;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:63:7: ( ']' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:63:9: ']'
                {
                match(93); 

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__80

        // $ANTLR start T__81
        public final function mT__81():void {
            try {
                var _type:int = T__81;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:64:7: ( '.' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:64:9: '.'
                {
                match(46); 

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__81

        // $ANTLR start T__82
        public final function mT__82():void {
            try {
                var _type:int = T__82;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:65:7: ( ',' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:65:9: ','
                {
                match(44); 

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__82

        // $ANTLR start LineComment
        public final function mLineComment():void {
            try {
                var _type:int = LineComment;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:265:2: ( '//' (~ ( '\\n' | '\\r' ) )* ( '\\r' )? '\\n' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:265:4: '//' (~ ( '\\n' | '\\r' ) )* ( '\\r' )? '\\n'
                {
                matchString("//"); 

                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:265:9: (~ ( '\\n' | '\\r' ) )*
                loop1:
                do {
                    var alt1:int=2;
                    var LA1_0:int = input.LA(1);

                    if ( ((LA1_0>=0 && LA1_0<=9)||(LA1_0>=11 && LA1_0<=12)||(LA1_0>=14 && LA1_0<=65535)) ) {
                        alt1=1;
                    }


                    switch (alt1) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:265:9: ~ ( '\\n' | '\\r' )
                	    {
                	    if ( (input.LA(1)>=0 && input.LA(1)<=9)||(input.LA(1)>=11 && input.LA(1)<=12)||(input.LA(1)>=14 && input.LA(1)<=65535) ) {
                	        input.consume();

                	    }
                	    else {
                	        throw recover(new MismatchedSetException(null,input));
                	    }


                	    }
                	    break;

                	default :
                	    break loop1;
                    }
                } while (true);

                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:265:25: ( '\\r' )?
                var alt2:int=2;
                var LA2_0:int = input.LA(1);

                if ( (LA2_0==13) ) {
                    alt2=1;
                }
                switch (alt2) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:265:25: '\\r'
                        {
                        match(13); 

                        }
                        break;

                }

                match(10); 

                			_channel = HIDDEN;
                		

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end LineComment

        // $ANTLR start MultilineComment
        public final function mMultilineComment():void {
            try {
                var _type:int = MultilineComment;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:272:2: ( '/*' ( options {greedy=false; } : . )* '*/' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:272:4: '/*' ( options {greedy=false; } : . )* '*/'
                {
                matchString("/*"); 

                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:272:9: ( options {greedy=false; } : . )*
                loop3:
                do {
                    var alt3:int=2;
                    var LA3_0:int = input.LA(1);

                    if ( (LA3_0==42) ) {
                        var LA3_1:int = input.LA(2);

                        if ( (LA3_1==47) ) {
                            alt3=2;
                        }
                        else if ( ((LA3_1>=0 && LA3_1<=46)||(LA3_1>=48 && LA3_1<=65535)) ) {
                            alt3=1;
                        }


                    }
                    else if ( ((LA3_0>=0 && LA3_0<=41)||(LA3_0>=43 && LA3_0<=65535)) ) {
                        alt3=1;
                    }


                    switch (alt3) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:272:36: .
                	    {
                	    matchAny(); 

                	    }
                	    break;

                	default :
                	    break loop3;
                    }
                } while (true);

                matchString("*/"); 


                			_channel = HIDDEN;
                		

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end MultilineComment

        // $ANTLR start NumberLiteral
        public final function mNumberLiteral():void {
            try {
                var _type:int = NumberLiteral;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:279:3: ( ( '-' )? ( '.' )? ( Digit )+ ( Exponent )? | ( '-' )? ( Digit )+ '.' ( Digit )+ ( Exponent )? | '0' ( 'x' | 'X' ) ( HexDigit )+ )
                var alt13:int=3;
                alt13 = dfa13.predict(input);
                switch (alt13) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:279:5: ( '-' )? ( '.' )? ( Digit )+ ( Exponent )?
                        {
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:279:5: ( '-' )?
                        var alt4:int=2;
                        var LA4_0:int = input.LA(1);

                        if ( (LA4_0==45) ) {
                            alt4=1;
                        }
                        switch (alt4) {
                            case 1 :
                                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:279:5: '-'
                                {
                                match(45); 

                                }
                                break;

                        }

                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:279:10: ( '.' )?
                        var alt5:int=2;
                        var LA5_0:int = input.LA(1);

                        if ( (LA5_0==46) ) {
                            alt5=1;
                        }
                        switch (alt5) {
                            case 1 :
                                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:279:10: '.'
                                {
                                match(46); 

                                }
                                break;

                        }

                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:279:15: ( Digit )+
                        var cnt6:int=0;
                        loop6:
                        do {
                            var alt6:int=2;
                            var LA6_0:int = input.LA(1);

                            if ( ((LA6_0>=48 && LA6_0<=57)) ) {
                                alt6=1;
                            }


                            switch (alt6) {
                        	case 1 :
                        	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:279:15: Digit
                        	    {
                        	    mDigit(); 

                        	    }
                        	    break;

                        	default :
                        	    if ( cnt6 >= 1 ) break loop6;
                                    throw new EarlyExitException(6, input);

                            }
                            cnt6++;
                        } while (true);

                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:279:22: ( Exponent )?
                        var alt7:int=2;
                        var LA7_0:int = input.LA(1);

                        if ( (LA7_0==69||LA7_0==101) ) {
                            alt7=1;
                        }
                        switch (alt7) {
                            case 1 :
                                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:279:22: Exponent
                                {
                                mExponent(); 

                                }
                                break;

                        }


                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:280:4: ( '-' )? ( Digit )+ '.' ( Digit )+ ( Exponent )?
                        {
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:280:4: ( '-' )?
                        var alt8:int=2;
                        var LA8_0:int = input.LA(1);

                        if ( (LA8_0==45) ) {
                            alt8=1;
                        }
                        switch (alt8) {
                            case 1 :
                                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:280:4: '-'
                                {
                                match(45); 

                                }
                                break;

                        }

                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:280:9: ( Digit )+
                        var cnt9:int=0;
                        loop9:
                        do {
                            var alt9:int=2;
                            var LA9_0:int = input.LA(1);

                            if ( ((LA9_0>=48 && LA9_0<=57)) ) {
                                alt9=1;
                            }


                            switch (alt9) {
                        	case 1 :
                        	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:280:9: Digit
                        	    {
                        	    mDigit(); 

                        	    }
                        	    break;

                        	default :
                        	    if ( cnt9 >= 1 ) break loop9;
                                    throw new EarlyExitException(9, input);

                            }
                            cnt9++;
                        } while (true);

                        match(46); 
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:280:20: ( Digit )+
                        var cnt10:int=0;
                        loop10:
                        do {
                            var alt10:int=2;
                            var LA10_0:int = input.LA(1);

                            if ( ((LA10_0>=48 && LA10_0<=57)) ) {
                                alt10=1;
                            }


                            switch (alt10) {
                        	case 1 :
                        	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:280:20: Digit
                        	    {
                        	    mDigit(); 

                        	    }
                        	    break;

                        	default :
                        	    if ( cnt10 >= 1 ) break loop10;
                                    throw new EarlyExitException(10, input);

                            }
                            cnt10++;
                        } while (true);

                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:280:28: ( Exponent )?
                        var alt11:int=2;
                        var LA11_0:int = input.LA(1);

                        if ( (LA11_0==69||LA11_0==101) ) {
                            alt11=1;
                        }
                        switch (alt11) {
                            case 1 :
                                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:280:28: Exponent
                                {
                                mExponent(); 

                                }
                                break;

                        }


                        }
                        break;
                    case 3 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:281:4: '0' ( 'x' | 'X' ) ( HexDigit )+
                        {
                        match(48); 
                        if ( input.LA(1)==88||input.LA(1)==120 ) {
                            input.consume();

                        }
                        else {
                            throw recover(new MismatchedSetException(null,input));
                        }

                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:281:22: ( HexDigit )+
                        var cnt12:int=0;
                        loop12:
                        do {
                            var alt12:int=2;
                            var LA12_0:int = input.LA(1);

                            if ( ((LA12_0>=48 && LA12_0<=57)||(LA12_0>=65 && LA12_0<=70)||(LA12_0>=97 && LA12_0<=102)) ) {
                                alt12=1;
                            }


                            switch (alt12) {
                        	case 1 :
                        	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:281:22: HexDigit
                        	    {
                        	    mHexDigit(); 

                        	    }
                        	    break;

                        	default :
                        	    if ( cnt12 >= 1 ) break loop12;
                                    throw new EarlyExitException(12, input);

                            }
                            cnt12++;
                        } while (true);


                        }
                        break;

                }
                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end NumberLiteral

        // $ANTLR start Exponent
        public final function mExponent():void {
            try {
                var _type:int = Exponent;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:285:2: ( ( 'e' | 'E' ) ( '-' | '+' )? ( Digit )+ )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:285:4: ( 'e' | 'E' ) ( '-' | '+' )? ( Digit )+
                {
                if ( input.LA(1)==69||input.LA(1)==101 ) {
                    input.consume();

                }
                else {
                    throw recover(new MismatchedSetException(null,input));
                }

                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:285:16: ( '-' | '+' )?
                var alt14:int=2;
                var LA14_0:int = input.LA(1);

                if ( (LA14_0==43||LA14_0==45) ) {
                    alt14=1;
                }
                switch (alt14) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:
                        {
                        if ( input.LA(1)==43||input.LA(1)==45 ) {
                            input.consume();

                        }
                        else {
                            throw recover(new MismatchedSetException(null,input));
                        }


                        }
                        break;

                }

                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:285:31: ( Digit )+
                var cnt15:int=0;
                loop15:
                do {
                    var alt15:int=2;
                    var LA15_0:int = input.LA(1);

                    if ( ((LA15_0>=48 && LA15_0<=57)) ) {
                        alt15=1;
                    }


                    switch (alt15) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:285:31: Digit
                	    {
                	    mDigit(); 

                	    }
                	    break;

                	default :
                	    if ( cnt15 >= 1 ) break loop15;
                            throw new EarlyExitException(15, input);

                    }
                    cnt15++;
                } while (true);


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end Exponent

        // $ANTLR start StringLiteral
        public final function mStringLiteral():void {
            try {
                var _type:int = StringLiteral;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:290:2: ( '\"' ( EscapeSequence | ~ ( '\\u0000' .. '\\u001f' | '\\\\' | '\\\"' ) )* '\"' | '\\'' ( EscapeSequence | ~ ( '\\u0000' .. '\\u001f' | '\\\\' | '\\'' ) )* '\\'' )
                var alt18:int=2;
                var LA18_0:int = input.LA(1);

                if ( (LA18_0==34) ) {
                    alt18=1;
                }
                else if ( (LA18_0==39) ) {
                    alt18=2;
                }
                else {
                    throw new NoViableAltException("", 18, 0, input);

                }
                switch (alt18) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:290:4: '\"' ( EscapeSequence | ~ ( '\\u0000' .. '\\u001f' | '\\\\' | '\\\"' ) )* '\"'
                        {
                        match(34); 
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:290:8: ( EscapeSequence | ~ ( '\\u0000' .. '\\u001f' | '\\\\' | '\\\"' ) )*
                        loop16:
                        do {
                            var alt16:int=3;
                            var LA16_0:int = input.LA(1);

                            if ( (LA16_0==92) ) {
                                alt16=1;
                            }
                            else if ( ((LA16_0>=32 && LA16_0<=33)||(LA16_0>=35 && LA16_0<=91)||(LA16_0>=93 && LA16_0<=65535)) ) {
                                alt16=2;
                            }


                            switch (alt16) {
                        	case 1 :
                        	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:290:10: EscapeSequence
                        	    {
                        	    mEscapeSequence(); 

                        	    }
                        	    break;
                        	case 2 :
                        	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:290:27: ~ ( '\\u0000' .. '\\u001f' | '\\\\' | '\\\"' )
                        	    {
                        	    if ( (input.LA(1)>=32 && input.LA(1)<=33)||(input.LA(1)>=35 && input.LA(1)<=91)||(input.LA(1)>=93 && input.LA(1)<=65535) ) {
                        	        input.consume();

                        	    }
                        	    else {
                        	        throw recover(new MismatchedSetException(null,input));
                        	    }


                        	    }
                        	    break;

                        	default :
                        	    break loop16;
                            }
                        } while (true);

                        match(34); 

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:291:4: '\\'' ( EscapeSequence | ~ ( '\\u0000' .. '\\u001f' | '\\\\' | '\\'' ) )* '\\''
                        {
                        match(39); 
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:291:9: ( EscapeSequence | ~ ( '\\u0000' .. '\\u001f' | '\\\\' | '\\'' ) )*
                        loop17:
                        do {
                            var alt17:int=3;
                            var LA17_0:int = input.LA(1);

                            if ( (LA17_0==92) ) {
                                alt17=1;
                            }
                            else if ( ((LA17_0>=32 && LA17_0<=38)||(LA17_0>=40 && LA17_0<=91)||(LA17_0>=93 && LA17_0<=65535)) ) {
                                alt17=2;
                            }


                            switch (alt17) {
                        	case 1 :
                        	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:291:11: EscapeSequence
                        	    {
                        	    mEscapeSequence(); 

                        	    }
                        	    break;
                        	case 2 :
                        	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:291:28: ~ ( '\\u0000' .. '\\u001f' | '\\\\' | '\\'' )
                        	    {
                        	    if ( (input.LA(1)>=32 && input.LA(1)<=38)||(input.LA(1)>=40 && input.LA(1)<=91)||(input.LA(1)>=93 && input.LA(1)<=65535) ) {
                        	        input.consume();

                        	    }
                        	    else {
                        	        throw recover(new MismatchedSetException(null,input));
                        	    }


                        	    }
                        	    break;

                        	default :
                        	    break loop17;
                            }
                        } while (true);

                        match(39); 

                        }
                        break;

                }
                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end StringLiteral

        // $ANTLR start WhiteSpace
        public final function mWhiteSpace():void {
            try {
                var _type:int = WhiteSpace;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:295:2: ( ( '\\t' | ' ' | '\\r' | '\\n' | '\\u000C' )+ )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:295:4: ( '\\t' | ' ' | '\\r' | '\\n' | '\\u000C' )+
                {
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:295:4: ( '\\t' | ' ' | '\\r' | '\\n' | '\\u000C' )+
                var cnt19:int=0;
                loop19:
                do {
                    var alt19:int=2;
                    var LA19_0:int = input.LA(1);

                    if ( ((LA19_0>=9 && LA19_0<=10)||(LA19_0>=12 && LA19_0<=13)||LA19_0==32) ) {
                        alt19=1;
                    }


                    switch (alt19) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:
                	    {
                	    if ( (input.LA(1)>=9 && input.LA(1)<=10)||(input.LA(1)>=12 && input.LA(1)<=13)||input.LA(1)==32 ) {
                	        input.consume();

                	    }
                	    else {
                	        throw recover(new MismatchedSetException(null,input));
                	    }


                	    }
                	    break;

                	default :
                	    if ( cnt19 >= 1 ) break loop19;
                            throw new EarlyExitException(19, input);

                    }
                    cnt19++;
                } while (true);


                			_channel = HIDDEN;
                		

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end WhiteSpace

        // $ANTLR start Identifier
        public final function mIdentifier():void {
            try {
                var _type:int = Identifier;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:302:2: ( ( Letter | '_' ) ( Letter | Digit | '_' )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:302:4: ( Letter | '_' ) ( Letter | Digit | '_' )*
                {
                if ( (input.LA(1)>=65 && input.LA(1)<=90)||input.LA(1)==95||(input.LA(1)>=97 && input.LA(1)<=122) ) {
                    input.consume();

                }
                else {
                    throw recover(new MismatchedSetException(null,input));
                }

                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:302:21: ( Letter | Digit | '_' )*
                loop20:
                do {
                    var alt20:int=2;
                    var LA20_0:int = input.LA(1);

                    if ( ((LA20_0>=48 && LA20_0<=57)||(LA20_0>=65 && LA20_0<=90)||LA20_0==95||(LA20_0>=97 && LA20_0<=122)) ) {
                        alt20=1;
                    }


                    switch (alt20) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:
                	    {
                	    if ( (input.LA(1)>=48 && input.LA(1)<=57)||(input.LA(1)>=65 && input.LA(1)<=90)||input.LA(1)==95||(input.LA(1)>=97 && input.LA(1)<=122) ) {
                	        input.consume();

                	    }
                	    else {
                	        throw recover(new MismatchedSetException(null,input));
                	    }


                	    }
                	    break;

                	default :
                	    break loop20;
                    }
                } while (true);


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end Identifier

        // $ANTLR start Digit
        public final function mDigit():void {
            try {
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:306:2: ( '0' .. '9' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:306:4: '0' .. '9'
                {
                matchRange(48,57); 

                }

            }
            finally {
            }
        }
        // $ANTLR end Digit

        // $ANTLR start HexDigit
        public final function mHexDigit():void {
            try {
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:310:2: ( Digit | 'a' .. 'f' | 'A' .. 'F' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:
                {
                if ( (input.LA(1)>=48 && input.LA(1)<=57)||(input.LA(1)>=65 && input.LA(1)<=70)||(input.LA(1)>=97 && input.LA(1)<=102) ) {
                    input.consume();

                }
                else {
                    throw recover(new MismatchedSetException(null,input));
                }


                }

            }
            finally {
            }
        }
        // $ANTLR end HexDigit

        // $ANTLR start Letter
        public final function mLetter():void {
            try {
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:316:2: ( 'a' .. 'z' | 'A' .. 'Z' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:
                {
                if ( (input.LA(1)>=65 && input.LA(1)<=90)||(input.LA(1)>=97 && input.LA(1)<=122) ) {
                    input.consume();

                }
                else {
                    throw recover(new MismatchedSetException(null,input));
                }


                }

            }
            finally {
            }
        }
        // $ANTLR end Letter

        // $ANTLR start EscapeSequence
        public final function mEscapeSequence():void {
            try {
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:321:2: ( '\\\\' ( UnicodeEscapeChar | 'b' | 't' | 'n' | 'f' | 'r' | '\\\"' | '\\'' | '\\\\' ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:321:4: '\\\\' ( UnicodeEscapeChar | 'b' | 't' | 'n' | 'f' | 'r' | '\\\"' | '\\'' | '\\\\' )
                {
                match(92); 
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:321:9: ( UnicodeEscapeChar | 'b' | 't' | 'n' | 'f' | 'r' | '\\\"' | '\\'' | '\\\\' )
                var alt21:int=9;
                switch ( input.LA(1) ) {
                case 117:
                    {
                    alt21=1;
                    }
                    break;
                case 98:
                    {
                    alt21=2;
                    }
                    break;
                case 116:
                    {
                    alt21=3;
                    }
                    break;
                case 110:
                    {
                    alt21=4;
                    }
                    break;
                case 102:
                    {
                    alt21=5;
                    }
                    break;
                case 114:
                    {
                    alt21=6;
                    }
                    break;
                case 34:
                    {
                    alt21=7;
                    }
                    break;
                case 39:
                    {
                    alt21=8;
                    }
                    break;
                case 92:
                    {
                    alt21=9;
                    }
                    break;
                default:
                    throw new NoViableAltException("", 21, 0, input);

                }

                switch (alt21) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:321:10: UnicodeEscapeChar
                        {
                        mUnicodeEscapeChar(); 

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:321:29: 'b'
                        {
                        match(98); 

                        }
                        break;
                    case 3 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:321:33: 't'
                        {
                        match(116); 

                        }
                        break;
                    case 4 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:321:37: 'n'
                        {
                        match(110); 

                        }
                        break;
                    case 5 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:321:41: 'f'
                        {
                        match(102); 

                        }
                        break;
                    case 6 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:321:45: 'r'
                        {
                        match(114); 

                        }
                        break;
                    case 7 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:321:49: '\\\"'
                        {
                        match(34); 

                        }
                        break;
                    case 8 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:321:54: '\\''
                        {
                        match(39); 

                        }
                        break;
                    case 9 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:321:59: '\\\\'
                        {
                        match(92); 

                        }
                        break;

                }


                }

            }
            finally {
            }
        }
        // $ANTLR end EscapeSequence

        // $ANTLR start UnicodeEscapeChar
        public final function mUnicodeEscapeChar():void {
            try {
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:325:2: ( 'u' HexDigit HexDigit HexDigit HexDigit )
                // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:325:4: 'u' HexDigit HexDigit HexDigit HexDigit
                {
                match(117); 
                mHexDigit(); 
                mHexDigit(); 
                mHexDigit(); 
                mHexDigit(); 

                }

            }
            finally {
            }
        }
        // $ANTLR end UnicodeEscapeChar

        public override function mTokens():void {
            // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:8: ( T__26 | T__27 | T__28 | T__29 | T__30 | T__31 | T__32 | T__33 | T__34 | T__35 | T__36 | T__37 | T__38 | T__39 | T__40 | T__41 | T__42 | T__43 | T__44 | T__45 | T__46 | T__47 | T__48 | T__49 | T__50 | T__51 | T__52 | T__53 | T__54 | T__55 | T__56 | T__57 | T__58 | T__59 | T__60 | T__61 | T__62 | T__63 | T__64 | T__65 | T__66 | T__67 | T__68 | T__69 | T__70 | T__71 | T__72 | T__73 | T__74 | T__75 | T__76 | T__77 | T__78 | T__79 | T__80 | T__81 | T__82 | LineComment | MultilineComment | NumberLiteral | Exponent | StringLiteral | WhiteSpace | Identifier )
            var alt22:int=64;
            alt22 = dfa22.predict(input);
            switch (alt22) {
                case 1 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:10: T__26
                    {
                    mT__26(); 

                    }
                    break;
                case 2 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:16: T__27
                    {
                    mT__27(); 

                    }
                    break;
                case 3 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:22: T__28
                    {
                    mT__28(); 

                    }
                    break;
                case 4 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:28: T__29
                    {
                    mT__29(); 

                    }
                    break;
                case 5 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:34: T__30
                    {
                    mT__30(); 

                    }
                    break;
                case 6 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:40: T__31
                    {
                    mT__31(); 

                    }
                    break;
                case 7 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:46: T__32
                    {
                    mT__32(); 

                    }
                    break;
                case 8 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:52: T__33
                    {
                    mT__33(); 

                    }
                    break;
                case 9 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:58: T__34
                    {
                    mT__34(); 

                    }
                    break;
                case 10 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:64: T__35
                    {
                    mT__35(); 

                    }
                    break;
                case 11 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:70: T__36
                    {
                    mT__36(); 

                    }
                    break;
                case 12 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:76: T__37
                    {
                    mT__37(); 

                    }
                    break;
                case 13 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:82: T__38
                    {
                    mT__38(); 

                    }
                    break;
                case 14 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:88: T__39
                    {
                    mT__39(); 

                    }
                    break;
                case 15 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:94: T__40
                    {
                    mT__40(); 

                    }
                    break;
                case 16 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:100: T__41
                    {
                    mT__41(); 

                    }
                    break;
                case 17 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:106: T__42
                    {
                    mT__42(); 

                    }
                    break;
                case 18 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:112: T__43
                    {
                    mT__43(); 

                    }
                    break;
                case 19 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:118: T__44
                    {
                    mT__44(); 

                    }
                    break;
                case 20 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:124: T__45
                    {
                    mT__45(); 

                    }
                    break;
                case 21 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:130: T__46
                    {
                    mT__46(); 

                    }
                    break;
                case 22 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:136: T__47
                    {
                    mT__47(); 

                    }
                    break;
                case 23 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:142: T__48
                    {
                    mT__48(); 

                    }
                    break;
                case 24 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:148: T__49
                    {
                    mT__49(); 

                    }
                    break;
                case 25 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:154: T__50
                    {
                    mT__50(); 

                    }
                    break;
                case 26 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:160: T__51
                    {
                    mT__51(); 

                    }
                    break;
                case 27 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:166: T__52
                    {
                    mT__52(); 

                    }
                    break;
                case 28 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:172: T__53
                    {
                    mT__53(); 

                    }
                    break;
                case 29 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:178: T__54
                    {
                    mT__54(); 

                    }
                    break;
                case 30 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:184: T__55
                    {
                    mT__55(); 

                    }
                    break;
                case 31 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:190: T__56
                    {
                    mT__56(); 

                    }
                    break;
                case 32 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:196: T__57
                    {
                    mT__57(); 

                    }
                    break;
                case 33 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:202: T__58
                    {
                    mT__58(); 

                    }
                    break;
                case 34 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:208: T__59
                    {
                    mT__59(); 

                    }
                    break;
                case 35 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:214: T__60
                    {
                    mT__60(); 

                    }
                    break;
                case 36 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:220: T__61
                    {
                    mT__61(); 

                    }
                    break;
                case 37 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:226: T__62
                    {
                    mT__62(); 

                    }
                    break;
                case 38 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:232: T__63
                    {
                    mT__63(); 

                    }
                    break;
                case 39 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:238: T__64
                    {
                    mT__64(); 

                    }
                    break;
                case 40 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:244: T__65
                    {
                    mT__65(); 

                    }
                    break;
                case 41 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:250: T__66
                    {
                    mT__66(); 

                    }
                    break;
                case 42 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:256: T__67
                    {
                    mT__67(); 

                    }
                    break;
                case 43 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:262: T__68
                    {
                    mT__68(); 

                    }
                    break;
                case 44 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:268: T__69
                    {
                    mT__69(); 

                    }
                    break;
                case 45 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:274: T__70
                    {
                    mT__70(); 

                    }
                    break;
                case 46 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:280: T__71
                    {
                    mT__71(); 

                    }
                    break;
                case 47 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:286: T__72
                    {
                    mT__72(); 

                    }
                    break;
                case 48 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:292: T__73
                    {
                    mT__73(); 

                    }
                    break;
                case 49 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:298: T__74
                    {
                    mT__74(); 

                    }
                    break;
                case 50 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:304: T__75
                    {
                    mT__75(); 

                    }
                    break;
                case 51 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:310: T__76
                    {
                    mT__76(); 

                    }
                    break;
                case 52 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:316: T__77
                    {
                    mT__77(); 

                    }
                    break;
                case 53 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:322: T__78
                    {
                    mT__78(); 

                    }
                    break;
                case 54 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:328: T__79
                    {
                    mT__79(); 

                    }
                    break;
                case 55 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:334: T__80
                    {
                    mT__80(); 

                    }
                    break;
                case 56 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:340: T__81
                    {
                    mT__81(); 

                    }
                    break;
                case 57 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:346: T__82
                    {
                    mT__82(); 

                    }
                    break;
                case 58 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:352: LineComment
                    {
                    mLineComment(); 

                    }
                    break;
                case 59 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:364: MultilineComment
                    {
                    mMultilineComment(); 

                    }
                    break;
                case 60 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:381: NumberLiteral
                    {
                    mNumberLiteral(); 

                    }
                    break;
                case 61 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:395: Exponent
                    {
                    mExponent(); 

                    }
                    break;
                case 62 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:404: StringLiteral
                    {
                    mStringLiteral(); 

                    }
                    break;
                case 63 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:418: WhiteSpace
                    {
                    mWhiteSpace(); 

                    }
                    break;
                case 64 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\Expression.g:1:429: Identifier
                    {
                    mIdentifier(); 

                    }
                    break;

            }

        }



        private const DFA13_eot:Array =
            DFA.unpackEncodedString("\x03\u80ff\xff\x02\x02\x02\u80ff\xff");
        private const DFA13_eof:Array =
            DFA.unpackEncodedString("\x07\u80ff\xff");
        private const DFA13_min:Array =
            DFA.unpackEncodedString("\x01\x2d\x01\x2e\x01\u80ff\xff\x02"+
            "\x2e\x02\u80ff\xff", true);
        private const DFA13_max:Array =
            DFA.unpackEncodedString("\x02\x39\x01\u80ff\xff\x01\x78\x01"+
            "\x39\x02\u80ff\xff", true);
        private const DFA13_accept:Array =
            DFA.unpackEncodedString("\x02\u80ff\xff\x01\x01\x02\u80ff\xff"+
            "\x01\x03\x01\x02");
        private const DFA13_special:Array =
            DFA.unpackEncodedString("\x07\u80ff\xff");
        private const DFA13_transition:Array = [
                DFA.unpackEncodedString("\x01\x01\x01\x02\x01\u80ff\xff"+
                "\x01\x03\x09\x04"),
                DFA.unpackEncodedString("\x01\x02\x01\u80ff\xff\x0a\x04"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x01\x06\x01\u80ff\xff\x0a\x04"+
                "\x1e\u80ff\xff\x01\x05\x1f\u80ff\xff\x01\x05"),
                DFA.unpackEncodedString("\x01\x06\x01\u80ff\xff\x0a\x04"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("")
        ];
        protected var dfa13:DFA;  // initialized in constructor

        private const DFA22_eot:Array =
            DFA.unpackEncodedString("\x01\u80ff\xff\x01\x26\x02\u80ff\xff"+
            "\x02\x26\x03\u80ff\xff\x01\x2d\x01\x2f\x01\x33\x01\x35\x01\x37"+
            "\x01\x39\x01\x3c\x01\x3f\x01\x42\x01\x44\x01\x47\x02\u80ff\xff"+
            "\x02\x26\x01\x4b\x02\x26\x01\u80ff\xff\x02\x26\x02\u80ff\xff"+
            "\x01\x50\x02\u80ff\xff\x01\x26\x03\u80ff\xff\x01\x51\x01\x26"+
            "\x01\u80ff\xff\x01\x29\x01\x26\x01\x55\x0d\u80ff\xff\x01\x57"+
            "\x02\u80ff\xff\x01\x5a\x0a\u80ff\xff\x01\x5b\x01\x26\x01\x5e"+
            "\x01\u80ff\xff\x01\x60\x01\x62\x02\x26\x02\u80ff\xff\x02\x26"+
            "\x05\u80ff\xff\x01\x68\x02\u80ff\xff\x01\x69\x02\u80ff\xff\x01"+
            "\x6a\x01\u80ff\xff\x01\x6b\x01\u80ff\xff\x02\x26\x01\x6e\x01"+
            "\x26\x05\u80ff\xff\x01\x70\x01\x26\x01\u80ff\xff\x01\x72\x01"+
            "\u80ff\xff\x01\x73\x02\u80ff\xff");
        private const DFA22_eof:Array =
            DFA.unpackEncodedString("\x74\u80ff\xff");
        private const DFA22_min:Array =
            DFA.unpackEncodedString("\x01\x09\x01\x66\x02\u80ff\xff\x01"+
            "\x2b\x01\x68\x03\u80ff\xff\x02\x3d\x01\x2a\x02\x3d\x01\x2e\x01"+
            "\x3c\x01\x3d\x01\x26\x02\x3d\x02\u80ff\xff\x01\x72\x01\x6e\x01"+
            "\x3d\x02\x74\x01\u80ff\xff\x01\x72\x01\x61\x02\u80ff\xff\x01"+
            "\x30\x02\u80ff\xff\x01\x2b\x03\u80ff\xff\x01\x30\x01\x73\x01"+
            "\u80ff\xff\x01\x30\x01\x69\x01\x3d\x0d\u80ff\xff\x01\x3d\x02"+
            "\u80ff\xff\x01\x3d\x0a\u80ff\xff\x01\x30\x01\x64\x01\x3d\x01"+
            "\u80ff\xff\x02\x30\x01\x75\x01\x6c\x02\u80ff\xff\x01\x65\x01"+
            "\x6c\x05\u80ff\xff\x01\x3d\x02\u80ff\xff\x01\x30\x02\u80ff\xff"+
            "\x01\x30\x01\u80ff\xff\x01\x30\x01\u80ff\xff\x01\x65\x01\x73"+
            "\x01\x30\x01\x65\x05\u80ff\xff\x01\x30\x01\x65\x01\u80ff\xff"+
            "\x01\x30\x01\u80ff\xff\x01\x30\x02\u80ff\xff", true);
        private const DFA22_max:Array =
            DFA.unpackEncodedString("\x01\x7e\x01\x66\x02\u80ff\xff\x01"+
            "\x6c\x01\x68\x03\u80ff\xff\x07\x3d\x01\x3e\x02\x3d\x01\x7c\x02"+
            "\u80ff\xff\x01\x72\x01\x6e\x01\x3d\x02\x74\x01\u80ff\xff\x01"+
            "\x72\x01\x61\x02\u80ff\xff\x01\x39\x02\u80ff\xff\x01\x39\x03"+
            "\u80ff\xff\x01\x7a\x01\x73\x01\u80ff\xff\x01\x7a\x01\x69\x01"+
            "\x3d\x0d\u80ff\xff\x01\x3d\x02\u80ff\xff\x01\x3e\x0a\u80ff\xff"+
            "\x01\x7a\x01\x64\x01\x3d\x01\u80ff\xff\x02\x7a\x01\x75\x01\x6c"+
            "\x02\u80ff\xff\x01\x65\x01\x6c\x05\u80ff\xff\x01\x3d\x02\u80ff\xff"+
            "\x01\x7a\x02\u80ff\xff\x01\x7a\x01\u80ff\xff\x01\x7a\x01\u80ff\xff"+
            "\x01\x65\x01\x73\x01\x7a\x01\x65\x05\u80ff\xff\x01\x7a\x01\x65"+
            "\x01\u80ff\xff\x01\x7a\x01\u80ff\xff\x01\x7a\x02\u80ff\xff", true);
        private const DFA22_accept:Array =
            DFA.unpackEncodedString("\x02\u80ff\xff\x01\x02\x01\x03\x02"+
            "\u80ff\xff\x01\x06\x01\x07\x01\x08\x0b\u80ff\xff\x01\x15\x01"+
            "\x16\x05\u80ff\xff\x01\x32\x02\u80ff\xff\x01\x36\x01\x37\x01"+
            "\u80ff\xff\x01\x39\x01\x3c\x01\u80ff\xff\x01\x3e\x01\x3f\x01"+
            "\x40\x02\u80ff\xff\x01\x3d\x03\u80ff\xff\x01\x09\x01\x0a\x01"+
            "\x2f\x01\x0b\x01\x3a\x01\x3b\x01\x30\x01\x0c\x01\x31\x01\x0d"+
            "\x01\x2d\x01\x0e\x01\x2e\x01\u80ff\xff\x01\x26\x01\x22\x01\u80ff\xff"+
            "\x01\x28\x01\x24\x01\x12\x01\x19\x01\x1d\x01\x13\x01\x1c\x01"+
            "\x14\x01\x17\x01\x1b\x03\u80ff\xff\x01\x33\x04\u80ff\xff\x01"+
            "\x38\x01\x01\x02\u80ff\xff\x01\x20\x01\x1e\x01\x0f\x01\x2a\x01"+
            "\x10\x01\u80ff\xff\x01\x2b\x01\x18\x01\u80ff\xff\x01\x21\x01"+
            "\x1f\x01\u80ff\xff\x01\x23\x01\u80ff\xff\x01\x25\x04\u80ff\xff"+
            "\x01\x11\x01\x2c\x01\x1a\x01\x27\x01\x29\x02\u80ff\xff\x01\x04"+
            "\x01\u80ff\xff\x01\x34\x01\u80ff\xff\x01\x05\x01\x35");
        private const DFA22_special:Array =
            DFA.unpackEncodedString("\x74\u80ff\xff");
        private const DFA22_transition:Array = [
                DFA.unpackEncodedString("\x02\x25\x01\u80ff\xff\x02\x25"+
                "\x12\u80ff\xff\x01\x25\x01\x18\x01\x24\x02\u80ff\xff\x01"+
                "\x0c\x01\x11\x01\x24\x01\x02\x01\x03\x01\x0a\x01\x0d\x01"+
                "\x21\x01\x0e\x01\x20\x01\x0b\x0a\x22\x01\x15\x01\x08\x01"+
                "\x0f\x01\x09\x01\x10\x01\x14\x01\u80ff\xff\x04\x26\x01\x23"+
                "\x15\x26\x01\x1e\x01\u80ff\xff\x01\x1f\x01\x12\x01\x26\x01"+
                "\u80ff\xff\x01\x17\x03\x26\x01\x04\x01\x1d\x01\x1a\x01\x26"+
                "\x01\x01\x02\x26\x01\x19\x02\x26\x01\x16\x04\x26\x01\x1c"+
                "\x02\x26\x01\x05\x03\x26\x01\x06\x01\x13\x01\x07\x01\x1b"),
                DFA.unpackEncodedString("\x01\x27"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x01\x29\x01\u80ff\xff\x01\x29"+
                "\x02\u80ff\xff\x0a\x2a\x32\u80ff\xff\x01\x28"),
                DFA.unpackEncodedString("\x01\x2b"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x01\x2c"),
                DFA.unpackEncodedString("\x01\x2e"),
                DFA.unpackEncodedString("\x01\x32\x04\u80ff\xff\x01\x31"+
                "\x0d\u80ff\xff\x01\x30"),
                DFA.unpackEncodedString("\x01\x34"),
                DFA.unpackEncodedString("\x01\x36"),
                DFA.unpackEncodedString("\x01\x22\x01\u80ff\xff\x0a\x22"+
                "\x03\u80ff\xff\x01\x38"),
                DFA.unpackEncodedString("\x01\x3a\x01\x3b"),
                DFA.unpackEncodedString("\x01\x3e\x01\x3d"),
                DFA.unpackEncodedString("\x01\x41\x16\u80ff\xff\x01\x40"),
                DFA.unpackEncodedString("\x01\x43"),
                DFA.unpackEncodedString("\x01\x45\x3e\u80ff\xff\x01\x46"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x01\x48"),
                DFA.unpackEncodedString("\x01\x49"),
                DFA.unpackEncodedString("\x01\x4a"),
                DFA.unpackEncodedString("\x01\x4c"),
                DFA.unpackEncodedString("\x01\x4d"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x01\x4e"),
                DFA.unpackEncodedString("\x01\x4f"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x0a\x22"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x01\x29\x01\u80ff\xff\x01\x29"+
                "\x02\u80ff\xff\x0a\x2a"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x0a\x26\x07\u80ff\xff\x1a\x26"+
                "\x04\u80ff\xff\x01\x26\x01\u80ff\xff\x1a\x26"),
                DFA.unpackEncodedString("\x01\x52"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x0a\x2a\x07\u80ff\xff\x1a\x26"+
                "\x04\u80ff\xff\x01\x26\x01\u80ff\xff\x1a\x26"),
                DFA.unpackEncodedString("\x01\x53"),
                DFA.unpackEncodedString("\x01\x54"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x01\x56"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x01\x58\x01\x59"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x0a\x26\x07\u80ff\xff\x1a\x26"+
                "\x04\u80ff\xff\x01\x26\x01\u80ff\xff\x1a\x26"),
                DFA.unpackEncodedString("\x01\x5c"),
                DFA.unpackEncodedString("\x01\x5d"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x0a\x26\x07\u80ff\xff\x1a\x26"+
                "\x04\u80ff\xff\x01\x26\x01\u80ff\xff\x04\x26\x01\x5f\x15"+
                "\x26"),
                DFA.unpackEncodedString("\x0a\x26\x07\u80ff\xff\x1a\x26"+
                "\x04\u80ff\xff\x01\x26\x01\u80ff\xff\x04\x26\x01\x61\x15"+
                "\x26"),
                DFA.unpackEncodedString("\x01\x63"),
                DFA.unpackEncodedString("\x01\x64"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x01\x65"),
                DFA.unpackEncodedString("\x01\x66"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x01\x67"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x0a\x26\x07\u80ff\xff\x1a\x26"+
                "\x04\u80ff\xff\x01\x26\x01\u80ff\xff\x1a\x26"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x0a\x26\x07\u80ff\xff\x1a\x26"+
                "\x04\u80ff\xff\x01\x26\x01\u80ff\xff\x1a\x26"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x0a\x26\x07\u80ff\xff\x1a\x26"+
                "\x04\u80ff\xff\x01\x26\x01\u80ff\xff\x1a\x26"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x01\x6c"),
                DFA.unpackEncodedString("\x01\x6d"),
                DFA.unpackEncodedString("\x0a\x26\x07\u80ff\xff\x1a\x26"+
                "\x04\u80ff\xff\x01\x26\x01\u80ff\xff\x1a\x26"),
                DFA.unpackEncodedString("\x01\x6f"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x0a\x26\x07\u80ff\xff\x1a\x26"+
                "\x04\u80ff\xff\x01\x26\x01\u80ff\xff\x1a\x26"),
                DFA.unpackEncodedString("\x01\x71"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x0a\x26\x07\u80ff\xff\x1a\x26"+
                "\x04\u80ff\xff\x01\x26\x01\u80ff\xff\x1a\x26"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x0a\x26\x07\u80ff\xff\x1a\x26"+
                "\x04\u80ff\xff\x01\x26\x01\u80ff\xff\x1a\x26"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("")
        ];
        protected var dfa22:DFA;  // initialized in constructor
     

    }
}