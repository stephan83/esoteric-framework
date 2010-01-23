// $ANTLR 3.2 Sep 23, 2009 12:02:23 C:\\Users\\Stephan\\Desktop\\compiler\\EQueryWalker.g 2010-01-23 22:21:01
package com.esoteric.equery {
    import org.antlr.runtime.*;
        import org.antlr.runtime.tree.*;    

    public class EQueryWalker extends TreeParser {
        public static const tokenNames:Array = [
            "<invalid>", "<EOR>", "<DOWN>", "<UP>", "Query", "AllSelector", "KindSelector", "IdSelector", "ChildSelector", "ClassSelector", "FirstSelector", "LastSelector", "AttrSelector", "Identifier", "NumberLiteral", "StringLiteral", "Digit", "Exponent", "HexDigit", "EscapeSequence", "WhiteSpace", "Letter", "UnicodeEscapeChar", "'*'", "'#'", "'>'", "'.'", "':first-child'", "':last-child'", "'['", "']'", "'='", "'!='", "'<'", "'<='", "'>='"
        ];
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


            public function EQueryWalker(input:TreeNodeStream, state:RecognizerSharedState = null) {
                super(input, state);
                this.state.ruleMemo = new Array(26+1);
                 
            }
            

        public override function get tokenNames():Array { return EQueryWalker.tokenNames; }
        public override function get grammarFileName():String { return "C:\\Users\\Stephan\\Desktop\\compiler\\EQueryWalker.g"; }


        	private var _elementSet:ElementSet;
        	
        	public function get elementSet():ElementSet { return _elementSet; }
        	
        	public function set elementSet(value:ElementSet):void { _elementSet = value; }
        			
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
        // C:\\Users\\Stephan\\Desktop\\compiler\\EQueryWalker.g:44:1: main : ( ^( Query ( selector )* ) | EOF );
        public final function main():void {
            var main_StartIndex:int = input.index;
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 1) ) { return ; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQueryWalker.g:44:6: ( ^( Query ( selector )* ) | EOF )
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
                        // C:\\Users\\Stephan\\Desktop\\compiler\\EQueryWalker.g:44:8: ^( Query ( selector )* )
                        {
                        matchStream(input,Query,FOLLOW_Query_in_main65); if (this.state.failed) return ;

                        if ( input.LA(1)==TokenConstants.DOWN ) {
                            matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
                            // C:\\Users\\Stephan\\Desktop\\compiler\\EQueryWalker.g:44:16: ( selector )*
                            loop1:
                            do {
                                var alt1:int=2;
                                var LA1_0:int = input.LA(1);

                                if ( ((LA1_0>=5 && LA1_0<=12)) ) {
                                    alt1=1;
                                }


                                switch (alt1) {
                            	case 1 :
                            	    // C:\\Users\\Stephan\\Desktop\\compiler\\EQueryWalker.g:0:0: selector
                            	    {
                            	    pushFollow(FOLLOW_selector_in_main67);
                            	    selector();

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
                        // C:\\Users\\Stephan\\Desktop\\compiler\\EQueryWalker.g:45:4: EOF
                        {
                        matchStream(input,EOF,FOLLOW_EOF_in_main74); if (this.state.failed) return ;

                        }
                        break;

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

        // $ANTLR start selector
        // C:\\Users\\Stephan\\Desktop\\compiler\\EQueryWalker.g:48:1: selector : ( allSelector | kindSelector | idSelector | childSelector | classSelector | firstSelector | lastSelector | attrSelector );
        public final function selector():void {
            var selector_StartIndex:int = input.index;
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 2) ) { return ; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQueryWalker.g:49:2: ( allSelector | kindSelector | idSelector | childSelector | classSelector | firstSelector | lastSelector | attrSelector )
                var alt3:int=8;
                switch ( input.LA(1) ) {
                case AllSelector:
                    {
                    alt3=1;
                    }
                    break;
                case KindSelector:
                    {
                    alt3=2;
                    }
                    break;
                case IdSelector:
                    {
                    alt3=3;
                    }
                    break;
                case ChildSelector:
                    {
                    alt3=4;
                    }
                    break;
                case ClassSelector:
                    {
                    alt3=5;
                    }
                    break;
                case FirstSelector:
                    {
                    alt3=6;
                    }
                    break;
                case LastSelector:
                    {
                    alt3=7;
                    }
                    break;
                case AttrSelector:
                    {
                    alt3=8;
                    }
                    break;
                default:
                    if (this.state.backtracking>0) {this.state.failed=true; return ;}
                    throw new NoViableAltException("", 3, 0, input);

                }

                switch (alt3) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\EQueryWalker.g:49:4: allSelector
                        {
                        pushFollow(FOLLOW_allSelector_in_selector86);
                        allSelector();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return ;

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\EQueryWalker.g:50:4: kindSelector
                        {
                        pushFollow(FOLLOW_kindSelector_in_selector91);
                        kindSelector();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return ;

                        }
                        break;
                    case 3 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\EQueryWalker.g:51:4: idSelector
                        {
                        pushFollow(FOLLOW_idSelector_in_selector96);
                        idSelector();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return ;

                        }
                        break;
                    case 4 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\EQueryWalker.g:52:4: childSelector
                        {
                        pushFollow(FOLLOW_childSelector_in_selector101);
                        childSelector();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return ;

                        }
                        break;
                    case 5 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\EQueryWalker.g:53:4: classSelector
                        {
                        pushFollow(FOLLOW_classSelector_in_selector106);
                        classSelector();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return ;

                        }
                        break;
                    case 6 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\EQueryWalker.g:54:4: firstSelector
                        {
                        pushFollow(FOLLOW_firstSelector_in_selector111);
                        firstSelector();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return ;

                        }
                        break;
                    case 7 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\EQueryWalker.g:55:4: lastSelector
                        {
                        pushFollow(FOLLOW_lastSelector_in_selector116);
                        lastSelector();

                        state._fsp = state._fsp - 1;
                        if (this.state.failed) return ;

                        }
                        break;
                    case 8 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\EQueryWalker.g:56:4: attrSelector
                        {
                        pushFollow(FOLLOW_attrSelector_in_selector121);
                        attrSelector();

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
                if ( this.state.backtracking>0 ) { memoize(input, 2, selector_StartIndex); }
            }
            return ;
        }
        // $ANTLR end selector

        // $ANTLR start allSelector
        // C:\\Users\\Stephan\\Desktop\\compiler\\EQueryWalker.g:59:1: allSelector : ^( AllSelector ) ;
        public final function allSelector():void {
            var allSelector_StartIndex:int = input.index;
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 3) ) { return ; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQueryWalker.g:60:2: ( ^( AllSelector ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQueryWalker.g:60:4: ^( AllSelector )
                {
                matchStream(input,AllSelector,FOLLOW_AllSelector_in_allSelector138); if (this.state.failed) return ;

                if ( this.state.backtracking==0 ) {
                   _elementSet.selectAll() 
                }

                if ( input.LA(1)==TokenConstants.DOWN ) {
                    matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
                    matchStream(input, TokenConstants.UP, null); if (this.state.failed) return ;
                }

                }

            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 3, allSelector_StartIndex); }
            }
            return ;
        }
        // $ANTLR end allSelector

        // $ANTLR start kindSelector
        // C:\\Users\\Stephan\\Desktop\\compiler\\EQueryWalker.g:65:1: kindSelector : ^( KindSelector Identifier ) ;
        public final function kindSelector():TreeRuleReturnScope {
            var retval:TreeRuleReturnScope = new TreeRuleReturnScope();
            retval.start = input.LT(1);
            var kindSelector_StartIndex:int = input.index;
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 4) ) { return retval; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQueryWalker.g:66:2: ( ^( KindSelector Identifier ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQueryWalker.g:66:4: ^( KindSelector Identifier )
                {
                matchStream(input,KindSelector,FOLLOW_KindSelector_in_kindSelector165); if (this.state.failed) return retval;

                matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return retval;
                matchStream(input,Identifier,FOLLOW_Identifier_in_kindSelector167); if (this.state.failed) return retval;
                if ( this.state.backtracking==0 ) {
                   _elementSet.selectKind(input.tokenStream.toStringWithRange(
                    input.treeAdaptor.getTokenStartIndex(retval.start),
                    input.treeAdaptor.getTokenStopIndex(retval.start))) 
                }

                matchStream(input, TokenConstants.UP, null); if (this.state.failed) return retval;

                }

            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 4, kindSelector_StartIndex); }
            }
            return retval;
        }
        // $ANTLR end kindSelector

        // $ANTLR start idSelector
        // C:\\Users\\Stephan\\Desktop\\compiler\\EQueryWalker.g:71:1: idSelector : ^( IdSelector i= Identifier ) ;
        public final function idSelector():void {
            var idSelector_StartIndex:int = input.index;
            var i:Object=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 5) ) { return ; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQueryWalker.g:72:2: ( ^( IdSelector i= Identifier ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQueryWalker.g:72:4: ^( IdSelector i= Identifier )
                {
                matchStream(input,IdSelector,FOLLOW_IdSelector_in_idSelector193); if (this.state.failed) return ;

                matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
                i=Object(matchStream(input,Identifier,FOLLOW_Identifier_in_idSelector197)); if (this.state.failed) return ;
                if ( this.state.backtracking==0 ) {
                   _elementSet.selectId((i!=null?i.text:null)) 
                }

                matchStream(input, TokenConstants.UP, null); if (this.state.failed) return ;

                }

            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 5, idSelector_StartIndex); }
            }
            return ;
        }
        // $ANTLR end idSelector

        // $ANTLR start childSelector
        // C:\\Users\\Stephan\\Desktop\\compiler\\EQueryWalker.g:77:1: childSelector : ^( ChildSelector ) ;
        public final function childSelector():void {
            var childSelector_StartIndex:int = input.index;
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 6) ) { return ; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQueryWalker.g:78:2: ( ^( ChildSelector ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQueryWalker.g:78:4: ^( ChildSelector )
                {
                matchStream(input,ChildSelector,FOLLOW_ChildSelector_in_childSelector224); if (this.state.failed) return ;

                if ( this.state.backtracking==0 ) {
                   _elementSet.selectChild() 
                }

                if ( input.LA(1)==TokenConstants.DOWN ) {
                    matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
                    matchStream(input, TokenConstants.UP, null); if (this.state.failed) return ;
                }

                }

            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 6, childSelector_StartIndex); }
            }
            return ;
        }
        // $ANTLR end childSelector

        // $ANTLR start classSelector
        // C:\\Users\\Stephan\\Desktop\\compiler\\EQueryWalker.g:83:1: classSelector : ^( ClassSelector i= Identifier ) ;
        public final function classSelector():void {
            var classSelector_StartIndex:int = input.index;
            var i:Object=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 7) ) { return ; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQueryWalker.g:84:2: ( ^( ClassSelector i= Identifier ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQueryWalker.g:84:4: ^( ClassSelector i= Identifier )
                {
                matchStream(input,ClassSelector,FOLLOW_ClassSelector_in_classSelector252); if (this.state.failed) return ;

                matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
                i=Object(matchStream(input,Identifier,FOLLOW_Identifier_in_classSelector256)); if (this.state.failed) return ;
                if ( this.state.backtracking==0 ) {
                   _elementSet.selectClass((i!=null?i.text:null)) 
                }

                matchStream(input, TokenConstants.UP, null); if (this.state.failed) return ;

                }

            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 7, classSelector_StartIndex); }
            }
            return ;
        }
        // $ANTLR end classSelector

        // $ANTLR start firstSelector
        // C:\\Users\\Stephan\\Desktop\\compiler\\EQueryWalker.g:89:1: firstSelector : ^( FirstSelector ) ;
        public final function firstSelector():void {
            var firstSelector_StartIndex:int = input.index;
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 8) ) { return ; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQueryWalker.g:90:2: ( ^( FirstSelector ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQueryWalker.g:90:4: ^( FirstSelector )
                {
                matchStream(input,FirstSelector,FOLLOW_FirstSelector_in_firstSelector282); if (this.state.failed) return ;

                if ( this.state.backtracking==0 ) {
                   _elementSet.selectFirst() 
                }

                if ( input.LA(1)==TokenConstants.DOWN ) {
                    matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
                    matchStream(input, TokenConstants.UP, null); if (this.state.failed) return ;
                }

                }

            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 8, firstSelector_StartIndex); }
            }
            return ;
        }
        // $ANTLR end firstSelector

        // $ANTLR start lastSelector
        // C:\\Users\\Stephan\\Desktop\\compiler\\EQueryWalker.g:95:1: lastSelector : ^( LastSelector ) ;
        public final function lastSelector():void {
            var lastSelector_StartIndex:int = input.index;
            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 9) ) { return ; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQueryWalker.g:96:2: ( ^( LastSelector ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQueryWalker.g:96:4: ^( LastSelector )
                {
                matchStream(input,LastSelector,FOLLOW_LastSelector_in_lastSelector310); if (this.state.failed) return ;

                if ( this.state.backtracking==0 ) {
                   _elementSet.selectLast() 
                }

                if ( input.LA(1)==TokenConstants.DOWN ) {
                    matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
                    matchStream(input, TokenConstants.UP, null); if (this.state.failed) return ;
                }

                }

            }
            catch (re:RecognitionException) {
                reportError(re);
                recoverStream(input,re);
            }
            finally {
                if ( this.state.backtracking>0 ) { memoize(input, 9, lastSelector_StartIndex); }
            }
            return ;
        }
        // $ANTLR end lastSelector

        // $ANTLR start attrSelector
        // C:\\Users\\Stephan\\Desktop\\compiler\\EQueryWalker.g:101:1: attrSelector : ^( AttrSelector i= Identifier o= ( '=' | '!=' | '<' | '<=' | '>' | '>=' ) (n= NumberLiteral | s= StringLiteral | v= Identifier ) ) ;
        public final function attrSelector():void {
            var attrSelector_StartIndex:int = input.index;
            var i:Object=null;
            var o:Object=null;
            var n:Object=null;
            var s:Object=null;
            var v:Object=null;

            try {
                if ( this.state.backtracking>0 && alreadyParsedRule(input, 10) ) { return ; }
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQueryWalker.g:102:2: ( ^( AttrSelector i= Identifier o= ( '=' | '!=' | '<' | '<=' | '>' | '>=' ) (n= NumberLiteral | s= StringLiteral | v= Identifier ) ) )
                // C:\\Users\\Stephan\\Desktop\\compiler\\EQueryWalker.g:102:4: ^( AttrSelector i= Identifier o= ( '=' | '!=' | '<' | '<=' | '>' | '>=' ) (n= NumberLiteral | s= StringLiteral | v= Identifier ) )
                {
                matchStream(input,AttrSelector,FOLLOW_AttrSelector_in_attrSelector338); if (this.state.failed) return ;

                matchStream(input, TokenConstants.DOWN, null); if (this.state.failed) return ;
                i=Object(matchStream(input,Identifier,FOLLOW_Identifier_in_attrSelector342)); if (this.state.failed) return ;
                o=Object(input.LT(1));
                if ( input.LA(1)==25||(input.LA(1)>=31 && input.LA(1)<=35) ) {
                    input.consume();
                    this.state.errorRecovery=false;this.state.failed=false;
                }
                else {
                    if (this.state.backtracking>0) {this.state.failed=true; return ;}
                    throw new MismatchedSetException(null,input);
                }

                // C:\\Users\\Stephan\\Desktop\\compiler\\EQueryWalker.g:105:4: (n= NumberLiteral | s= StringLiteral | v= Identifier )
                var alt4:int=3;
                switch ( input.LA(1) ) {
                case NumberLiteral:
                    {
                    alt4=1;
                    }
                    break;
                case StringLiteral:
                    {
                    alt4=2;
                    }
                    break;
                case Identifier:
                    {
                    alt4=3;
                    }
                    break;
                default:
                    if (this.state.backtracking>0) {this.state.failed=true; return ;}
                    throw new NoViableAltException("", 4, 0, input);

                }

                switch (alt4) {
                    case 1 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\EQueryWalker.g:106:5: n= NumberLiteral
                        {
                        n=Object(matchStream(input,NumberLiteral,FOLLOW_NumberLiteral_in_attrSelector384)); if (this.state.failed) return ;
                        if ( this.state.backtracking==0 ) {
                           _elementSet.selectAttr((i!=null?i.text:null), (o!=null?o.text:null), Number((n!=null?n.text:null))) 
                        }

                        }
                        break;
                    case 2 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\EQueryWalker.g:107:6: s= StringLiteral
                        {
                        s=Object(matchStream(input,StringLiteral,FOLLOW_StringLiteral_in_attrSelector398)); if (this.state.failed) return ;
                        if ( this.state.backtracking==0 ) {
                           _elementSet.selectAttr((i!=null?i.text:null), (o!=null?o.text:null), cleanUpString((s!=null?s.text:null))) 
                        }

                        }
                        break;
                    case 3 :
                        // C:\\Users\\Stephan\\Desktop\\compiler\\EQueryWalker.g:108:6: v= Identifier
                        {
                        v=Object(matchStream(input,Identifier,FOLLOW_Identifier_in_attrSelector412)); if (this.state.failed) return ;
                        if ( this.state.backtracking==0 ) {
                           _elementSet.selectAttr((i!=null?i.text:null), (o!=null?o.text:null), (v!=null?v.text:null)) 
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
                if ( this.state.backtracking>0 ) { memoize(input, 10, attrSelector_StartIndex); }
            }
            return ;
        }
        // $ANTLR end attrSelector


           // Delegated rules


     

        public static const FOLLOW_Query_in_main65:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_selector_in_main67:BitSet = new BitSet([0x00001FE8, 0x00000000]);
        public static const FOLLOW_EOF_in_main74:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_allSelector_in_selector86:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_kindSelector_in_selector91:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_idSelector_in_selector96:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_childSelector_in_selector101:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_classSelector_in_selector106:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_firstSelector_in_selector111:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_lastSelector_in_selector116:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_attrSelector_in_selector121:BitSet = new BitSet([0x00000002, 0x00000000]);
        public static const FOLLOW_AllSelector_in_allSelector138:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_KindSelector_in_kindSelector165:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_Identifier_in_kindSelector167:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_IdSelector_in_idSelector193:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_Identifier_in_idSelector197:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_ChildSelector_in_childSelector224:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_ClassSelector_in_classSelector252:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_Identifier_in_classSelector256:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_FirstSelector_in_firstSelector282:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_LastSelector_in_lastSelector310:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_AttrSelector_in_attrSelector338:BitSet = new BitSet([0x00000004, 0x00000000]);
        public static const FOLLOW_Identifier_in_attrSelector342:BitSet = new BitSet([0x82000000, 0x0000000F]);
        public static const FOLLOW_set_in_attrSelector349:BitSet = new BitSet([0x0000E000, 0x00000000]);
        public static const FOLLOW_NumberLiteral_in_attrSelector384:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_StringLiteral_in_attrSelector398:BitSet = new BitSet([0x00000008, 0x00000000]);
        public static const FOLLOW_Identifier_in_attrSelector412:BitSet = new BitSet([0x00000008, 0x00000000]);

    }
}