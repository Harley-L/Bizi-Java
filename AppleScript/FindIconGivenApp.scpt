FasdUAS 1.101.10   ��   ��    k             l     ��  ��    $  Ask the user to select an app     � 	 	 <   A s k   t h e   u s e r   t o   s e l e c t   a n   a p p   
  
 l     ��  ��    \ Vset theApp to choose file of type "app" default location (path to applications folder)     �   � s e t   t h e A p p   t o   c h o o s e   f i l e   o f   t y p e   " a p p "   d e f a u l t   l o c a t i o n   ( p a t h   t o   a p p l i c a t i o n s   f o l d e r )      l     ����  r         4     �� 
�� 
alis  m       �   X M a c i n t o s h   H D : A p p l i c a t i o n s : G o o g l e   C h r o m e . a p p :  o      ���� 0 theapp theApp��  ��        l     ��  ��      Get the app name     �   "   G e t   t h e   a p p   n a m e      l   � ����  O    �     k    � ! !  " # " r     $ % $ n     & ' & 1    ��
�� 
pnam ' o    ���� 0 theapp theApp % o      ���� 0 
theappname 
theAppName #  ( ) ( Z   ( * +���� * D     , - , o    ���� 0 
theappname 
theAppName - m     . . � / /  . a p p + r    $ 0 1 0 n    " 2 3 2 7   "�� 4 5
�� 
ctxt 4 m    ����  5 m    !������ 3 o    ���� 0 
theappname 
theAppName 1 o      ���� 0 
theappname 
theAppName��  ��   )  6 7 6 l  ) )��������  ��  ��   7  8 9 8 l  ) )�� : ;��   : N H Determine whether the app is a package, and notify the user if it's not    ; � < < �   D e t e r m i n e   w h e t h e r   t h e   a p p   i s   a   p a c k a g e ,   a n d   n o t i f y   t h e   u s e r   i f   i t ' s   n o t 9  = > = r   ) . ? @ ? l  ) , A���� A n   ) , B C B 1   * ,��
�� 
pkgf C o   ) *���� 0 theapp theApp��  ��   @ o      ���� 0 	ispackage 	isPackage >  D E D l  / /��������  ��  ��   E  F G F l  / /�� H I��   H 2 , Notify the user if the app is not a package    I � J J X   N o t i f y   t h e   u s e r   i f   t h e   a p p   i s   n o t   a   p a c k a g e G  K L K Z   / F M N���� M =   / 2 O P O o   / 0���� 0 	ispackage 	isPackage P m   0 1��
�� boovfals N k   5 B Q Q  R S R n   5 ? T U T I   6 ?�� V���� 	0 alert   V  W�� W b   6 ; X Y X b   6 9 Z [ Z m   6 7 \ \ � ] ] > I c o n s   c a n n o t   b e   e x t r a c t e d   f r o m   [ o   7 8���� 0 
theappname 
theAppName Y m   9 : ^ ^ � _ _ :   b e c a u s e   i t   i s   n o t   a   p a c k a g e .��  ��   U  f   5 6 S  `�� ` L   @ B����  ��  ��  ��   L  a b a l  G G��������  ��  ��   b  c d c l  G G�� e f��   e &   Locate the app resources folder    f � g g @   L o c a t e   t h e   a p p   r e s o u r c e s   f o l d e r d  h i h r   G T j k j c   G P l m l b   G L n o n l  G J p���� p n   G J q r q 1   H J��
�� 
ppth r o   G H���� 0 theapp theApp��  ��   o m   J K s s � t t & C o n t e n t s : R e s o u r c e s : m m   L O��
�� 
TEXT k o      ���� .0 theappresourcesfolder theAppResourcesFolder i  u v u l  U U��������  ��  ��   v  w x w l  U U�� y z��   y A ; Notify the user if the app resources folder can't be found    z � { { v   N o t i f y   t h e   u s e r   i f   t h e   a p p   r e s o u r c e s   f o l d e r   c a n ' t   b e   f o u n d x  | } | Z   U { ~ ���� ~ =   U c � � � l  U a ����� � I  U a�� ���
�� .coredoexnull���     **** � 4   U ]�� �
�� 
cfol � o   Y \���� .0 theappresourcesfolder theAppResourcesFolder��  ��  ��   � m   a b��
�� boovfals  k   f w � �  � � � n   f t � � � I   g t�� ����� 	0 alert   �  ��� � b   g p � � � b   g l � � � m   g j � � � � � > I c o n s   c a n n o t   b e   e x t r a c t e d   f r o m   � o   j k���� 0 
theappname 
theAppName � m   l o � � � � � t   b e c a u s e   i t   d o e s   n o t   a p p e a r   t o   c o n t a i n   a   R e s o u r c e s   f o l d e r .��  ��   �  f   f g �  ��� � L   u w����  ��  ��  ��   }  � � � l  | |��������  ��  ��   �  � � � l  | |�� � ���   � $  Retrieve a list of icon files    � � � � <   R e t r i e v e   a   l i s t   o f   i c o n   f i l e s �  ��� � r   | � � � � 6 | � � � � n   | � � � � 1   � ���
�� 
pnam � n   | � � � � 2   � ���
�� 
file � 4   | ��� �
�� 
cfol � o   � ����� .0 theappresourcesfolder theAppResourcesFolder � =   � � � � � n  � � � � � 1   � ���
�� 
extn �  g   � � � m   � � � � � � �  i c n s � o      ���� 0 theiconnames theIconNames��     m     � ��                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��  ��     � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 2 , Notify the user if no icon files were found    � � � � X   N o t i f y   t h e   u s e r   i f   n o   i c o n   f i l e s   w e r e   f o u n d �  � � � l  � � ����� � Z   � � � ����� � =   � � � � � o   � ����� 0 theiconnames theIconNames � J   � �����   � k   � � � �  � � � n   � � � � � I   � ��� ����� 	0 alert   �  ��� � b   � � � � � b   � � � � � m   � � � � � � � h N o   i c o n   f i l e s   w e r e   f o u n d   i n   t h e   R e s o u r c e s   f o l d e r   o f   � o   � ����� 0 
theappname 
theAppName � m   � � � � � � �  .��  ��   �  f   � � �  ��� � L   � �����  ��  ��  ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � / ) Ask the user to choose the icons to copy    � � � � R   A s k   t h e   u s e r   t o   c h o o s e   t h e   i c o n s   t o   c o p y �  � � � l  � � ����� � Z   � � � ��� � � =   � � � � � n   � � � � � 1   � ���
�� 
leng � o   � ����� 0 theiconnames theIconNames � m   � �����  � r   � � � � � o   � ����� 0 theiconnames theIconNames � o      ���� &0 theiconstoextract theIconsToExtract��   � k   � � � �  � � � r   � � � � � l  � � ����� � I  � ��� � �
�� .gtqpchltns    @   @ ns   � o   � ����� 0 theiconnames theIconNames � �� � �
�� 
prmp � b   � � � � � b   � � � � � m   � � � � � � � V W h i c h   i c o n s   w o u l d   y o u   l i k e   t o   e x t r a c t   f r o m   � o   � ����� 0 
theappname 
theAppName � m   � � � � � � �  ? � �� � �
�� 
inSL � o   � ����� 0 theiconnames theIconNames � �� ���
�� 
mlsl � m   � ���
�� boovtrue��  ��  ��   � o      ���� &0 theiconstoextract theIconsToExtract �  ��� � l  � ��� � ���   � � �set theIconsToExtract to first string of theIconNames --(choose from list theIconNames with prompt "Which icons would you like to extract from " & theAppName & "?" default items theIconNames with multiple selections allowed)    � � � �� s e t   t h e I c o n s T o E x t r a c t   t o   f i r s t   s t r i n g   o f   t h e I c o n N a m e s   - - ( c h o o s e   f r o m   l i s t   t h e I c o n N a m e s   w i t h   p r o m p t   " W h i c h   i c o n s   w o u l d   y o u   l i k e   t o   e x t r a c t   f r o m   "   &   t h e A p p N a m e   &   " ? "   d e f a u l t   i t e m s   t h e I c o n N a m e s   w i t h   m u l t i p l e   s e l e c t i o n s   a l l o w e d )��  ��  ��   �  � � � l  � ����� � Z  � � ���~ � =   � � � � � o   � ��}�} &0 theiconstoextract theIconsToExtract � m   � ��|
�| boovfals � L  �{�{  �  �~  ��  ��   �  � � � l     �z�y�x�z  �y  �x   �    l     �w�w   ? 9set theSizes to {"16", "32", "128", "256", "Actual Size"}    � r s e t   t h e S i z e s   t o   { " 1 6 " ,   " 3 2 " ,   " 1 2 8 " ,   " 2 5 6 " ,   " A c t u a l   S i z e " }  l 	�v�u r  		 J  	

 �t m  	 �  2 5 6�t  	 o      �s�s 0 thesizechoice theSizeChoice�v  �u    l !�r�q Z !�p�o =   o  �n�n 0 thesizechoice theSizeChoice m  �m
�m boovfals L  �l�l  �p  �o  �r  �q    l ".�k�j r  ". n  "* 4  %*�i
�i 
cobj m  ()�h�h  o  "%�g�g 0 thesizechoice theSizeChoice o      �f�f 0 thesizechoice theSizeChoice�k  �j    l     �e�d�c�e  �d  �c     l     �b!"�b  !   find current path   " �## $   f i n d   c u r r e n t   p a t h  $%$ l /E&�a�`& O  /E'(' r  5D)*) c  5@+,+ n  5>-.- m  :>�_
�_ 
ctnr. l 5:/�^�]/ I 5:�\0�[
�\ .earsffdralis        afdr0  f  56�[  �^  �]  , m  >?�Z
�Z 
alis* o      �Y�Y 0 current_path  ( m  /211�                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  �a  �`  % 232 l     �X�W�V�X  �W  �V  3 454 l     �U67�U  6 , & Create an output folder for the icons   7 �88 L   C r e a t e   a n   o u t p u t   f o l d e r   f o r   t h e   i c o n s5 9:9 l F_;�T�S; r  F_<=< I  F[�R>�Q�R 0 
makefolder 
makeFolder> ?@? m  GJAA �BB  E x t r a c t e d   I c o n s@ C�PC I JW�ODE
�O .earsffdralis        afdrD m  JM�N
�N afdmdeskE �MF�L
�M 
rtypF m  PS�K
�K 
TEXT�L  �P  �Q  = o      �J�J "0 theoutputfolder theOutputFolder�T  �S  : GHG l     �IIJ�I  I f `set theOutputFolder to makeFolder("Extracted Icons", "Macintosh HD:Users:harleylatsky:Desktop:")   J �KK � s e t   t h e O u t p u t F o l d e r   t o   m a k e F o l d e r ( " E x t r a c t e d   I c o n s " ,   " M a c i n t o s h   H D : U s e r s : h a r l e y l a t s k y : D e s k t o p : " )H LML l     �HNO�H  N R Lset theOutputFolder to makeFolder("Extracted Icons", current_path as string)   O �PP � s e t   t h e O u t p u t F o l d e r   t o   m a k e F o l d e r ( " E x t r a c t e d   I c o n s " ,   c u r r e n t _ p a t h   a s   s t r i n g )M QRQ l `qS�G�FS r  `qTUT I  `m�EV�D�E 0 
makefolder 
makeFolderV WXW b  afYZY o  ab�C�C 0 
theappname 
theAppNameZ m  be[[ �\\    I c o n sX ]�B] o  fi�A�A "0 theoutputfolder theOutputFolder�B  �D  U o      �@�@ "0 theoutputfolder theOutputFolder�G  �F  R ^_^ l     �?�>�=�?  �>  �=  _ `a` l     �<bc�<  b - ' Extract the icons to the output folder   c �dd N   E x t r a c t   t h e   i c o n s   t o   t h e   o u t p u t   f o l d e ra efe l ryg�;�:g r  ryhih o  ru�9�9 &0 theiconstoextract theIconsToExtracti o      �8�8 00 thecurrenticonfilename theCurrentIconFileName�;  �:  f jkj l z�l�7�6l r  z�mnm c  z�opo b  z�qrq o  z}�5�5 .0 theappresourcesfolder theAppResourcesFolderr o  }��4�4 00 thecurrenticonfilename theCurrentIconFileNamep m  ���3
�3 
TEXTn o      �2�2 (0 thecurrenticonfile theCurrentIconFile�7  �6  k sts l     �1�0�/�1  �0  �/  t uvu l     �.�-�,�.  �-  �,  v wxw l ��y�+�*y r  ��z{z o  ���)�) 00 thecurrenticonfilename theCurrentIconFileName{ o      �(�( <0 thecurrenticonfilenameprefix theCurrentIconFileNamePrefix�+  �*  x |}| l ��~�'�&~ Z ����%�$ D  ����� o  ���#�# <0 thecurrenticonfilenameprefix theCurrentIconFileNamePrefix� m  ���� ��� 
 . i c n s� r  ����� n  ����� 7 ���"��
�" 
ctxt� m  ���!�! � m  ��� � ��� o  ���� <0 thecurrenticonfilenameprefix theCurrentIconFileNamePrefix� o      �� <0 thecurrenticonfilenameprefix theCurrentIconFileNamePrefix�%  �$  �'  �&  } ��� l ������ r  ����� b  ����� b  ����� l ������ c  ����� o  ���� "0 theoutputfolder theOutputFolder� m  ���
� 
TEXT�  �  � o  ���� <0 thecurrenticonfilenameprefix theCurrentIconFileNamePrefix� m  ���� ���  . p n g� o      �� 0 thesavepath theSavePath�  �  � ��� l ����� O  ���� k  ��� ��� r  ����� I �����
� .aevtodocnull  �    alis� o  ���� (0 thecurrenticonfile theCurrentIconFile�  � o      �� 0 theimage theImage� ��� O  ���� k  ��� ��� Z ������� > ����� o  ���� 0 thesizechoice theSizeChoice� m  ���� ���  A c t u a l   S i z e� I ����
�
� .icasscalnull���     obj �
  � �	��
�	 
maxi� c  ����� o  ���� 0 thesizechoice theSizeChoice� m  ���
� 
TEXT�  �  �  � ��� I ����
� .coresavenull���     obj �  � ���
� 
fltp� m  �
� typvPNGf� � ���
�  
kfil� o  ���� 0 thesavepath theSavePath��  �  � o  ������ 0 theimage theImage�  � m  �����                                                                                  imev  alis    X  Macintosh HD                   BD ����Image Events.app                                               ����            ����  
 cu             CoreServices  //:System:Library:CoreServices:Image Events.app/   "  I m a g e   E v e n t s . a p p    M a c i n t o s h   H D  ,System/Library/CoreServices/Image Events.app  / ��  �  �  � ��� l     ��������  ��  ��  � ��� l     ������  � T N Let the user know the icons have been extracted and display the output folder   � ��� �   L e t   t h e   u s e r   k n o w   t h e   i c o n s   h a v e   b e e n   e x t r a c t e d   a n d   d i s p l a y   t h e   o u t p u t   f o l d e r� ��� l     ������  � > 8display alert "The specified icons have been extracted."   � ��� p d i s p l a y   a l e r t   " T h e   s p e c i f i e d   i c o n s   h a v e   b e e n   e x t r a c t e d . "� ��� l     ������  � 7 1tell application "Finder" to open theOutputFolder   � ��� b t e l l   a p p l i c a t i o n   " F i n d e r "   t o   o p e n   t h e O u t p u t F o l d e r� ��� l     ��������  ��  ��  � ��� l     ������  � %  This handler displays an alert   � ��� >   T h i s   h a n d l e r   d i s p l a y s   a n   a l e r t� ��� i     ��� I      ������� 	0 alert  � ���� o      ���� 0 
themessage 
theMessage��  ��  � I    	����
�� .sysodisAaleR        TEXT� m     �� ��� . U n a b l e   t o   E x t r a c t   I c o n s� ����
�� 
mesS� o    ���� 0 
themessage 
theMessage� �����
�� 
as A� m    ��
�� EAlTwarN��  � ��� l     ��������  ��  ��  � ��� l     ������  � 6 0 This handler makes a folder in an output folder   � ��� `   T h i s   h a n d l e r   m a k e s   a   f o l d e r   i n   a n   o u t p u t   f o l d e r� ���� i    ��� I      ������� 0 
makefolder 
makeFolder� ��� o      ���� 0 thefoldername theFolderName� ���� o      ���� "0 theoutputfolder theOutputFolder��  ��  � O     6��� Z    5������ l   ������ I   �����
�� .coredoexnull���     ****� n    ��� 4    ���
�� 
cfol� o   	 
���� 0 thefoldername theFolderName� 4    ���
�� 
cfol� o    ���� "0 theoutputfolder theOutputFolder��  ��  ��  � L    �� n    ��� 1    ��
�� 
ppth� l   ������ n    ��� 4    ���
�� 
cfol� o    ���� 0 thefoldername theFolderName� 4    ���
�� 
cfol� o    ���� "0 theoutputfolder theOutputFolder��  ��  ��  � L     5   n     4 1   1 3��
�� 
ppth l    1���� I    1����
�� .corecrel****      � null��   ��
�� 
kocl m   " #��
�� 
cfol ��
�� 
insh 4   $ (��	
�� 
cfol	 o   & '���� "0 theoutputfolder theOutputFolder ��
��
�� 
prdt
 K   ) - ����
�� 
pnam o   * +���� 0 thefoldername theFolderName��  ��  ��  ��  � m     �                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��       ��������������������   �������������������������������������������������� 	0 alert  �� 0 
makefolder 
makeFolder
�� .aevtoappnull  �   � ****�� 0 theapp theApp�� 0 
theappname 
theAppName�� 0 	ispackage 	isPackage�� .0 theappresourcesfolder theAppResourcesFolder�� 0 theiconnames theIconNames�� &0 theiconstoextract theIconsToExtract�� 0 thesizechoice theSizeChoice�� 0 current_path  �� "0 theoutputfolder theOutputFolder�� 00 thecurrenticonfilename theCurrentIconFileName�� (0 thecurrenticonfile theCurrentIconFile�� <0 thecurrenticonfilenameprefix theCurrentIconFileNamePrefix�� 0 thesavepath theSavePath�� 0 theimage theImage��  ��  ��  ��  ��  ��  ��   ����������� 	0 alert  �� ����   ���� 0 
themessage 
theMessage��   ���� 0 
themessage 
theMessage �����������
�� 
mesS
�� 
as A
�� EAlTwarN�� 
�� .sysodisAaleR        TEXT�� 
�����  ������� ���� 0 
makefolder 
makeFolder�� ��!�� !  ������ 0 thefoldername theFolderName�� "0 theoutputfolder theOutputFolder��   ������ 0 thefoldername theFolderName�� "0 theoutputfolder theOutputFolder  
������������������
�� 
cfol
�� .coredoexnull���     ****
�� 
ppth
�� 
kocl
�� 
insh
�� 
prdt
�� 
pnam�� 
�� .corecrel****      � null�� 7� 3*�/�/j  *�/�/�,EY *���*�/��l� 	�,EU ��"��~#$�}
�� .aevtoappnull  �   � ****" k    %%  &&  ''  �((  �))  �** ++ ,, -- $.. 9// Q00 e11 j22 w33 |44 �55 ��|�|  �  �~  #  $ E�{ �z ��y�x .�w�v�u�t \ ^�s�r s�q�p�o�n � ��m6�l ��k � ��j�i�h � ��g�f�e�d�c�b1�a�`�_A�^�]�\�[[�Z�Y�X��W��V��U�T��S�R�Q�P�O�N�M
�{ 
alis�z 0 theapp theApp
�y 
pnam�x 0 
theappname 
theAppName
�w 
ctxt�v��
�u 
pkgf�t 0 	ispackage 	isPackage�s 	0 alert  
�r 
ppth
�q 
TEXT�p .0 theappresourcesfolder theAppResourcesFolder
�o 
cfol
�n .coredoexnull���     ****
�m 
file6  
�l 
extn�k 0 theiconnames theIconNames
�j 
leng�i &0 theiconstoextract theIconsToExtract
�h 
prmp
�g 
inSL
�f 
mlsl�e 
�d .gtqpchltns    @   @ ns  �c 0 thesizechoice theSizeChoice
�b 
cobj
�a .earsffdralis        afdr
�` 
ctnr�_ 0 current_path  
�^ afdmdesk
�] 
rtyp�\ 0 
makefolder 
makeFolder�[ "0 theoutputfolder theOutputFolder�Z 00 thecurrenticonfilename theCurrentIconFileName�Y (0 thecurrenticonfile theCurrentIconFile�X <0 thecurrenticonfilenameprefix theCurrentIconFileNamePrefix�W���V 0 thesavepath theSavePath
�U .aevtodocnull  �    alis�T 0 theimage theImage
�S 
maxi
�R .icasscalnull���     obj 
�Q 
fltp
�P typvPNGf
�O 
kfil�N 
�M .coresavenull���     obj �})��/E�O� ���,E�O�� �[�\[Zk\Z�2E�Y hO��,E�O�f  )��%�%k+ OhY hO��,�%a &E` O*a _ /j f  )a �%a %k+ OhY hO*a _ /a -�,a [a ,\Za 81E` UO_ jv  )a �%a %k+ OhY hO_ a ,k  _ E` Y '_ a a  �%a !%a "_ a #ea $ %E` OPO_ f  hY hOa &kvE` 'O_ 'f  hY hO_ 'a (k/E` 'Oa ) )j *a +,�&E` ,UO*a -a .a /a l *l+ 0E` 1O*�a 2%_ 1l+ 0E` 1O_ E` 3O_ _ 3%a &E` 4O_ 3E` 5O_ 5a 6 _ 5[�\[Zk\Za 72E` 5Y hO_ 1a &_ 5%a 8%E` 9Oa : F_ 4j ;E` <O_ < 3_ 'a = *a >_ 'a &l ?Y hO*a @a Aa B_ 9a C DUUBalis    >  Macintosh HD                   BD ����Google Chrome.app                                              ����            ����  
 cu             Applications  !/:Applications:Google Chrome.app/   $  G o o g l e   C h r o m e . a p p    M a c i n t o s h   H D  Applications/Google Chrome.app  / ��   �77  G o o g l e   C h r o m e
�� boovtrue �88 ~ M a c i n t o s h   H D : A p p l i c a t i o n s : G o o g l e   C h r o m e . a p p : C o n t e n t s : R e s o u r c e s : �L9�L 9  :;: �<<  d o c u m e n t . i c n s; �==  a p p . i c n s �K>�K >  ?? �@@  a p p . i c n spalis    l  Macintosh HD                   BD ����AppleScript                                                    ����            ����  
 cu             	Bizi-Java   </:Users:harleylatsky:Documents:GitHub:Bizi-Java:AppleScript/    A p p l e S c r i p t    M a c i n t o s h   H D  9Users/harleylatsky/Documents/GitHub/Bizi-Java/AppleScript   /    ��   �AA � M a c i n t o s h   H D : U s e r s : h a r l e y l a t s k y : D e s k t o p : E x t r a c t e d   I c o n s : G o o g l e   C h r o m e   I c o n s : �BB � M a c i n t o s h   H D : A p p l i c a t i o n s : G o o g l e   C h r o m e . a p p : C o n t e n t s : R e s o u r c e s : a p p . i c n s �CC � M a c i n t o s h   H D : U s e r s : h a r l e y l a t s k y : D e s k t o p : E x t r a c t e d   I c o n s : G o o g l e   C h r o m e   I c o n s : a p p . i c n s . p n g DD ��JE
�J 
imagE �FF  a p p . i c n s��  ��  ��  ��  ��  ��  ��  ascr  ��ޭ