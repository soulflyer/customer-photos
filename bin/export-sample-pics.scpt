FasdUAS 1.101.10   ��   ��    k             i         I      �� 	���� 0 
fileexists 
fileExists 	  
�� 
 o      ���� 0 	posixpath 	posixPath��  ��    k            r         b         b         m        �    i f   l s    o    ���� 0 	posixpath 	posixPath  m       �   T   >   / d e v / n u l l   ;   t h e n   e c h o   1 ;   e l s e   e c h o   0 ; f i  o      ���� 0 	thescript        r        c        l    ����  c         l    !���� ! I   �� "��
�� .sysoexecTEXT���     TEXT " o    	���� 0 	thescript  ��  ��  ��     m    ��
�� 
long��  ��    m    ��
�� 
bool  o      ���� 0 	returnval     # $ # I   �� %��
�� .ascrcmnt****      � **** % o    ���� 0 	returnval  ��   $  &�� & L     ' ' o    ���� 0 	returnval  ��     ( ) ( l     ��������  ��  ��   )  * + * l    $ ,���� , O     $ - . - k    # / /  0 1 0 r    	 2 3 2 l    4���� 4 1    ��
�� 
sele��  ��   3 o      ���� 
0 cursel   1  5 6 5 r   
  7 8 7 n   
  9 : 9 4   �� ;
�� 
cobj ; m    ����  : o   
 ���� 
0 cursel   8 o      ���� 0 firstpic   6  < = < l   �� > ?��   > 4 .set tags to name of every EXIF tag of firstpic    ? � @ @ \ s e t   t a g s   t o   n a m e   o f   e v e r y   E X I F   t a g   o f   f i r s t p i c =  A B A l   �� C D��   C  log tags    D � E E  l o g   t a g s B  F�� F O    # G H G k    " I I  J K J r     L M L n     N O N 1    ��
�� 
pnam O 1    ��
�� 
rkpt M o      ���� 
0 prname   K  P�� P I   "�� Q��
�� .ascrcmnt****      � **** Q o    ���� 
0 prname  ��  ��   H o    ���� 0 firstpic  ��   . m      R R�                                                                                  fstp  alis    P  
Subversion                 �1ubH+     OAperture.app                                                    
�p��        ����  	                Applications    �1�      �~�Z       O  %Subversion:Applications: Aperture.app     A p e r t u r e . a p p   
 S u b v e r s i o n  Applications/Aperture.app   / ��  ��  ��   +  S T S l     ��������  ��  ��   T  U V U l  % * W���� W r   % * X Y X b   % ( Z [ Z m   % & \ \ � ] ] @ / U s e r s / i a i n / P i c t u r e s / d i v e p h o t o s / [ o   & '���� 
0 prname   Y o      ���� 0 publishedpath PublishedPath��  ��   V  ^ _ ^ l  + 0 `���� ` I  + 0�� a��
�� .ascrcmnt****      � **** a o   + ,���� 0 publishedpath PublishedPath��  ��  ��   _  b c b l  1 6 d���� d r   1 6 e f e b   1 4 g h g o   1 2���� 0 publishedpath PublishedPath h m   2 3 i i � j j  / m e d i u m f o      ���� 0 
mediumpath 
mediumPath��  ��   c  k l k l  7 < m���� m r   7 < n o n b   7 : p q p o   7 8���� 0 publishedpath PublishedPath q m   8 9 r r � s s  / t h u m b s o o      ���� 0 
thumbspath 
thumbsPath��  ��   l  t u t l     ��������  ��  ��   u  v w v l     �� x y��   x &  log my fileExists(PublishedPath)    y � z z @ l o g   m y   f i l e E x i s t s ( P u b l i s h e d P a t h ) w  { | { l     ��������  ��  ��   |  } ~ } l     ��  ���    * $if my fileExists(PublishedPath) then    � � � � H i f   m y   f i l e E x i s t s ( P u b l i s h e d P a t h )   t h e n ~  � � � l     �� � ���   �  	log "deleting jpegs"    � � � � * 	 l o g   " d e l e t i n g   j p e g s " �  � � � l     �� � ���   � � �	set thescript to "mv " & fullsizePath & "/*.jpg " & mediumPath & "/*.jpg " & largePath & "/*.jpg " & thumbsPath & "/*.jpg  /tmp"    � � � � 	 s e t   t h e s c r i p t   t o   " m v   "   &   f u l l s i z e P a t h   &   " / * . j p g   "   &   m e d i u m P a t h   &   " / * . j p g   "   &   l a r g e P a t h   &   " / * . j p g   "   &   t h u m b s P a t h   &   " / * . j p g     / t m p " �  � � � l     �� � ���   �   	do shell script thescript    � � � � 4 	 d o   s h e l l   s c r i p t   t h e s c r i p t �  � � � l     �� � ���   �  end if    � � � �  e n d   i f �  � � � l  = D ����� � r   = D � � � b   = @ � � � o   = >���� 0 
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
�� .sysoexecTEXT���     TEXT � o   � ����� 0 	thescript  ��  ��  ��  ��  ��  ��   �  � � � l  � � ����� � r   � � � � � b   � � � � � m   � � � � � � �  m k d i r   - p   � o   � ����� 0 publishedpath PublishedPath � o      ���� 0 	thescript  ��  ��   �  � � � l  � � ���� � I  � ��~ ��}
�~ .sysoexecTEXT���     TEXT � o   � ��|�| 0 	thescript  �}  ��  �   �  � � � l     �{�z�y�{  �z  �y   �  � � � l  � � ��x�w � r   � � � � � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � �  m k d i r   - p   � o   � ��v�v 0 
thumbspath 
thumbsPath � m   � � � � � � �  ;   m k d i r   - p   � o   � ��u�u 0 
mediumpath 
mediumPath � o      �t�t 0 	thescript  �x  �w   �  � � � l  � � �s�r  I  � ��q�p
�q .sysoexecTEXT���     TEXT o   � ��o�o 0 	thescript  �p  �s  �r   �  l     �n�m�l�n  �m  �l   �k l  ���j�i O   �� t   ��	 k   ��

  I  � ��h
�h .rkstrkxpnull���     **** o   � ��g�g 
0 cursel   �f
�f 
nmfi 4   � ��e
�e 
rknp m   � � �  V e r s i o n   N a m e �d
�d 
faal 4   � ��c
�c 
rkes m   � � �   J P E G   -   T h u m b n a i l �b�a
�b 
insh o   � ��`�` 0 
thumbspath 
thumbsPath�a    I  ��_
�_ .rkstrkxpnull���     **** o   � ��^�^ 
0 cursel   �]
�] 
nmfi 4  	�\ 
�\ 
rknp  m  !! �""  V e r s i o n   N a m e �[#$
�[ 
faal# 4  �Z%
�Z 
rkes% m  && �'' 6 J P E G   -   F i t   w i t h i n   8 0 0   x   8 0 0$ �Y(�X
�Y 
insh( o  �W�W 0 
mediumpath 
mediumPath�X   )*) l �V�U�T�V  �U  �T  * +,+ l �S-.�S  - K E**** Get rid of spaces and brackets in filenames (damn you apple)****   . �// � * * * *   G e t   r i d   o f   s p a c e s   a n d   b r a c k e t s   i n   f i l e n a m e s   ( d a m n   y o u   a p p l e ) * * * *, 010 r  '232 J  #44 565 o   �R�R 0 
mediumpath 
mediumPath6 7�Q7 o   !�P�P 0 
thumbspath 
thumbsPath�Q  3 o      �O�O 0 fixpaths  1 898 X  (\:�N;: k  <W<< =>= r  <O?@? b  <KABA b  <GCDC b  <EEFE b  <AGHG m  <?II �JJ  f o r   f i l e   i n  H o  ?@�M�M 0 fixpath  F m  ADKK �LL � / * ;   d o   o l d = ` b a s e n a m e   " $ f i l e " ` ;   n e w = $ { o l d / / [   ) ] / } ;   n e w = $ { n e w / / [ ( ] / _ } ;   i f   [   - f   " $ f i l e "   ] ;   t h e n   m v   " $ f i l e "  D o  EF�L�L 0 fixpath  B m  GJMM �NN  / $ n e w ;   f i ;   d o n e@ o      �K�K 0 	thescript  > OPO l PP�JQR�J  Q O Iset thescript to "/Users/iain/bin/remove-spaces \"" & fixpath & "*.jpg\""   R �SS � s e t   t h e s c r i p t   t o   " / U s e r s / i a i n / b i n / r e m o v e - s p a c e s   \ " "   &   f i x p a t h   &   " * . j p g \ " "P T�IT I PW�HU�G
�H .sysoexecTEXT���     TEXTU o  PS�F�F 0 	thescript  �G  �I  �N 0 fixpath  ; o  +.�E�E 0 fixpaths  9 VWV l ]]�D�C�B�D  �C  �B  W XYX r  ]jZ[Z b  ]f\]\ b  ]b^_^ m  ]``` �aa < / U s e r s / i a i n / b i n / a d d - w a t e r m a r k  _ o  `a�A�A 0 
mediumpath 
mediumPath] m  bebb �cc  / * . j p g  [ o      �@�@ 0 	thescript  Y ded I kr�?f�>
�? .ascrcmnt****      � ****f o  kn�=�= 0 	thescript  �>  e ghg I sz�<i�;
�< .sysoexecTEXT���     TEXTi o  sv�:�: 0 	thescript  �;  h jkj l {{�9�8�7�9  �8  �7  k lml r  {�non b  {�pqp m  {~rr �ss D / U s e r s / i a i n / b i n / b u i l d - s a m p l e - p a g e  q o  ~�6�6 0 publishedpath PublishedPatho o      �5�5 0 	thescript  m tut I ���4v�3
�4 .ascrcmnt****      � ****v o  ���2�2 0 	thescript  �3  u wxw I ���1y�0
�1 .sysoexecTEXT���     TEXTy o  ���/�/ 0 	thescript  �0  x z�.z l ���-�,�+�-  �,  �+  �.  	 m   � ��*�* m   � �{{�                                                                                  fstp  alis    P  
Subversion                 �1ubH+     OAperture.app                                                    
�p��        ����  	                Applications    �1�      �~�Z       O  %Subversion:Applications: Aperture.app     A p e r t u r e . a p p   
 S u b v e r s i o n  Applications/Aperture.app   / ��  �j  �i  �k       �)|}~�)  | �(�'�( 0 
fileexists 
fileExists
�' .aevtoappnull  �   � ****} �& �%�$��#�& 0 
fileexists 
fileExists�% �"��" �  �!�! 0 	posixpath 	posixPath�$   � ���  0 	posixpath 	posixPath� 0 	thescript  � 0 	returnval  �   ����
� .sysoexecTEXT���     TEXT
� 
long
� 
bool
� .ascrcmnt****      � ****�# �%�%E�O�j �&�&E�O�j O�~ �������
� .aevtoappnull  �   � ****� k    ���  *��  U��  ^��  b��  k��  ���  ���  ���  ���  ���  ���  ���  ��� ��  �  �  � �� 0 fixpath  � 1 R�������� \� i�
 r�	 ��� � ��� � � � � � ������ ������!&������IKM`br
� 
sele� 
0 cursel  
� 
cobj� 0 firstpic  
� 
rkpt
� 
pnam� 
0 prname  
� .ascrcmnt****      � ****� 0 publishedpath PublishedPath�
 0 
mediumpath 
mediumPath�	 0 
thumbspath 
thumbsPath� 0 jpg  � 0 
fileexists 
fileExists� 0 	thescript  
� .sysoexecTEXT���     TEXT�
� 
nmfi
� 
rknp
� 
faal
�  
rkes
�� 
insh�� 
�� .rkstrkxpnull���     ****�� 0 fixpaths  
�� 
kocl
�� .corecnte****       ****��� !*�,E�O��k/E�O� *�,�,E�O�j UUO��%E�O�j O��%E�O��%E�O��%E` O)_ k+  "a �%a %E` O_ j O_ j Y hO�a %E` O)_ k+  "a �%a %E` O_ j O_ j Y hOa �%E` O_ j Oa �%a %�%E` O_ j O� �a n�a *a a /a  *a !a "/a #�a $ %O�a *a a &/a  *a !a '/a #�a $ %O��lvE` (O 3_ ([a )�l *kh  a +�%a ,%�%a -%E` O_ j [OY��Oa .�%a /%E` O_ j O_ j Oa 0�%E` O_ j O_ j OPoU ascr  ��ޭ