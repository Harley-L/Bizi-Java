FasdUAS 1.101.10   ??   ??    k             i         I      ?? 	???? L0 $getapplicationcorrespondingtoprocess $GetApplicationCorrespondingToProcess 	  
?? 
 o      ???? 0 process_name  ??  ??    k     "       O         k           r        e       l    ????  n        1    
??
?? 
bnid  4    ?? 
?? 
prcs  o    ???? 0 process_name  ??  ??    o      ???? 0 process_bid     ??  r        n        m    ??
?? 
file  l    ????  6     !   2   ??
?? 
pcap ! =    " # " 1    ??
?? 
bnid # o    ???? 0 process_bid  ??  ??    o      ???? 0 application_name  ??    m      $ $?                                                                                  sevs  alis    \  Macintosh HD                   BD ????System Events.app                                              ????            ????  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ??     %?? % L     " & & o     !???? 0 application_name  ??     ' ( ' l     ????????  ??  ??   (  ) * ) l     +???? + O      , - , r     . / . l    0???? 0 6   1 2 1 n    	 3 4 3 1    	??
?? 
pnam 4 2    ??
?? 
prcs 2 =  
  5 6 5 1    ??
?? 
bkgo 6 m    ??
?? boovfals??  ??   / o      ???? "0 listofprocesses listOfProcesses - m      7 7?                                                                                  sevs  alis    \  Macintosh HD                   BD ????System Events.app                                              ????            ????  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ??  ??  ??   *  8 9 8 l    :???? : r     ; < ; m     = = ? > >   < o      ???? 0 final Final??  ??   9  ? @ ? l   = A???? A X    = B?? C B r   * 8 D E D b   * 6 F G F b   * 4 H I H o   * +???? 0 final Final I l  + 3 J???? J c   + 3 K L K I   + 1?? M???? L0 $getapplicationcorrespondingtoprocess $GetApplicationCorrespondingToProcess M  N?? N o   , -???? 0 theitem theItem??  ??   L m   1 2??
?? 
TEXT??  ??   G m   4 5 O O ? P P  , E o      ???? 0 final Final?? 0 theitem theItem C o    ???? "0 listofprocesses listOfProcesses??  ??   @  Q R Q l  > E S???? S I  > E?? T??
?? .sysoexecTEXT???     TEXT T b   > A U V U m   > ? W W ? X X 
 e c h o   V o   ? @???? 0 final Final??  ??  ??   R  Y Z Y l      ?? [ \??   [??tell application "System Events"	set listOfProcesses to (name of every process where background only is false)	tell me to set selectedProcesses to choose from list listOfProcesses with multiple selections allowedend tell--The variable `selectedProcesses` will contain the list of selected items.repeat with processName in selectedProcesses	do shell script "Killall " & quoted form of processNameend repeat    \ ? ] ]<  t e l l   a p p l i c a t i o n   " S y s t e m   E v e n t s "  	 s e t   l i s t O f P r o c e s s e s   t o   ( n a m e   o f   e v e r y   p r o c e s s   w h e r e   b a c k g r o u n d   o n l y   i s   f a l s e )  	 t e l l   m e   t o   s e t   s e l e c t e d P r o c e s s e s   t o   c h o o s e   f r o m   l i s t   l i s t O f P r o c e s s e s   w i t h   m u l t i p l e   s e l e c t i o n s   a l l o w e d  e n d   t e l l  - - T h e   v a r i a b l e   ` s e l e c t e d P r o c e s s e s `   w i l l   c o n t a i n   t h e   l i s t   o f   s e l e c t e d   i t e m s .  r e p e a t   w i t h   p r o c e s s N a m e   i n   s e l e c t e d P r o c e s s e s  	 d o   s h e l l   s c r i p t   " K i l l a l l   "   &   q u o t e d   f o r m   o f   p r o c e s s N a m e  e n d   r e p e a t  Z  ^ _ ^ l      ?? ` a??   `WQon GetApplicationCorrespondingToProcess(process_name)	tell application "System Events"		set application_file to file of (application processes where name is process_name)	end tell	return application_fileend GetApplicationCorrespondingToProcesson GetProcessCorrespondingToApplication(application_name)	tell application "System Events"		set process_name to name of my application application_name	end tell	return process_nameend GetProcessCorrespondingToApplication-- Example usage:set myprocess to GetProcessCorrespondingToApplication("Terminal") as stringset myfile to GetApplicationCorrespondingToProcess(myprocess) as stringset myapp to do shell script "myval='" & myfile & "' ; echo ${myval%.app:} | awk -F':' '{print ($NF)}'"do shell script "echo " & myprocessdo shell script "echo " & myfiledo shell script "echo " & myapp
    a ? b b?  o n   G e t A p p l i c a t i o n C o r r e s p o n d i n g T o P r o c e s s ( p r o c e s s _ n a m e )  	 t e l l   a p p l i c a t i o n   " S y s t e m   E v e n t s "  	 	 s e t   a p p l i c a t i o n _ f i l e   t o   f i l e   o f   ( a p p l i c a t i o n   p r o c e s s e s   w h e r e   n a m e   i s   p r o c e s s _ n a m e )  	 e n d   t e l l  	 r e t u r n   a p p l i c a t i o n _ f i l e  e n d   G e t A p p l i c a t i o n C o r r e s p o n d i n g T o P r o c e s s   o n   G e t P r o c e s s C o r r e s p o n d i n g T o A p p l i c a t i o n ( a p p l i c a t i o n _ n a m e )  	 t e l l   a p p l i c a t i o n   " S y s t e m   E v e n t s "  	 	 s e t   p r o c e s s _ n a m e   t o   n a m e   o f   m y   a p p l i c a t i o n   a p p l i c a t i o n _ n a m e  	 e n d   t e l l  	 r e t u r n   p r o c e s s _ n a m e  e n d   G e t P r o c e s s C o r r e s p o n d i n g T o A p p l i c a t i o n   - -   E x a m p l e   u s a g e :  s e t   m y p r o c e s s   t o   G e t P r o c e s s C o r r e s p o n d i n g T o A p p l i c a t i o n ( " T e r m i n a l " )   a s   s t r i n g  s e t   m y f i l e   t o   G e t A p p l i c a t i o n C o r r e s p o n d i n g T o P r o c e s s ( m y p r o c e s s )   a s   s t r i n g  s e t   m y a p p   t o   d o   s h e l l   s c r i p t   " m y v a l = ' "   &   m y f i l e   &   " '   ;   e c h o   $ { m y v a l % . a p p : }   |   a w k   - F ' : '   ' { p r i n t   ( $ N F ) } ' "  d o   s h e l l   s c r i p t   " e c h o   "   &   m y p r o c e s s  d o   s h e l l   s c r i p t   " e c h o   "   &   m y f i l e  d o   s h e l l   s c r i p t   " e c h o   "   &   m y a p p 
 _  c d c l     ????????  ??  ??   d  e f e l     ????????  ??  ??   f  g h g l     ?? i j??   i   Example usage:    j ? k k    E x a m p l e   u s a g e : h  l m l l     ?? n o??   n M Gdisplay dialog (GetProcessCorrespondingToApplication("idea") as string)    o ? p p ? d i s p l a y   d i a l o g   ( G e t P r o c e s s C o r r e s p o n d i n g T o A p p l i c a t i o n ( " i d e a " )   a s   s t r i n g ) m  q r q l     ?? s t??   s [ Udo shell script "echo " & (GetApplicationCorrespondingToProcess("Discord") as string)    t ? u u ? d o   s h e l l   s c r i p t   " e c h o   "   &   ( G e t A p p l i c a t i o n C o r r e s p o n d i n g T o P r o c e s s ( " D i s c o r d " )   a s   s t r i n g ) r  v?? v l     ?? w x??   w K E"Finder,idea,Discord,Google Chrome,System Preferences,Script Editor,"    x ? y y ? " F i n d e r , i d e a , D i s c o r d , G o o g l e   C h r o m e , S y s t e m   P r e f e r e n c e s , S c r i p t   E d i t o r , "??       ?? z { |??   z ?????? L0 $getapplicationcorrespondingtoprocess $GetApplicationCorrespondingToProcess
?? .aevtoappnull  ?   ? **** { ?? ???? } ~???? L0 $getapplicationcorrespondingtoprocess $GetApplicationCorrespondingToProcess?? ?? ??    ???? 0 process_name  ??   } ???????? 0 process_name  ?? 0 process_bid  ?? 0 application_name   ~  $?????? ???
?? 
prcs
?? 
bnid
?? 
pcap ?  
?? 
file?? #? *??/?,EE?O*?-?[?,\Z?81?,E?UO? | ?? ????? ? ???
?? .aevtoappnull  ?   ? **** ? k     E ? ?  ) ? ?  8 ? ?  ? ? ?  Q????  ??  ??   ? ???? 0 theitem theItem ?  7???? ????? =???????????? O W??
?? 
prcs
?? 
pnam
?? 
bkgo?? "0 listofprocesses listOfProcesses?? 0 final Final
?? 
kocl
?? 
cobj
?? .corecnte****       ****?? L0 $getapplicationcorrespondingtoprocess $GetApplicationCorrespondingToProcess
?? 
TEXT
?? .sysoexecTEXT???     TEXT?? F? *?-?,?[?,\Zf81E?UO?E?O "?[??l 
kh  ?*?k+ ?&%?%E?[OY??O??%j ascr  ??ޭ