FasdUAS 1.101.10   ��   ��    k             l     ��  ��    � { Creates a page in divephotos using the name of the album containing the selected pictures, medium only and with a zip file     � 	 	 �   C r e a t e s   a   p a g e   i n   d i v e p h o t o s   u s i n g   t h e   n a m e   o f   t h e   a l b u m   c o n t a i n i n g   t h e   s e l e c t e d   p i c t u r e s ,   m e d i u m   o n l y   a n d   w i t h   a   z i p   f i l e   
  
 i         I      �� ���� 0 
fileexists 
fileExists   ��  o      ���� 0 	posixpath 	posixPath��  ��    k            r         b         b         m        �    i f   l s    o    ���� 0 	posixpath 	posixPath  m       �   T   >   / d e v / n u l l   ;   t h e n   e c h o   1 ;   e l s e   e c h o   0 ; f i  o      ���� 0 	thescript        r         c     ! " ! l    #���� # c     $ % $ l    &���� & I   �� '��
�� .sysoexecTEXT���     TEXT ' o    	���� 0 	thescript  ��  ��  ��   % m    ��
�� 
long��  ��   " m    ��
�� 
bool   o      ���� 0 	returnval     ( ) ( l   �� * +��   *  log returnval    + � , ,  l o g   r e t u r n v a l )  -�� - L     . . o    ���� 0 	returnval  ��     / 0 / l     ��������  ��  ��   0  1 2 1 l    $ 3���� 3 O     $ 4 5 4 k    # 6 6  7 8 7 r    	 9 : 9 l    ;���� ; 1    ��
�� 
sele��  ��   : o      ���� 
0 cursel   8  < = < r   
  > ? > n   
  @ A @ 4   �� B
�� 
cobj B m    ����  A o   
 ���� 
0 cursel   ? o      ���� 0 firstpic   =  C D C l   �� E F��   E 4 .set tags to name of every EXIF tag of firstpic    F � G G \ s e t   t a g s   t o   n a m e   o f   e v e r y   E X I F   t a g   o f   f i r s t p i c D  H I H l   �� J K��   J  log tags    K � L L  l o g   t a g s I  M�� M O    # N O N k    " P P  Q R Q r     S T S n     U V U 1    ��
�� 
pnam V 1    ��
�� 
rkpt T o      ���� 
0 prname   R  W�� W I   "�� X��
�� .ascrcmnt****      � **** X o    ���� 
0 prname  ��  ��   O o    ���� 0 firstpic  ��   5 m      Y Y�                                                                                  fstp  alis    P  
Subversion                 �1ubH+  QڶAperture.app                                                   X28Ψ�        ����  	                Applications    �1�      ΨU�    Qڶ  %Subversion:Applications: Aperture.app     A p e r t u r e . a p p   
 S u b v e r s i o n  Applications/Aperture.app   / ��  ��  ��   2  Z [ Z l     ��������  ��  ��   [  \ ] \ l  % * ^���� ^ r   % * _ ` _ b   % ( a b a m   % & c c � d d @ / U s e r s / i a i n / P i c t u r e s / d i v e p h o t o s / b o   & '���� 
0 prname   ` o      ���� 0 publishedpath PublishedPath��  ��   ]  e f e l  + 0 g���� g I  + 0�� h��
�� .ascrcmnt****      � **** h o   + ,���� 0 publishedpath PublishedPath��  ��  ��   f  i j i l  1 6 k���� k r   1 6 l m l b   1 4 n o n o   1 2���� 0 publishedpath PublishedPath o m   2 3 p p � q q  / m e d i u m m o      ���� 0 
mediumpath 
mediumPath��  ��   j  r s r l  7 < t���� t r   7 < u v u b   7 : w x w o   7 8���� 0 publishedpath PublishedPath x m   8 9 y y � z z  / t h u m b s v o      ���� 0 
thumbspath 
thumbsPath��  ��   s  { | { l     ��������  ��  ��   |  } ~ } l     ��  ���    &  log my fileExists(PublishedPath)    � � � � @ l o g   m y   f i l e E x i s t s ( P u b l i s h e d P a t h ) ~  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � * $if my fileExists(PublishedPath) then    � � � � H i f   m y   f i l e E x i s t s ( P u b l i s h e d P a t h )   t h e n �  � � � l     �� � ���   �  	log "deleting jpegs"    � � � � * 	 l o g   " d e l e t i n g   j p e g s " �  � � � l     �� � ���   � � �	set thescript to "mv " & fullsizePath & "/*.jpg " & mediumPath & "/*.jpg " & largePath & "/*.jpg " & thumbsPath & "/*.jpg  /tmp"    � � � � 	 s e t   t h e s c r i p t   t o   " m v   "   &   f u l l s i z e P a t h   &   " / * . j p g   "   &   m e d i u m P a t h   &   " / * . j p g   "   &   l a r g e P a t h   &   " / * . j p g   "   &   t h u m b s P a t h   &   " / * . j p g     / t m p " �  � � � l     �� � ���   �   	do shell script thescript    � � � � 4 	 d o   s h e l l   s c r i p t   t h e s c r i p t �  � � � l     �� � ���   �  end if    � � � �  e n d   i f �  � � � l  = D ����� � r   = D � � � b   = @ � � � o   = >���� 0 
mediumpath 
mediumPath � m   > ? � � � � �  / * . j p g � o      ���� 0 jpg  ��  ��   �  � � � l  E q ����� � Z   E q � ����� � n  E M � � � I   F M�� ����� 0 
fileexists 
fileExists �  ��� � o   F I���� 0 jpg  ��  ��   �  f   E F � k   P m � �  � � � r   P ] � � � b   P Y � � � b   P U � � � m   P S � � � � �  r m   � o   S T���� 0 
mediumpath 
mediumPath � m   U X � � � � �  / * . j p g � o      ���� 0 	thescript   �  � � � I  ^ e�� ���
�� .ascrcmnt****      � **** � o   ^ a���� 0 	thescript  ��   �  ��� � I  f m�� ���
�� .sysoexecTEXT���     TEXT � o   f i���� 0 	thescript  ��  ��  ��  ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l  r { ����� � r   r { � � � b   r w � � � o   r s���� 0 
thumbspath 
thumbsPath � m   s v � � � � �  / * . j p g � o      ���� 0 jpg  ��  ��   �  � � � l  | � ����� � Z   | � � ����� � n  | � � � � I   } ��� ����� 0 
fileexists 
fileExists �  ��� � o   } ����� 0 jpg  ��  ��   �  f   | } � k   � � � �  � � � r   � � � � � b   � � � � � b   � � � � � m   � � � � � � �  r m   � o   � ����� 0 
thumbspath 
thumbsPath � m   � � � � � � �  / * . j p g � o      ���� 0 	thescript   �  � � � I  � ��� ���
�� .ascrcmnt****      � **** � o   � ����� 0 	thescript  ��   �  ��� � I  � ��� ���
�� .sysoexecTEXT���     TEXT � o   � ����� 0 	thescript  ��  ��  ��  ��  ��  ��   �  � � � l  � � ����� � r   � � � � � b   � � � � � m   � � � � � � �  m k d i r   - p   � o   � ����� 0 publishedpath PublishedPath � o      ���� 0 	thescript  ��  ��   �  � � � l  � � ����� � I  � �� ��~
� .sysoexecTEXT���     TEXT � o   � ��}�} 0 	thescript  �~  ��  ��   �  � � � l     �|�{�z�|  �{  �z   �  � � � l  � � ��y�x � r   � � � � � b   � � � � � b   � � � � � b   � � �  � m   � � �  m k d i r   - p    o   � ��w�w 0 
thumbspath 
thumbsPath � m   � � �  ;   m k d i r   - p   � o   � ��v�v 0 
mediumpath 
mediumPath � o      �u�u 0 	thescript  �y  �x   �  l  � ��t�s I  � ��r�q
�r .sysoexecTEXT���     TEXT o   � ��p�p 0 	thescript  �q  �t  �s   	
	 l     �o�n�m�o  �n  �m  
 �l l  ���k�j O   �� t   �� k   ��  I  � ��i
�i .rkstrkxpnull���     **** o   � ��h�h 
0 cursel   �g
�g 
nmfi 4   � ��f
�f 
rknp m   � � �  V e r s i o n   N a m e �e
�e 
faal 4   � ��d
�d 
rkes m   � � �   J P E G   -   T h u m b n a i l �c �b
�c 
insh  o   � ��a�a 0 
thumbspath 
thumbsPath�b   !"! I  ��`#$
�` .rkstrkxpnull���     ****# o   � ��_�_ 
0 cursel  $ �^%&
�^ 
nmfi% 4  	�]'
�] 
rknp' m  (( �))  V e r s i o n   N a m e& �\*+
�\ 
faal* 4  �[,
�[ 
rkes, m  -- �.. 6 J P E G   -   F i t   w i t h i n   8 0 0   x   8 0 0+ �Z/�Y
�Z 
insh/ o  �X�X 0 
mediumpath 
mediumPath�Y  " 010 l �W�V�U�W  �V  �U  1 232 l �T45�T  4 K E**** Get rid of spaces and brackets in filenames (damn you apple)****   5 �66 � * * * *   G e t   r i d   o f   s p a c e s   a n d   b r a c k e t s   i n   f i l e n a m e s   ( d a m n   y o u   a p p l e ) * * * *3 787 r  '9:9 J  #;; <=< o   �S�S 0 
mediumpath 
mediumPath= >�R> o   !�Q�Q 0 
thumbspath 
thumbsPath�R  : o      �P�P 0 fixpaths  8 ?@? X  (\A�OBA k  <WCC DED r  <OFGF b  <KHIH b  <GJKJ b  <ELML b  <ANON m  <?PP �QQ  f o r   f i l e   i n  O o  ?@�N�N 0 fixpath  M m  ADRR �SS � / * ;   d o   o l d = ` b a s e n a m e   " $ f i l e " ` ;   n e w = $ { o l d / / [   ) ] / } ;   n e w = $ { n e w / / [ ( ] / _ } ;   i f   [   - f   " $ f i l e "   ] ;   t h e n   m v   " $ f i l e "  K o  EF�M�M 0 fixpath  I m  GJTT �UU  / $ n e w ;   f i ;   d o n eG o      �L�L 0 	thescript  E VWV l PP�KXY�K  X O Iset thescript to "/Users/iain/bin/remove-spaces \"" & fixpath & "*.jpg\""   Y �ZZ � s e t   t h e s c r i p t   t o   " / U s e r s / i a i n / b i n / r e m o v e - s p a c e s   \ " "   &   f i x p a t h   &   " * . j p g \ " "W [�J[ I PW�I\�H
�I .sysoexecTEXT���     TEXT\ o  PS�G�G 0 	thescript  �H  �J  �O 0 fixpath  B o  +.�F�F 0 fixpaths  @ ]^] l ]]�E�D�C�E  �D  �C  ^ _`_ r  ]jaba b  ]fcdc b  ]befe m  ]`gg �hh < / U s e r s / i a i n / b i n / a d d - w a t e r m a r k  f o  `a�B�B 0 
mediumpath 
mediumPathd m  beii �jj  / * . j p g  b o      �A�A 0 	thescript  ` klk I kr�@m�?
�@ .ascrcmnt****      � ****m o  kn�>�> 0 	thescript  �?  l non I sz�=p�<
�= .sysoexecTEXT���     TEXTp o  sv�;�; 0 	thescript  �<  o qrq l {{�:�9�8�:  �9  �8  r sts r  {�uvu b  {�wxw m  {~yy �zz D / U s e r s / i a i n / b i n / b u i l d - s a m p l e - p a g e  x o  ~�7�7 0 publishedpath PublishedPathv o      �6�6 0 	thescript  t {|{ I ���5}�4
�5 .ascrcmnt****      � ****} o  ���3�3 0 	thescript  �4  | ~~ I ���2��1
�2 .sysoexecTEXT���     TEXT� o  ���0�0 0 	thescript  �1   ��/� l ���.�-�,�.  �-  �,  �/   m   � ��+�+ m   � ����                                                                                  fstp  alis    P  
Subversion                 �1ubH+  QڶAperture.app                                                   X28Ψ�        ����  	                Applications    �1�      ΨU�    Qڶ  %Subversion:Applications: Aperture.app     A p e r t u r e . a p p   
 S u b v e r s i o n  Applications/Aperture.app   / ��  �k  �j  �l       �*����*  � �)�(�) 0 
fileexists 
fileExists
�( .aevtoappnull  �   � ****� �' �&�%���$�' 0 
fileexists 
fileExists�& �#��# �  �"�" 0 	posixpath 	posixPath�%  � �!� ��! 0 	posixpath 	posixPath�  0 	thescript  � 0 	returnval  �   ���
� .sysoexecTEXT���     TEXT
� 
long
� 
bool�$ �%�%E�O�j �&�&E�O�� �������
� .aevtoappnull  �   � ****� k    ���  1��  \��  e��  i��  r��  ���  ���  ���  ���  ���  ���  ��� �� ��  �  �  � �� 0 fixpath  � 1 Y�������� c� p� y� ��
�	 � ��� � � � �������� ��(-������PRTgiy
� 
sele� 
0 cursel  
� 
cobj� 0 firstpic  
� 
rkpt
� 
pnam� 
0 prname  
� .ascrcmnt****      � ****� 0 publishedpath PublishedPath� 0 
mediumpath 
mediumPath� 0 
thumbspath 
thumbsPath�
 0 jpg  �	 0 
fileexists 
fileExists� 0 	thescript  
� .sysoexecTEXT���     TEXT�
� 
nmfi
� 
rknp
� 
faal
� 
rkes
� 
insh�  
�� .rkstrkxpnull���     ****�� 0 fixpaths  
�� 
kocl
�� .corecnte****       ****��� !*�,E�O��k/E�O� *�,�,E�O�j UUO��%E�O�j O��%E�O��%E�O��%E` O)_ k+  "a �%a %E` O_ j O_ j Y hO�a %E` O)_ k+  "a �%a %E` O_ j O_ j Y hOa �%E` O_ j Oa �%a %�%E` O_ j O� �a n�a *a a /a  *a !a "/a #�a $ %O�a *a a &/a  *a !a '/a #�a $ %O��lvE` (O 3_ ([a )�l *kh  a +�%a ,%�%a -%E` O_ j [OY��Oa .�%a /%E` O_ j O_ j Oa 0�%E` O_ j O_ j OPoUascr  ��ޭ