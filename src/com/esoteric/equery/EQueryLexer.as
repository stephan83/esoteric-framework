// $ANTLR 3.2 Sep 23, 2009 12:02:23 C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g 2010-01-23 21:57:51
package com.esoteric.equery {
    import org.antlr.runtime.*;
        

    public class EQueryLexer extends Lexer {
        public static const T__29:int=29;
        public static const ClassSelector:int=9;
        public static const T__28:int=28;
        public static const T__27:int=27;
        public static const Query:int=4;
        public static const T__26:int=26;
        public static const T__25:int=25;
        public static const UnicodeEscapeChar:int=22;
        public static const T__24:int=24;
        public static const NumberLiteral:int=14;
        public static const IdSelector:int=7;
        public static const T__23:int=23;
        public static const AttrSelector:int=12;
        public static const ChildSelector:int=8;
        public static const KindSelector:int=6;
        public static const Exponent:int=17;
        public static const Digit:int=16;
        public static const EOF:int=-1;
        public static const HexDigit:int=18;
        public static const Identifier:int=13;
        public static const StringLiteral:int=15;
        public static const T__30:int=30;
        public static const T__31:int=31;
        public static const T__32:int=32;
        public static const FirstSelector:int=10;
        public static const T__33:int=33;
        public static const T__34:int=34;
        public static const LastSelector:int=11;
        public static const AllSelector:int=5;
        public static const T__35:int=35;
        public static const WhiteSpace:int=20;
        public static const EscapeSequence:int=19;
        public static const Letter:int=21;

        // delegates
        // delegators

        public function EQueryLexer(input:CharStream = null, state:RecognizerSharedState = null) {
            super(input, state);

            dfa10 = new DFA(this, 10,
                        "112:1: NumberLiteral : ( ( '-' )? ( '.' )? ( Digit )+ ( Exponent )? | ( '-' )? ( Digit )+ '.' ( Digit )+ ( Exponent )? | '0' ( 'x' | 'X' ) ( HexDigit )+ );",
                        DFA10_eot, DFA10_eof, DFA10_min,
                        DFA10_max, DFA10_accept, DFA10_special,
                        DFA10_transition);

            dfa19 = new DFA(this, 19,
                        "1:1: Tokens : ( T__23 | T__24 | T__25 | T__26 | T__27 | T__28 | T__29 | T__30 | T__31 | T__32 | T__33 | T__34 | T__35 | NumberLiteral | Exponent | StringLiteral | WhiteSpace | Identifier );",
                        DFA19_eot, DFA19_eof, DFA19_min,
                        DFA19_max, DFA19_accept, DFA19_special,
                        DFA19_transition);


        }
        public override function get grammarFileName():String { return "C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g"; }

        // $ANTLR start T__23
        public final function mT__23():void {
            try {
                var _type:int = T__23;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:9:7: ( '*' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:9:9: '*'
                {
                match(42); 

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__23

        // $ANTLR start T__24
        public final function mT__24():void {
            try {
                var _type:int = T__24;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:10:7: ( '#' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:10:9: '#'
                {
                match(35); 

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__24

        // $ANTLR start T__25
        public final function mT__25():void {
            try {
                var _type:int = T__25;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:11:7: ( '>' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:11:9: '>'
                {
                match(62); 

                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__25

        // $ANTLR start T__26
        public final function mT__26():void {
            try {
                var _type:int = T__26;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:12:7: ( '.' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:12:9: '.'
                {
                match(46); 

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
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:13:7: ( ':first-child' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:13:9: ':first-child'
                {
                matchString(":first-child"); 


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
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:14:7: ( ':last-child' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:14:9: ':last-child'
                {
                matchString(":last-child"); 


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
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:15:7: ( '[' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:15:9: '['
                {
                match(91); 

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
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:16:7: ( ']' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:16:9: ']'
                {
                match(93); 

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
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:17:7: ( '=' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:17:9: '='
                {
                match(61); 

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
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:18:7: ( '!=' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:18:9: '!='
                {
                matchString("!="); 


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
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:19:7: ( '<' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:19:9: '<'
                {
                match(60); 

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
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:20:7: ( '<=' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:20:9: '<='
                {
                matchString("<="); 


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
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:21:7: ( '>=' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:21:9: '>='
                {
                matchString(">="); 


                }

                this.state.type = _type;
                this.state.channel = _channel;
            }
            finally {
            }
        }
        // $ANTLR end T__35

        // $ANTLR start NumberLiteral
        public final function mNumberLiteral():void {
            try {
                var _type:int = NumberLiteral;
                var _channel:int = DEFAULT_TOKEN_CHANNEL;
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:113:3: ( ( '-' )? ( '.' )? ( Digit )+ ( Exponent )? | ( '-' )? ( Digit )+ '.' ( Digit )+ ( Exponent )? | '0' ( 'x' | 'X' ) ( HexDigit )+ )
                var alt10:int=3;
                alt10 = dfa10.predict(input);
                switch (alt10) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:113:5: ( '-' )? ( '.' )? ( Digit )+ ( Exponent )?
                        {
                        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:113:5: ( '-' )?
                        var alt1:int=2;
                        var LA1_0:int = input.LA(1);

                        if ( (LA1_0==45) ) {
                            alt1=1;
                        }
                        switch (alt1) {
                            case 1 :
                                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:113:5: '-'
                                {
                                match(45); 

                                }
                                break;

                        }

                        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:113:10: ( '.' )?
                        var alt2:int=2;
                        var LA2_0:int = input.LA(1);

                        if ( (LA2_0==46) ) {
                            alt2=1;
                        }
                        switch (alt2) {
                            case 1 :
                                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:113:10: '.'
                                {
                                match(46); 

                                }
                                break;

                        }

                        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:113:15: ( Digit )+
                        var cnt3:int=0;
                        loop3:
                        do {
                            var alt3:int=2;
                            var LA3_0:int = input.LA(1);

                            if ( ((LA3_0>=48 && LA3_0<=57)) ) {
                                alt3=1;
                            }


                            switch (alt3) {
                        	case 1 :
                        	    // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:113:15: Digit
                        	    {
                        	    mDigit(); 

                        	    }
                        	    break;

                        	default :
                        	    if ( cnt3 >= 1 ) break loop3;
                                    throw new EarlyExitException(3, input);

                            }
                            cnt3++;
                        } while (true);

                        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:113:22: ( Exponent )?
                        var alt4:int=2;
                        var LA4_0:int = input.LA(1);

                        if ( (LA4_0==69||LA4_0==101) ) {
                            alt4=1;
                        }
                        switch (alt4) {
                            case 1 :
                                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:113:22: Exponent
                                {
                                mExponent(); 

                                }
                                break;

                        }


                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:114:4: ( '-' )? ( Digit )+ '.' ( Digit )+ ( Exponent )?
                        {
                        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:114:4: ( '-' )?
                        var alt5:int=2;
                        var LA5_0:int = input.LA(1);

                        if ( (LA5_0==45) ) {
                            alt5=1;
                        }
                        switch (alt5) {
                            case 1 :
                                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:114:4: '-'
                                {
                                match(45); 

                                }
                                break;

                        }

                        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:114:9: ( Digit )+
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
                        	    // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:114:9: Digit
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

                        match(46); 
                        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:114:20: ( Digit )+
                        var cnt7:int=0;
                        loop7:
                        do {
                            var alt7:int=2;
                            var LA7_0:int = input.LA(1);

                            if ( ((LA7_0>=48 && LA7_0<=57)) ) {
                                alt7=1;
                            }


                            switch (alt7) {
                        	case 1 :
                        	    // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:114:20: Digit
                        	    {
                        	    mDigit(); 

                        	    }
                        	    break;

                        	default :
                        	    if ( cnt7 >= 1 ) break loop7;
                                    throw new EarlyExitException(7, input);

                            }
                            cnt7++;
                        } while (true);

                        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:114:28: ( Exponent )?
                        var alt8:int=2;
                        var LA8_0:int = input.LA(1);

                        if ( (LA8_0==69||LA8_0==101) ) {
                            alt8=1;
                        }
                        switch (alt8) {
                            case 1 :
                                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:114:28: Exponent
                                {
                                mExponent(); 

                                }
                                break;

                        }


                        }
                        break;
                    case 3 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:115:4: '0' ( 'x' | 'X' ) ( HexDigit )+
                        {
                        match(48); 
                        if ( input.LA(1)==88||input.LA(1)==120 ) {
                            input.consume();

                        }
                        else {
                            throw recover(new MismatchedSetException(null,input));
                        }

                        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:115:22: ( HexDigit )+
                        var cnt9:int=0;
                        loop9:
                        do {
                            var alt9:int=2;
                            var LA9_0:int = input.LA(1);

                            if ( ((LA9_0>=48 && LA9_0<=57)||(LA9_0>=65 && LA9_0<=70)||(LA9_0>=97 && LA9_0<=102)) ) {
                                alt9=1;
                            }


                            switch (alt9) {
                        	case 1 :
                        	    // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:115:22: HexDigit
                        	    {
                        	    mHexDigit(); 

                        	    }
                        	    break;

                        	default :
                        	    if ( cnt9 >= 1 ) break loop9;
                                    throw new EarlyExitException(9, input);

                            }
                            cnt9++;
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
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:119:2: ( ( 'e' | 'E' ) ( '-' | '+' )? ( Digit )+ )
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:119:4: ( 'e' | 'E' ) ( '-' | '+' )? ( Digit )+
                {
                if ( input.LA(1)==69||input.LA(1)==101 ) {
                    input.consume();

                }
                else {
                    throw recover(new MismatchedSetException(null,input));
                }

                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:119:16: ( '-' | '+' )?
                var alt11:int=2;
                var LA11_0:int = input.LA(1);

                if ( (LA11_0==43||LA11_0==45) ) {
                    alt11=1;
                }
                switch (alt11) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:
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

                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:119:31: ( Digit )+
                var cnt12:int=0;
                loop12:
                do {
                    var alt12:int=2;
                    var LA12_0:int = input.LA(1);

                    if ( ((LA12_0>=48 && LA12_0<=57)) ) {
                        alt12=1;
                    }


                    switch (alt12) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:119:31: Digit
                	    {
                	    mDigit(); 

                	    }
                	    break;

                	default :
                	    if ( cnt12 >= 1 ) break loop12;
                            throw new EarlyExitException(12, input);

                    }
                    cnt12++;
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
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:124:2: ( '\"' ( EscapeSequence | ~ ( '\\u0000' .. '\\u001f' | '\\\\' | '\\\"' ) )* '\"' | '\\'' ( EscapeSequence | ~ ( '\\u0000' .. '\\u001f' | '\\\\' | '\\'' ) )* '\\'' )
                var alt15:int=2;
                var LA15_0:int = input.LA(1);

                if ( (LA15_0==34) ) {
                    alt15=1;
                }
                else if ( (LA15_0==39) ) {
                    alt15=2;
                }
                else {
                    throw new NoViableAltException("", 15, 0, input);

                }
                switch (alt15) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:124:4: '\"' ( EscapeSequence | ~ ( '\\u0000' .. '\\u001f' | '\\\\' | '\\\"' ) )* '\"'
                        {
                        match(34); 
                        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:124:8: ( EscapeSequence | ~ ( '\\u0000' .. '\\u001f' | '\\\\' | '\\\"' ) )*
                        loop13:
                        do {
                            var alt13:int=3;
                            var LA13_0:int = input.LA(1);

                            if ( (LA13_0==92) ) {
                                alt13=1;
                            }
                            else if ( ((LA13_0>=32 && LA13_0<=33)||(LA13_0>=35 && LA13_0<=91)||(LA13_0>=93 && LA13_0<=65535)) ) {
                                alt13=2;
                            }


                            switch (alt13) {
                        	case 1 :
                        	    // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:124:10: EscapeSequence
                        	    {
                        	    mEscapeSequence(); 

                        	    }
                        	    break;
                        	case 2 :
                        	    // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:124:27: ~ ( '\\u0000' .. '\\u001f' | '\\\\' | '\\\"' )
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
                        	    break loop13;
                            }
                        } while (true);

                        match(34); 

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:125:4: '\\'' ( EscapeSequence | ~ ( '\\u0000' .. '\\u001f' | '\\\\' | '\\'' ) )* '\\''
                        {
                        match(39); 
                        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:125:9: ( EscapeSequence | ~ ( '\\u0000' .. '\\u001f' | '\\\\' | '\\'' ) )*
                        loop14:
                        do {
                            var alt14:int=3;
                            var LA14_0:int = input.LA(1);

                            if ( (LA14_0==92) ) {
                                alt14=1;
                            }
                            else if ( ((LA14_0>=32 && LA14_0<=38)||(LA14_0>=40 && LA14_0<=91)||(LA14_0>=93 && LA14_0<=65535)) ) {
                                alt14=2;
                            }


                            switch (alt14) {
                        	case 1 :
                        	    // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:125:11: EscapeSequence
                        	    {
                        	    mEscapeSequence(); 

                        	    }
                        	    break;
                        	case 2 :
                        	    // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:125:28: ~ ( '\\u0000' .. '\\u001f' | '\\\\' | '\\'' )
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
                        	    break loop14;
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
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:129:2: ( ( '\\t' | ' ' | '\\r' | '\\n' | '\\u000C' )+ )
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:129:4: ( '\\t' | ' ' | '\\r' | '\\n' | '\\u000C' )+
                {
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:129:4: ( '\\t' | ' ' | '\\r' | '\\n' | '\\u000C' )+
                var cnt16:int=0;
                loop16:
                do {
                    var alt16:int=2;
                    var LA16_0:int = input.LA(1);

                    if ( ((LA16_0>=9 && LA16_0<=10)||(LA16_0>=12 && LA16_0<=13)||LA16_0==32) ) {
                        alt16=1;
                    }


                    switch (alt16) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:
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
                	    if ( cnt16 >= 1 ) break loop16;
                            throw new EarlyExitException(16, input);

                    }
                    cnt16++;
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
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:136:2: ( ( Letter | '_' ) ( Letter | Digit | '_' )* )
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:136:4: ( Letter | '_' ) ( Letter | Digit | '_' )*
                {
                if ( (input.LA(1)>=65 && input.LA(1)<=90)||input.LA(1)==95||(input.LA(1)>=97 && input.LA(1)<=122) ) {
                    input.consume();

                }
                else {
                    throw recover(new MismatchedSetException(null,input));
                }

                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:136:21: ( Letter | Digit | '_' )*
                loop17:
                do {
                    var alt17:int=2;
                    var LA17_0:int = input.LA(1);

                    if ( ((LA17_0>=48 && LA17_0<=57)||(LA17_0>=65 && LA17_0<=90)||LA17_0==95||(LA17_0>=97 && LA17_0<=122)) ) {
                        alt17=1;
                    }


                    switch (alt17) {
                	case 1 :
                	    // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:
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
                	    break loop17;
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
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:140:2: ( '0' .. '9' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:140:4: '0' .. '9'
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
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:144:2: ( Digit | 'a' .. 'f' | 'A' .. 'F' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:
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
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:150:2: ( 'a' .. 'z' | 'A' .. 'Z' )
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:
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
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:155:2: ( '\\\\' ( UnicodeEscapeChar | 'b' | 't' | 'n' | 'f' | 'r' | '\\\"' | '\\'' | '\\\\' ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:155:4: '\\\\' ( UnicodeEscapeChar | 'b' | 't' | 'n' | 'f' | 'r' | '\\\"' | '\\'' | '\\\\' )
                {
                match(92); 
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:155:9: ( UnicodeEscapeChar | 'b' | 't' | 'n' | 'f' | 'r' | '\\\"' | '\\'' | '\\\\' )
                var alt18:int=9;
                switch ( input.LA(1) ) {
                case 117:
                    {
                    alt18=1;
                    }
                    break;
                case 98:
                    {
                    alt18=2;
                    }
                    break;
                case 116:
                    {
                    alt18=3;
                    }
                    break;
                case 110:
                    {
                    alt18=4;
                    }
                    break;
                case 102:
                    {
                    alt18=5;
                    }
                    break;
                case 114:
                    {
                    alt18=6;
                    }
                    break;
                case 34:
                    {
                    alt18=7;
                    }
                    break;
                case 39:
                    {
                    alt18=8;
                    }
                    break;
                case 92:
                    {
                    alt18=9;
                    }
                    break;
                default:
                    throw new NoViableAltException("", 18, 0, input);

                }

                switch (alt18) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:155:10: UnicodeEscapeChar
                        {
                        mUnicodeEscapeChar(); 

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:155:29: 'b'
                        {
                        match(98); 

                        }
                        break;
                    case 3 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:155:33: 't'
                        {
                        match(116); 

                        }
                        break;
                    case 4 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:155:37: 'n'
                        {
                        match(110); 

                        }
                        break;
                    case 5 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:155:41: 'f'
                        {
                        match(102); 

                        }
                        break;
                    case 6 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:155:45: 'r'
                        {
                        match(114); 

                        }
                        break;
                    case 7 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:155:49: '\\\"'
                        {
                        match(34); 

                        }
                        break;
                    case 8 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:155:54: '\\''
                        {
                        match(39); 

                        }
                        break;
                    case 9 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:155:59: '\\\\'
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
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:159:2: ( 'u' HexDigit HexDigit HexDigit HexDigit )
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:159:4: 'u' HexDigit HexDigit HexDigit HexDigit
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
            // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:1:8: ( T__23 | T__24 | T__25 | T__26 | T__27 | T__28 | T__29 | T__30 | T__31 | T__32 | T__33 | T__34 | T__35 | NumberLiteral | Exponent | StringLiteral | WhiteSpace | Identifier )
            var alt19:int=18;
            alt19 = dfa19.predict(input);
            switch (alt19) {
                case 1 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:1:10: T__23
                    {
                    mT__23(); 

                    }
                    break;
                case 2 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:1:16: T__24
                    {
                    mT__24(); 

                    }
                    break;
                case 3 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:1:22: T__25
                    {
                    mT__25(); 

                    }
                    break;
                case 4 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:1:28: T__26
                    {
                    mT__26(); 

                    }
                    break;
                case 5 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:1:34: T__27
                    {
                    mT__27(); 

                    }
                    break;
                case 6 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:1:40: T__28
                    {
                    mT__28(); 

                    }
                    break;
                case 7 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:1:46: T__29
                    {
                    mT__29(); 

                    }
                    break;
                case 8 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:1:52: T__30
                    {
                    mT__30(); 

                    }
                    break;
                case 9 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:1:58: T__31
                    {
                    mT__31(); 

                    }
                    break;
                case 10 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:1:64: T__32
                    {
                    mT__32(); 

                    }
                    break;
                case 11 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:1:70: T__33
                    {
                    mT__33(); 

                    }
                    break;
                case 12 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:1:76: T__34
                    {
                    mT__34(); 

                    }
                    break;
                case 13 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:1:82: T__35
                    {
                    mT__35(); 

                    }
                    break;
                case 14 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:1:88: NumberLiteral
                    {
                    mNumberLiteral(); 

                    }
                    break;
                case 15 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:1:102: Exponent
                    {
                    mExponent(); 

                    }
                    break;
                case 16 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:1:111: StringLiteral
                    {
                    mStringLiteral(); 

                    }
                    break;
                case 17 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:1:125: WhiteSpace
                    {
                    mWhiteSpace(); 

                    }
                    break;
                case 18 :
                    // C:\\Users\\Stephan\\Desktop\\compiler\\EQuery.g:1:136: Identifier
                    {
                    mIdentifier(); 

                    }
                    break;

            }

        }



        private const DFA10_eot:Array =
            DFA.unpackEncodedString("\x03\u80ff\xff\x02\x02\x02\u80ff\xff");
        private const DFA10_eof:Array =
            DFA.unpackEncodedString("\x07\u80ff\xff");
        private const DFA10_min:Array =
            DFA.unpackEncodedString("\x01\x2d\x01\x2e\x01\u80ff\xff\x02"+
            "\x2e\x02\u80ff\xff", true);
        private const DFA10_max:Array =
            DFA.unpackEncodedString("\x02\x39\x01\u80ff\xff\x01\x78\x01"+
            "\x39\x02\u80ff\xff", true);
        private const DFA10_accept:Array =
            DFA.unpackEncodedString("\x02\u80ff\xff\x01\x01\x02\u80ff\xff"+
            "\x01\x03\x01\x02");
        private const DFA10_special:Array =
            DFA.unpackEncodedString("\x07\u80ff\xff");
        private const DFA10_transition:Array = [
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
        protected var dfa10:DFA;  // initialized in constructor

        private const DFA19_eot:Array =
            DFA.unpackEncodedString("\x03\u80ff\xff\x01\x11\x01\x12\x05"+
            "\u80ff\xff\x01\x16\x01\u80ff\xff\x01\x0f\x0b\u80ff\xff\x01\x17");
        private const DFA19_eof:Array =
            DFA.unpackEncodedString("\x19\u80ff\xff");
        private const DFA19_min:Array =
            DFA.unpackEncodedString("\x01\x09\x02\u80ff\xff\x01\x3d\x01"+
            "\x30\x01\x66\x04\u80ff\xff\x01\x3d\x01\u80ff\xff\x01\x2b\x0b"+
            "\u80ff\xff\x01\x30", true);
        private const DFA19_max:Array =
            DFA.unpackEncodedString("\x01\x7a\x02\u80ff\xff\x01\x3d\x01"+
            "\x39\x01\x6c\x04\u80ff\xff\x01\x3d\x01\u80ff\xff\x01\x39\x0b"+
            "\u80ff\xff\x01\x7a", true);
        private const DFA19_accept:Array =
            DFA.unpackEncodedString("\x01\u80ff\xff\x01\x01\x01\x02\x03"+
            "\u80ff\xff\x01\x07\x01\x08\x01\x09\x01\x0a\x01\u80ff\xff\x01"+
            "\x0e\x01\u80ff\xff\x01\x10\x01\x11\x01\x12\x01\x0d\x01\x03\x01"+
            "\x04\x01\x05\x01\x06\x01\x0c\x01\x0b\x01\x0f\x01\u80ff\xff");
        private const DFA19_special:Array =
            DFA.unpackEncodedString("\x19\u80ff\xff");
        private const DFA19_transition:Array = [
                DFA.unpackEncodedString("\x02\x0e\x01\u80ff\xff\x02\x0e"+
                "\x12\u80ff\xff\x01\x0e\x01\x09\x01\x0d\x01\x02\x03\u80ff\xff"+
                "\x01\x0d\x02\u80ff\xff\x01\x01\x02\u80ff\xff\x01\x0b\x01"+
                "\x04\x01\u80ff\xff\x0a\x0b\x01\x05\x01\u80ff\xff\x01\x0a"+
                "\x01\x08\x01\x03\x02\u80ff\xff\x04\x0f\x01\x0c\x15\x0f\x01"+
                "\x06\x01\u80ff\xff\x01\x07\x01\u80ff\xff\x01\x0f\x01\u80ff\xff"+
                "\x04\x0f\x01\x0c\x15\x0f"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x01\x10"),
                DFA.unpackEncodedString("\x0a\x0b"),
                DFA.unpackEncodedString("\x01\x13\x05\u80ff\xff\x01\x14"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x01\x15"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x01\x17\x01\u80ff\xff\x01\x17"+
                "\x02\u80ff\xff\x0a\x18"),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString(""),
                DFA.unpackEncodedString("\x0a\x18\x07\u80ff\xff\x1a\x0f"+
                "\x04\u80ff\xff\x01\x0f\x01\u80ff\xff\x1a\x0f")
        ];
        protected var dfa19:DFA;  // initialized in constructor
     

    }
}