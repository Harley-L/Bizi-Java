FasdUAS 1.101.10   ��   ��    k             l     ��  ��    $  Ask the user to select an app     � 	 	 <   A s k   t h e   u s e r   t o   s e l e c t   a n   a p p   
  
 l     ����  r         I    ���� 
�� .sysostdfalis    ��� null��    ��  
�� 
ftyp  m       �    a p p  �� ��
�� 
dflc  l   	 ����  I   	�� ��
�� .earsffdralis        afdr  m    ��
�� afdrapps��  ��  ��  ��    o      ���� 0 theapp theApp��  ��        l     ��������  ��  ��        l     ��  ��      Get the app name     �   "   G e t   t h e   a p p   n a m e      l   �  ����   O    � ! " ! k    � # #  $ % $ r     & ' & n     ( ) ( 1    ��
�� 
pnam ) o    ���� 0 theapp theApp ' o      ���� 0 
theappname 
theAppName %  * + * Z   1 , -���� , D     . / . o    ���� 0 
theappname 
theAppName / m     0 0 � 1 1  . a p p - r     - 2 3 2 n     + 4 5 4 7  ! +�� 6 7
�� 
ctxt 6 m   % '����  7 m   ( *������ 5 o     !���� 0 
theappname 
theAppName 3 o      ���� 0 
theappname 
theAppName��  ��   +  8 9 8 l  2 2��������  ��  ��   9  : ; : l  2 2�� < =��   < N H Determine whether the app is a package, and notify the user if it's not    = � > > �   D e t e r m i n e   w h e t h e r   t h e   a p p   i s   a   p a c k a g e ,   a n d   n o t i f y   t h e   u s e r   i f   i t ' s   n o t ;  ? @ ? r   2 7 A B A l  2 5 C���� C n   2 5 D E D 1   3 5��
�� 
pkgf E o   2 3���� 0 theapp theApp��  ��   B o      ���� 0 	ispackage 	isPackage @  F G F l  8 8��������  ��  ��   G  H I H l  8 8�� J K��   J 2 , Notify the user if the app is not a package    K � L L X   N o t i f y   t h e   u s e r   i f   t h e   a p p   i s   n o t   a   p a c k a g e I  M N M Z   8 S O P���� O =   8 ; Q R Q o   8 9���� 0 	ispackage 	isPackage R m   9 :��
�� boovfals P k   > O S S  T U T n   > L V W V I   ? L�� X���� 	0 alert   X  Y�� Y b   ? H Z [ Z b   ? D \ ] \ m   ? B ^ ^ � _ _ > I c o n s   c a n n o t   b e   e x t r a c t e d   f r o m   ] o   B C���� 0 
theappname 
theAppName [ m   D G ` ` � a a :   b e c a u s e   i t   i s   n o t   a   p a c k a g e .��  ��   W  f   > ? U  b�� b L   M O����  ��  ��  ��   N  c d c l  T T��������  ��  ��   d  e f e l  T T�� g h��   g &   Locate the app resources folder    h � i i @   L o c a t e   t h e   a p p   r e s o u r c e s   f o l d e r f  j k j r   T e l m l c   T a n o n b   T ] p q p l  T Y r���� r n   T Y s t s 1   U Y��
�� 
ppth t o   T U���� 0 theapp theApp��  ��   q m   Y \ u u � v v & C o n t e n t s : R e s o u r c e s : o m   ] `��
�� 
TEXT m o      ���� .0 theappresourcesfolder theAppResourcesFolder k  w x w l  f f��������  ��  ��   x  y z y l  f f�� { |��   { A ; Notify the user if the app resources folder can't be found    | � } } v   N o t i f y   t h e   u s e r   i f   t h e   a p p   r e s o u r c e s   f o l d e r   c a n ' t   b e   f o u n d z  ~  ~ Z   f � � ����� � =   f t � � � l  f r ����� � I  f r�� ���
�� .coredoexnull���     **** � 4   f n�� �
�� 
cfol � o   j m���� .0 theappresourcesfolder theAppResourcesFolder��  ��  ��   � m   r s��
�� boovfals � k   w � � �  � � � n   w � � � � I   x ��� ����� 	0 alert   �  ��� � b   x � � � � b   x } � � � m   x { � � � � � > I c o n s   c a n n o t   b e   e x t r a c t e d   f r o m   � o   { |���� 0 
theappname 
theAppName � m   } � � � � � � t   b e c a u s e   i t   d o e s   n o t   a p p e a r   t o   c o n t a i n   a   R e s o u r c e s   f o l d e r .��  ��   �  f   w x �  ��� � L   � �����  ��  ��  ��     � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � $  Retrieve a list of icon files    � � � � <   R e t r i e v e   a   l i s t   o f   i c o n   f i l e s �  ��� � r   � � � � � 6 � � � � � n   � � � � � 1   � ���
�� 
pnam � n   � � � � � 2   � ���
�� 
file � 4   � ��� �
�� 
cfol � o   � ����� .0 theappresourcesfolder theAppResourcesFolder � =   � � � � � n  � � � � � 1   � ���
�� 
extn �  g   � � � m   � � � � � � �  i c n s � o      ���� 0 theiconnames theIconNames��   " m     � ��                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��  ��     � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 2 , Notify the user if no icon files were found    � � � � X   N o t i f y   t h e   u s e r   i f   n o   i c o n   f i l e s   w e r e   f o u n d �  � � � l  � � ����� � Z   � � � ����� � =   � � � � � o   � ����� 0 theiconnames theIconNames � J   � �����   � k   � � � �  � � � n   � � � � � I   � ��� ����� 	0 alert   �  ��� � b   � � � � � b   � � � � � m   � � � � � � � h N o   i c o n   f i l e s   w e r e   f o u n d   i n   t h e   R e s o u r c e s   f o l d e r   o f   � o   � ����� 0 
theappname 
theAppName � m   � � � � � � �  .��  ��   �  f   � � �  ��� � L   � �����  ��  ��  ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � / ) Ask the user to choose the icons to copy    � � � � R   A s k   t h e   u s e r   t o   c h o o s e   t h e   i c o n s   t o   c o p y �  � � � l  � ����� � Z   � � ��� � � =   � � � � � n   � � � � � 1   � ���
�� 
leng � o   � ����� 0 theiconnames theIconNames � m   � �����  � r   � � � � � o   � ����� 0 theiconnames theIconNames � o      ���� &0 theiconstoextract theIconsToExtract��   � r   � � � � l  � ����� � I  ��� � �
�� .gtqpchltns    @   @ ns   � o   � ����� 0 theiconnames theIconNames � �� � �
�� 
prmp � b   � � � � � b   � � � � � m   � � � � � � � V W h i c h   i c o n s   w o u l d   y o u   l i k e   t o   e x t r a c t   f r o m   � o   � ��� 0 
theappname 
theAppName � m   � � � � � � �  ? � �~ � �
�~ 
inSL � o   � ��}�} 0 theiconnames theIconNames � �| ��{
�| 
mlsl � m   � ��z
�z boovtrue�{  ��  ��   � o      �y�y &0 theiconstoextract theIconsToExtract��  ��   �  � � � l 	 ��x�w � Z 	 � ��v�u � =  	 � � � o  	�t�t &0 theiconstoextract theIconsToExtract � m  �s
�s boovfals � L  �r�r  �v  �u  �x  �w   �  � � � l     �q�p�o�q  �p  �o   �  � � � l     �n � ��n   � > 8 Ask whether the user would like icon files or PNG files    � � � � p   A s k   w h e t h e r   t h e   u s e r   w o u l d   l i k e   i c o n   f i l e s   o r   P N G   f i l e s �    l C�m�l r  C n  ? 1  ;?�k
�k 
bhit l ;�j�i I ;�h	
�h .sysodisAaleR        TEXT m  

 � $ E x t r a c t   I c o n   F i l e s	 �g
�g 
mesS m  ! � l W o u l d   y o u   l i k e   t o   e x t r a c t   i c o n s   i n   I N C S   o r   P N G   f o r m a t ? �f
�f 
btns J  $/  m  $' �  C a n c e l  m  '* �  P N G �e m  *- �  I C N S�e   �d�c
�d 
cbtn m  25 �    C a n c e l�c  �j  �i   o      �b�b 0 theicontype theIconType�m  �l   !"! l     �a�`�_�a  �`  �_  " #$# l     �^%&�^  % I C If a PNG file is preferred, ask the user what size they would like   & �'' �   I f   a   P N G   f i l e   i s   p r e f e r r e d ,   a s k   t h e   u s e r   w h a t   s i z e   t h e y   w o u l d   l i k e$ ()( l D�*�]�\* Z  D�+,�[�Z+ =  DK-.- o  DG�Y�Y 0 theicontype theIconType. m  GJ// �00  P N G, k  N�11 232 r  Ne454 J  Na66 787 m  NQ99 �::  1 68 ;<; m  QT== �>>  3 2< ?@? m  TWAA �BB  1 2 8@ CDC m  WZEE �FF  2 5 6D G�XG m  Z]HH �II  A c t u a l   S i z e�X  5 o      �W�W 0 thesizes theSizes3 JKJ r  fLML l f{N�V�UN I f{�TOP
�T .gtqpchltns    @   @ ns  O o  fi�S�S 0 thesizes theSizesP �RQR
�R 
prmpQ m  loSS �TT V W h a t   s i z e   w o u l d   y o u   l i k e   f o r   t h e   P N G   i c o n s ?R �QU�P
�Q 
inSLU J  rwVV W�OW m  ruXX �YY  A c t u a l   S i z e�O  �P  �V  �U  M o      �N�N 0 thesizechoice theSizeChoiceK Z[Z Z ��\]�M�L\ =  ��^_^ o  ���K�K 0 thesizechoice theSizeChoice_ m  ���J
�J boovfals] L  ���I�I  �M  �L  [ `�H` r  ��aba n  ��cdc 4  ���Ge
�G 
cobje m  ���F�F d o  ���E�E 0 thesizechoice theSizeChoiceb o      �D�D 0 thesizechoice theSizeChoice�H  �[  �Z  �]  �\  ) fgf l     �C�B�A�C  �B  �A  g hih l     �@jk�@  j , & Create an output folder for the icons   k �ll L   C r e a t e   a n   o u t p u t   f o l d e r   f o r   t h e   i c o n si mnm l ��o�?�>o r  ��pqp I  ���=r�<�= 0 
makefolder 
makeFolderr sts m  ��uu �vv  E x t r a c t e d   I c o n st w�;w I ���:xy
�: .earsffdralis        afdrx m  ���9
�9 afdmdesky �8z�7
�8 
rtypz m  ���6
�6 
TEXT�7  �;  �<  q o      �5�5 "0 theoutputfolder theOutputFolder�?  �>  n {|{ l ��}�4�3} r  ��~~ I  ���2��1�2 0 
makefolder 
makeFolder� ��� b  ����� o  ���0�0 0 
theappname 
theAppName� m  ���� ���    I c o n s� ��/� o  ���.�. "0 theoutputfolder theOutputFolder�/  �1   o      �-�- "0 theoutputfolder theOutputFolder�4  �3  | ��� l     �,�+�*�,  �+  �*  � ��� l     �)���)  � - ' Extract the icons to the output folder   � ��� N   E x t r a c t   t h e   i c o n s   t o   t h e   o u t p u t   f o l d e r� ��� l ����(�'� Y  ����&���%� k  ���� ��� r  ����� n  ����� 4  ���$�
�$ 
cobj� o  ���#�# 0 a  � o  ���"�" &0 theiconstoextract theIconsToExtract� o      �!�! 00 thecurrenticonfilename theCurrentIconFileName� ��� r  ����� c  ����� b  ����� o  ��� �  .0 theappresourcesfolder theAppResourcesFolder� o  ���� 00 thecurrenticonfilename theCurrentIconFileName� m  ���
� 
TEXT� o      �� (0 thecurrenticonfile theCurrentIconFile� ��� l ������  �  �  � ��� l ������  � A ; If an icon file is preferred, copy it to the output folder   � ��� v   I f   a n   i c o n   f i l e   i s   p r e f e r r e d ,   c o p y   i t   t o   t h e   o u t p u t   f o l d e r� ��� Z  ������� =  ���� o  ���� 0 theicontype theIconType� m  � �� ���  I C N S� k  �� ��� O  ��� I 
���
� .coreclon****      � ****� o  
�� (0 thecurrenticonfile theCurrentIconFile� ���
� 
insh� o  �� "0 theoutputfolder theOutputFolder�  � m  ���                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � ��� l ����  �  �  � ��� l ����  � n h If a PNG is preferred, convert the icon to PNG, scale it if necessary, and save it to the output folder   � ��� �   I f   a   P N G   i s   p r e f e r r e d ,   c o n v e r t   t h e   i c o n   t o   P N G ,   s c a l e   i t   i f   n e c e s s a r y ,   a n d   s a v e   i t   t o   t h e   o u t p u t   f o l d e r�  �  � k  ��� ��� r  $��� o   �� 00 thecurrenticonfilename theCurrentIconFileName� o      �
�
 <0 thecurrenticonfilenameprefix theCurrentIconFileNamePrefix� ��� Z %F���	�� D  %,��� o  %(�� <0 thecurrenticonfilenameprefix theCurrentIconFileNamePrefix� m  (+�� ��� 
 . i c n s� r  /B��� n  />��� 7 2>���
� 
ctxt� m  68�� � m  9=����� o  /2�� <0 thecurrenticonfilenameprefix theCurrentIconFileNamePrefix� o      �� <0 thecurrenticonfilenameprefix theCurrentIconFileNamePrefix�	  �  � ��� r  GZ��� b  GV��� b  GR��� l GN��� � c  GN��� o  GJ���� "0 theoutputfolder theOutputFolder� m  JM��
�� 
TEXT�  �   � o  NQ���� <0 thecurrenticonfilenameprefix theCurrentIconFileNamePrefix� m  RU�� ���  . p n g� o      ���� 0 thesavepath theSavePath� ���� O  [���� k  a��� ��� r  al��� I ah�����
�� .aevtodocnull  �    alis� o  ad���� (0 thecurrenticonfile theCurrentIconFile��  � o      ���� 0 theimage theImage� ���� O  m���� k  s��� ��� Z s�������� > sz��� o  sv���� 0 thesizechoice theSizeChoice� m  vy�� ���  A c t u a l   S i z e� I }������
�� .icasscalnull���     obj ��  � �����
�� 
maxi� c  ����� o  ������ 0 thesizechoice theSizeChoice� m  ����
�� 
TEXT��  ��  ��  � ���� I �������
�� .coresavenull���     obj ��  � ����
�� 
fltp� m  ����
�� typvPNGf� �� ��
�� 
kfil  o  ������ 0 thesavepath theSavePath��  ��  � o  mp���� 0 theimage theImage��  � m  [^�                                                                                  imev  alis    X  Macintosh HD                   BD ����Image Events.app                                               ����            ����  
 cu             CoreServices  //:System:Library:CoreServices:Image Events.app/   "  I m a g e   E v e n t s . a p p    M a c i n t o s h   H D  ,System/Library/CoreServices/Image Events.app  / ��  ��  �  �& 0 a  � m  ������ � n  �� 1  ����
�� 
leng o  ������ &0 theiconstoextract theIconsToExtract�%  �(  �'  �  l     ��������  ��  ��    l     ��	��   T N Let the user know the icons have been extracted and display the output folder   	 �

 �   L e t   t h e   u s e r   k n o w   t h e   i c o n s   h a v e   b e e n   e x t r a c t e d   a n d   d i s p l a y   t h e   o u t p u t   f o l d e r  l ������ I ������
�� .sysodisAaleR        TEXT m  �� � P T h e   s p e c i f i e d   i c o n s   h a v e   b e e n   e x t r a c t e d .��  ��  ��    l ������ O �� I ������
�� .aevtodocnull  �    alis o  ������ "0 theoutputfolder theOutputFolder��   m  ���                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��    l     ��������  ��  ��    l     ����   %  This handler displays an alert    � >   T h i s   h a n d l e r   d i s p l a y s   a n   a l e r t   i     !"! I      ��#���� 	0 alert  # $��$ o      ���� 0 
themessage 
theMessage��  ��  " I    	��%&
�� .sysodisAaleR        TEXT% m     '' �(( . U n a b l e   t o   E x t r a c t   I c o n s& ��)*
�� 
mesS) o    ���� 0 
themessage 
theMessage* ��+��
�� 
as A+ m    ��
�� EAlTwarN��    ,-, l     ��������  ��  ��  - ./. l     ��01��  0 6 0 This handler makes a folder in an output folder   1 �22 `   T h i s   h a n d l e r   m a k e s   a   f o l d e r   i n   a n   o u t p u t   f o l d e r/ 3��3 i    454 I      ��6���� 0 
makefolder 
makeFolder6 787 o      ���� 0 thefoldername theFolderName8 9��9 o      ���� "0 theoutputfolder theOutputFolder��  ��  5 O     6:;: Z    5<=��>< l   ?����? I   ��@��
�� .coredoexnull���     ****@ n    ABA 4    ��C
�� 
cfolC o   	 
���� 0 thefoldername theFolderNameB 4    ��D
�� 
cfolD o    ���� "0 theoutputfolder theOutputFolder��  ��  ��  = L    EE n    FGF 1    ��
�� 
ppthG l   H����H n    IJI 4    ��K
�� 
cfolK o    ���� 0 thefoldername theFolderNameJ 4    ��L
�� 
cfolL o    ���� "0 theoutputfolder theOutputFolder��  ��  ��  > L     5MM n     4NON 1   1 3��
�� 
ppthO l    1P����P I    1����Q
�� .corecrel****      � null��  Q ��RS
�� 
koclR m   " #��
�� 
cfolS ��TU
�� 
inshT 4   $ (��V
�� 
cfolV o   & '���� "0 theoutputfolder theOutputFolderU ��W��
�� 
prdtW K   ) -XX ��Y��
�� 
pnamY o   * +���� 0 thefoldername theFolderName��  ��  ��  ��  ; m     ZZ�                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��       ��[\]^_`��abbcdefghijk��������������  [ ��������������������������������������������~�}�� 	0 alert  �� 0 
makefolder 
makeFolder
�� .aevtoappnull  �   � ****�� 0 theapp theApp�� 0 
theappname 
theAppName�� 0 	ispackage 	isPackage�� .0 theappresourcesfolder theAppResourcesFolder�� 0 theiconnames theIconNames�� &0 theiconstoextract theIconsToExtract�� 0 theicontype theIconType�� 0 thesizes theSizes�� 0 thesizechoice theSizeChoice�� "0 theoutputfolder theOutputFolder�� 00 thecurrenticonfilename theCurrentIconFileName�� (0 thecurrenticonfile theCurrentIconFile�� <0 thecurrenticonfilenameprefix theCurrentIconFileNamePrefix�� 0 thesavepath theSavePath�� 0 theimage theImage��  ��  ��  �  �~  �}  \ �|"�{�zlm�y�| 	0 alert  �{ �xn�x n  �w�w 0 
themessage 
theMessage�z  l �v�v 0 
themessage 
theMessagem '�u�t�s�r�q
�u 
mesS
�t 
as A
�s EAlTwarN�r 
�q .sysodisAaleR        TEXT�y 
����� ] �p5�o�nop�m�p 0 
makefolder 
makeFolder�o �lq�l q  �k�j�k 0 thefoldername theFolderName�j "0 theoutputfolder theOutputFolder�n  o �i�h�i 0 thefoldername theFolderName�h "0 theoutputfolder theOutputFolderp 
Z�g�f�e�d�c�b�a�`�_
�g 
cfol
�f .coredoexnull���     ****
�e 
ppth
�d 
kocl
�c 
insh
�b 
prdt
�a 
pnam�` 
�_ .corecrel****      � null�m 7� 3*�/�/j  *�/�/�,EY *���*�/��l� 	�,EU^ �^r�]�\st�[
�^ .aevtoappnull  �   � ****r k    �uu  
vv  ww  �xx  �yy  �zz  {{ (|| m}} {~~ � �� �Z�Z  �]  �\  s �Y�Y 0 a  t _�X �W�V�U�T�S�R ��Q�P 0�O�N�M�L ^ `�K�J u�I�H�G�F � ��E��D ��C � ��B�A�@ � ��?�>�=�<
�;�:�9�8�7�6/9=AEH�5�4SX�3�2u�1�0�/�.��-�,���+�*�)��(��'�&�%��$�#�"�!� �
�X 
ftyp
�W 
dflc
�V afdrapps
�U .earsffdralis        afdr�T 
�S .sysostdfalis    ��� null�R 0 theapp theApp
�Q 
pnam�P 0 
theappname 
theAppName
�O 
ctxt�N��
�M 
pkgf�L 0 	ispackage 	isPackage�K 	0 alert  
�J 
ppth
�I 
TEXT�H .0 theappresourcesfolder theAppResourcesFolder
�G 
cfol
�F .coredoexnull���     ****
�E 
file�  
�D 
extn�C 0 theiconnames theIconNames
�B 
leng�A &0 theiconstoextract theIconsToExtract
�@ 
prmp
�? 
inSL
�> 
mlsl�= 
�< .gtqpchltns    @   @ ns  
�; 
mesS
�: 
btns
�9 
cbtn
�8 .sysodisAaleR        TEXT
�7 
bhit�6 0 theicontype theIconType�5 �4 0 thesizes theSizes�3 0 thesizechoice theSizeChoice
�2 
cobj
�1 afdmdesk
�0 
rtyp�/ 0 
makefolder 
makeFolder�. "0 theoutputfolder theOutputFolder�- 00 thecurrenticonfilename theCurrentIconFileName�, (0 thecurrenticonfile theCurrentIconFile
�+ 
insh
�* .coreclon****      � ****�) <0 thecurrenticonfilenameprefix theCurrentIconFileNamePrefix�(���' 0 thesavepath theSavePath
�& .aevtodocnull  �    alis�% 0 theimage theImage
�$ 
maxi
�# .icasscalnull���     obj 
�" 
fltp
�! typvPNGf
�  
kfil
� .coresavenull���     obj �[�*����j � E�O� ���,E�O�� �[�\[Zk\Z�2E�Y hO��,E�O�f  )a �%a %k+ OhY hO�a ,a %a &E` O*a _ /j f  )a �%a %k+ OhY hO*a _ /a -�,a [a ,\Za 81E` UO_ jv  )a  �%a !%k+ OhY hO_ a ",k  _ E` #Y %_ a $a %�%a &%a '_ a (ea ) *E` #O_ #f  hY hOa +a ,a -a .a /a 0a 1mva 2a 3a ) 4a 5,E` 6O_ 6a 7  Ra 8a 9a :a ;a <a =vE` >O_ >a $a ?a 'a @kv� *E` AO_ Af  hY hO_ Aa Bk/E` AY hO*a Ca Da Ea l l+ FE` GO*�a H%_ Gl+ FE` GO �k_ #a ",Ekh  _ #a B�/E` IO_ _ I%a &E` JO_ 6a K  a L _ Ja M_ Gl NUOPY �_ IE` OO_ Oa P _ O[�\[Zk\Za Q2E` OY hO_ Ga &_ O%a R%E` SOa T D_ Jj UE` VO_ V 1_ Aa W *a X_ Aa &l YY hO*a Za [a \_ S� ]UU[OY�3Oa ^j 4Oa L 	_ Gj UU_alis      Macintosh HD                   BD ����AdBlock.app                                                    ����            ����  J cu            /:Applications:AdBlock.app/     A d B l o c k . a p p    M a c i n t o s h   H D  Applications/AdBlock.app  / ��  ` ���  A d B l o c k
�� boovtruea ��� r M a c i n t o s h   H D : A p p l i c a t i o n s : A d B l o c k . a p p : C o n t e n t s : R e s o u r c e s :b ��� �  gg ���  A p p I c o n . i c n sc ���  P N Gd ��� �  9=AEHe ���  A c t u a l   S i z ef ��� � M a c i n t o s h   H D : U s e r s : h a r l e y l a t s k y : D e s k t o p : E x t r a c t e d   I c o n s : A d B l o c k   I c o n s :h ��� � M a c i n t o s h   H D : A p p l i c a t i o n s : A d B l o c k . a p p : C o n t e n t s : R e s o u r c e s : A p p I c o n . i c n si ���  A p p I c o nj ��� � M a c i n t o s h   H D : U s e r s : h a r l e y l a t s k y : D e s k t o p : E x t r a c t e d   I c o n s : A d B l o c k   I c o n s : A p p I c o n . p n gk �� ��
� 
imag� ���  A p p I c o n . i c n s��  ��  ��  ��  ��  ��   ascr  ��ޭ