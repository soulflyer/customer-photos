FasdUAS 1.101.10   ��   ��    k             l     ��  ��    � { Creates a page in divephotos using the name of the album containing the selected pictures, medium only and with a zip file     � 	 	 �   C r e a t e s   a   p a g e   i n   d i v e p h o t o s   u s i n g   t h e   n a m e   o f   t h e   a l b u m   c o n t a i n i n g   t h e   s e l e c t e d   p i c t u r e s ,   m e d i u m   o n l y   a n d   w i t h   a   z i p   f i l e   
  
 i         I      �� ���� 0 
fileexists 
fileExists   ��  o      ���� 0 	posixpath 	posixPath��  ��    k            r         b         b         m        �    i f   l s    o    ���� 0 	posixpath 	posixPath  m       �   T   >   / d e v / n u l l   ;   t h e n   e c h o   1 ;   e l s e   e c h o   0 ; f i  o      ���� 0 	thescript        r         c     ! " ! l    #���� # c     $ % $ l    &���� & I   �� '��
�� .sysoexecTEXT���     TEXT ' o    	���� 0 	thescript  ��  ��  ��   % m    ��
�� 
long��  ��   " m    ��
�� 
bool   o      ���� 0 	returnval     ( ) ( I   �� *��
�� .ascrcmnt****      � **** * o    ���� 0 	returnval  ��   )  +�� + L     , , o    ���� 0 	returnval  ��     - . - l     ��������  ��  ��   .  / 0 / l    $ 1���� 1 O     $ 2 3 2 k    # 4 4  5 6 5 r    	 7 8 7 l    9���� 9 1    ��
�� 
sele��  ��   8 o      ���� 
0 cursel   6  : ; : r   
  < = < n   
  > ? > 4   �� @
�� 
cobj @ m    ����  ? o   
 ���� 
0 cursel   = o      ���� 0 firstpic   ;  A B A l   �� C D��   C 4 .set tags to name of every EXIF tag of firstpic    D � E E \ s e t   t a g s   t o   n a m e   o f   e v e r y   E X I F   t a g   o f   f i r s t p i c B  F G F l   �� H I��   H  log tags    I � J J  l o g   t a g s G  K�� K O    # L M L k    " N N  O P O r     Q R Q n     S T S 1    ��
�� 
pnam T 1    ��
�� 
rkpt R o      ���� 
0 prname   P  U�� U I   "�� V��
�� .ascrcmnt****      � **** V o    ���� 
0 prname  ��  ��   M o    ���� 0 firstpic  ��   3 m      W W�                                                                                  fstp  alis    P  
Subversion                 �1ubH+  QڶAperture.app                                                   X28Ψ�        ����  	                Applications    �1�      ΨU�    Qڶ  %Subversion:Applications: Aperture.app     A p e r t u r e . a p p   
 S u b v e r s i o n  Applications/Aperture.app   / ��  ��  ��   0  X Y X l     ��������  ��  ��   Y  Z [ Z l  % * \���� \ r   % * ] ^ ] b   % ( _ ` _ m   % & a a � b b @ / U s e r s / i a i n / P i c t u r e s / d i v e p h o t o s / ` o   & '���� 
0 prname   ^ o      ���� 0 publishedpath PublishedPath��  ��   [  c d c l  + 0 e���� e I  + 0�� f��
�� .ascrcmnt****      � **** f o   + ,���� 0 publishedpath PublishedPath��  ��  ��   d  g h g l  1 6 i���� i r   1 6 j k j b   1 4 l m l o   1 2���� 0 publishedpath PublishedPath m m   2 3 n n � o o  / m e d i u m k o      ���� 0 
mediumpath 
mediumPath��  ��   h  p q p l  7 < r���� r r   7 < s t s b   7 : u v u o   7 8���� 0 publishedpath PublishedPath v m   8 9 w w � x x  / t h u m b s t o      ���� 0 
thumbspath 
thumbsPath��  ��   q  y z y l     ��������  ��  ��   z  { | { l     �� } ~��   } &  log my fileExists(PublishedPath)    ~ �   @ l o g   m y   f i l e E x i s t s ( P u b l i s h e d P a t h ) |  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � * $if my fileExists(PublishedPath) then    � � � � H i f   m y   f i l e E x i s t s ( P u b l i s h e d P a t h )   t h e n �  � � � l     �� � ���   �  	log "deleting jpegs"    � � � � * 	 l o g   " d e l e t i n g   j p e g s " �  � � � l     �� � ���   � � �	set thescript to "mv " & fullsizePath & "/*.jpg " & mediumPath & "/*.jpg " & largePath & "/*.jpg " & thumbsPath & "/*.jpg  /tmp"    � � � � 	 s e t   t h e s c r i p t   t o   " m v   "   &   f u l l s i z e P a t h   &   " / * . j p g   "   &   m e d i u m P a t h   &   " / * . j p g   "   &   l a r g e P a t h   &   " / * . j p g   "   &   t h u m b s P a t h   &   " / * . j p g     / t m p " �  � � � l     �� � ���   �   	do shell script thescript    � � � � 4 	 d o   s h e l l   s c r i p t   t h e s c r i p t �  � � � l     �� � ���   �  end if    � � � �  e n d   i f �  � � � l  = D ����� � r   = D � � � b   = @ � � � o   = >���� 0 
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
�� .sysoexecTEXT���     TEXT � o   � ����� 0 	thescript  ��  ��  ��  ��  ��  ��   �  � � � l  � � ����� � r   � � � � � b   � � � � � m   � � � � � � �  m k d i r   - p   � o   � ����� 0 publishedpath PublishedPath � o      ���� 0 	thescript  ��  ��   �  � � � l  � � ���~ � I  � ��} ��|
�} .sysoexecTEXT���     TEXT � o   � ��{�{ 0 	thescript  �|  �  �~   �  � � � l     �z�y�x�z  �y  �x   �  � � � l  � � ��w�v � r   � � � � � b   � � � � � b   � � � � � b   � � � � � m   � � � � �    m k d i r   - p   � o   � ��u�u 0 
thumbspath 
thumbsPath � m   � � �  ;   m k d i r   - p   � o   � ��t�t 0 
mediumpath 
mediumPath � o      �s�s 0 	thescript  �w  �v   �  l  � ��r�q I  � ��p�o
�p .sysoexecTEXT���     TEXT o   � ��n�n 0 	thescript  �o  �r  �q    l     �m�l�k�m  �l  �k   	�j	 l  ��
�i�h
 O   �� t   �� k   ��  I  � ��g
�g .rkstrkxpnull���     **** o   � ��f�f 
0 cursel   �e
�e 
nmfi 4   � ��d
�d 
rknp m   � � �  V e r s i o n   N a m e �c
�c 
faal 4   � ��b
�b 
rkes m   � � �   J P E G   -   T h u m b n a i l �a�`
�a 
insh o   � ��_�_ 0 
thumbspath 
thumbsPath�`     I  ��^!"
�^ .rkstrkxpnull���     ****! o   � ��]�] 
0 cursel  " �\#$
�\ 
nmfi# 4  	�[%
�[ 
rknp% m  && �''  V e r s i o n   N a m e$ �Z()
�Z 
faal( 4  �Y*
�Y 
rkes* m  ++ �,, 6 J P E G   -   F i t   w i t h i n   8 0 0   x   8 0 0) �X-�W
�X 
insh- o  �V�V 0 
mediumpath 
mediumPath�W    ./. l �U�T�S�U  �T  �S  / 010 l �R23�R  2 K E**** Get rid of spaces and brackets in filenames (damn you apple)****   3 �44 � * * * *   G e t   r i d   o f   s p a c e s   a n d   b r a c k e t s   i n   f i l e n a m e s   ( d a m n   y o u   a p p l e ) * * * *1 565 r  '787 J  #99 :;: o   �Q�Q 0 
mediumpath 
mediumPath; <�P< o   !�O�O 0 
thumbspath 
thumbsPath�P  8 o      �N�N 0 fixpaths  6 =>= X  (\?�M@? k  <WAA BCB r  <ODED b  <KFGF b  <GHIH b  <EJKJ b  <ALML m  <?NN �OO  f o r   f i l e   i n  M o  ?@�L�L 0 fixpath  K m  ADPP �QQ � / * ;   d o   o l d = ` b a s e n a m e   " $ f i l e " ` ;   n e w = $ { o l d / / [   ) ] / } ;   n e w = $ { n e w / / [ ( ] / _ } ;   i f   [   - f   " $ f i l e "   ] ;   t h e n   m v   " $ f i l e "  I o  EF�K�K 0 fixpath  G m  GJRR �SS  / $ n e w ;   f i ;   d o n eE o      �J�J 0 	thescript  C TUT l PP�IVW�I  V O Iset thescript to "/Users/iain/bin/remove-spaces \"" & fixpath & "*.jpg\""   W �XX � s e t   t h e s c r i p t   t o   " / U s e r s / i a i n / b i n / r e m o v e - s p a c e s   \ " "   &   f i x p a t h   &   " * . j p g \ " "U Y�HY I PW�GZ�F
�G .sysoexecTEXT���     TEXTZ o  PS�E�E 0 	thescript  �F  �H  �M 0 fixpath  @ o  +.�D�D 0 fixpaths  > [\[ l ]]�C�B�A�C  �B  �A  \ ]^] r  ]j_`_ b  ]faba b  ]bcdc m  ]`ee �ff < / U s e r s / i a i n / b i n / a d d - w a t e r m a r k  d o  `a�@�@ 0 
mediumpath 
mediumPathb m  begg �hh  / * . j p g  ` o      �?�? 0 	thescript  ^ iji I kr�>k�=
�> .ascrcmnt****      � ****k o  kn�<�< 0 	thescript  �=  j lml I sz�;n�:
�; .sysoexecTEXT���     TEXTn o  sv�9�9 0 	thescript  �:  m opo l {{�8�7�6�8  �7  �6  p qrq r  {�sts b  {�uvu m  {~ww �xx D / U s e r s / i a i n / b i n / b u i l d - s a m p l e - p a g e  v o  ~�5�5 0 publishedpath PublishedPatht o      �4�4 0 	thescript  r yzy I ���3{�2
�3 .ascrcmnt****      � ****{ o  ���1�1 0 	thescript  �2  z |}| I ���0~�/
�0 .sysoexecTEXT���     TEXT~ o  ���.�. 0 	thescript  �/  } �- l ���,�+�*�,  �+  �*  �-   m   � ��)�) m   � ����                                                                                  fstp  alis    P  
Subversion                 �1ubH+  QڶAperture.app                                                   X28Ψ�        ����  	                Applications    �1�      ΨU�    Qڶ  %Subversion:Applications: Aperture.app     A p e r t u r e . a p p   
 S u b v e r s i o n  Applications/Aperture.app   / ��  �i  �h  �j       �(����(  � �'�&�' 0 
fileexists 
fileExists
�& .aevtoappnull  �   � ****� �% �$�#���"�% 0 
fileexists 
fileExists�$ �!��! �  � �  0 	posixpath 	posixPath�#  � ���� 0 	posixpath 	posixPath� 0 	thescript  � 0 	returnval  �   ����
� .sysoexecTEXT���     TEXT
� 
long
� 
bool
� .ascrcmnt****      � ****�" �%�%E�O�j �&�&E�O�j O�� �������
� .aevtoappnull  �   � ****� k    ���  /��  Z��  c��  g��  p��  ���  ���  ���  ���  ���  ���  ��� �� 	��  �  �  � �� 0 fixpath  � 1 W�������� a�
 n�	 w� ��� � ��� � � � � ����� ��������&+������NPRegw
� 
sele� 
0 cursel  
� 
cobj� 0 firstpic  
� 
rkpt
� 
pnam� 
0 prname  
� .ascrcmnt****      � ****�
 0 publishedpath PublishedPath�	 0 
mediumpath 
mediumPath� 0 
thumbspath 
thumbsPath� 0 jpg  � 0 
fileexists 
fileExists� 0 	thescript  
� .sysoexecTEXT���     TEXT�
� 
nmfi
� 
rknp
�  
faal
�� 
rkes
�� 
insh�� 
�� .rkstrkxpnull���     ****�� 0 fixpaths  
�� 
kocl
�� .corecnte****       ****��� !*�,E�O��k/E�O� *�,�,E�O�j UUO��%E�O�j O��%E�O��%E�O��%E` O)_ k+  "a �%a %E` O_ j O_ j Y hO�a %E` O)_ k+  "a �%a %E` O_ j O_ j Y hOa �%E` O_ j Oa �%a %�%E` O_ j O� �a n�a *a a /a  *a !a "/a #�a $ %O�a *a a &/a  *a !a '/a #�a $ %O��lvE` (O 3_ ([a )�l *kh  a +�%a ,%�%a -%E` O_ j [OY��Oa .�%a /%E` O_ j O_ j Oa 0�%E` O_ j O_ j OPoUascr  ��ޭ