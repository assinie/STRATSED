; da65 V2.18 - Git 28584b31
; Created:    2020-02-03 20:05:54
; Input file: original/stratsed.bin
; Page:       1


        .setcpu "6502"

; ----------------------------------------------------------------------------
RES             := $0000
RESB            := $0002
DECDEB          := $0004                        ; Paramètres pour décalage
DECFIN          := $0006                        ; Paramètres pour décalage
DECCIB          := $0008                        ; Paramètres pour décalage
DECTRV          := $000A                        ; Paramètres pour décalage
TR0             := $000C                        ; Travail, utilisation par HyperBasic à déterminer
TR1             := $000D                        ; Travail, utilisation par HyperBasic à déterminer
TR2             := $000E                        ; Travail, utilisation par HyperBasic à déterminer
TR3             := $000F                        ; Travail, utilisation par HyperBasic à déterminer
TR4             := $0010                        ; Travail, utilisation par HyperBasic à déterminer
TR5             := $0011                        ; Travail, utilisation par HyperBasic à déterminer
TR6             := $0012                        ; Travail, utilisation par HyperBasic à déterminer
TR7             := $0013                        ; Travail, utilisation par HyperBasic à déterminer
DEFAFF          := $0014                        ; Caractère à afficher par défaut lors de conversion décimale (justification)
IRQSVA          := $0021                        ; Sauvegarde des registres en entrée d'IRQ
IRQSVX          := $0022                        ; Sauvegarde des registres en entrée d'IRQ
IRQSVY          := $0023                        ; Sauvegarde des registres en entrée d'IRQ
P0024           := $0024                        ; ??? Indiqués comme non utilisés
ADSCR           := $0026                        ; Adresse début de la ligne courante écran
SCRNB           := $0028                        ; Numéro de la fenêtre courante
ADVDT           := $002C                        ; Adresse écran HIRES
ADASC           := $002E                        ; Adresse table ASCII
ADATR           := $0030                        ; Adresse table des couleurs
VDTPAR          := $0032                        ; Travail VDT (b7: attribut G0, b6-b4: G0-G1 couleur de fond, b2: G0 soulignage)
VDTASC          := $0033                        ; Travail VDT (b7: délimiteur, b6: G1 disjoint/non disjoint, b5-b0: motif G1)
VDTATR          := $0034                        ; Travail VDT (b7: , b6: , b5: , b4: , b3: , b2-b0:)
VDTFT           := $0035                        ; Travail VDT (b7: SS2, b6: SEP)
VDTTR0          := $0036                        ; Travail VDT
VDTX            := $0038                        ; Coordonnée écran (G0-G1) colonne
VDTY            := $0039                        ; Coordonnée écran (G0-G1) ligne
VDTGX           := $003A                        ; Position code graphiqe G1: 0-1 colonne
VDTGY           := $003B                        ; Position code graphiqe G1: 0-1 colonne
FLGVD0          := $003C                        ; b7: séquence en cours, b6: ESC, b4: US, b3: REP, b1-b0: nb caractères de la séquence
FLGVD1          := $003D                        ; b7: curseur on, b6: mode graphique, b1: mode trace/efface graphique, b0:
TIMEUS          := $0042                        ; Timer 16 bits utilisateur (secondes)
TIMEUD          := $0044                        ; Timer 16 bits utilisateur (1/10 secondes)
TD0             := $004D                        ; Travail DOS (HRS1)
TD1             := $004E                        ; Travail DOS (HRS1+1)
TD2             := $004F                        ; Travail DOS (HRS2)
TD3             := $0050                        ; Travail DOS (HRS2+1)
TD4             := $0051                        ; Travail DOS (HRS3)
TD5             := $0052                        ; Travail DOS (HRS3+1)
TD6             := $0053                        ; Travail DOS (HRS4)
TD7             := $0054                        ; Travail DOS (HRS4+1)
INDIC0          := $0055                        ; Travail DOS (HRS5)
INDIC1          := $0056                        ; Travail DOS (HRS5+1)
INDIC2          := $0057                        ; Travail DOS (HRSFB)
ACC1E           := $0060                        ; Accumulateur 1: Expossant
ACC1M           := $0061                        ; Accumulateur 1: Mantise
ACC1S           := $0065                        ; Accumulateur 1: Signe
ACC1E           := $0066                        ; Accumulateur 1: Extension (b7)
ACC1J           := $0067                        ; Accumulateur 1: Indicateur vour conversion décimale
ACC2E           := $0068                        ; Accumulateur 2: Expossant
ACC2M           := $0069                        ; Accumulateur 2: Mantise
ACC2S           := $006D                        ; Accumulateur 2: Signe
ACCPS           := $006E                        ; Produit des signes (ACC1S EOR ACC2S)
ACC3            := $006F                        ; Accumulateur 3
ACC4E           := $0073                        ; Accumulateur 4: Expossant
ACC2M           := $0074                        ; Accumulateur 4: Mantise
ACC5E           := $0078                        ; Accumulateur 5: Expossant
ACC5M           := $0079                        ; Accumulateur 5: Mantise
ACC6            := $0080                        ; Accu 6
VARLNG          := $008C                        ; Variables systèmes (langage)
VARAPL          := $00D0                        ; Variables systèmes (application)
BUFTRV          := $0100
L0180           := $0180
BNKST           := $0200                        ; Valeur des octets $FFFB de chaque banque
TABDRV          := $0208                        ; Activation des lecteurs
DRVDEF          := $020C                        ; Numéro (0-3) du lecteur par défaut
FLGTEL          := $020D                        ; b7:1-> haute résolution, b6:1-> mode minitel, b5:1-> mode degrés (0->radian), b2:1->BONJOUR.COM existe, b1:1->imprimante CENTRONICS détectée, b0:1-> STRATSED absent
TIMES           := $0211                        ; Horloge: secondes
TIMEM           := $0212                        ; Horloge: minutes
TIMEH           := $0213                        ; Horloge: heures
SCRX            := $0220                        ; Coordonnée X pour chaque fenêtre
SCRY            := $0224                        ; Coordonnée Y
SCRDX           := $0228                        ; Début de la fenêtre
SCRFX           := $022C                        ; Fin de la fenêtre
SCRDY           := $0230                        ; Début de la fenêtre
SCRFY           := $0234                        ; Fin de la fenêtre
FLGSCR          := $0248                        ; b7: curseur visible, b6: curseur fixe, b5: video inverse, b4: 38 colonnes, b3: prochain code ESC+xx, b2: sequende US en cours, b1: douvle hauteur, b0: compteur US
CURSCR          := $024C                        ; Caractère sous le curseur
FLGKBD          := $0275                        ; b7: majuscules, b6: bip clavier, b5: ESC=CTRL+T, b2-b1; langue (00: QWERTY, 01: AZERTY, 10: FRENCH), b0:1 gerer les touches de fonctions
KBDSHT          := $0278                        ; b7: CTRL, b6: FUNCT, b5: Joystick Gauche, b3: souris, b0; SHIFT
KBDCTC          := $027E                        ; b7:1 Ctrl+C
LPRFX           := $0288                        ; Largeur d'impression
JCKTAB          := $029D                        ; Table des valeurs renvoyées par la souris ou le joystick
VNMI            := $02F4                        ; Vecteur NMI (n° de banque, adresse)
VIRQ            := $02FA                        ; Vecteur IRQ
VAPLIC          := $02FD                        ; N° banque, adresse TELEMATIC->LANGAGE
V1DRB           := $0300
V1DRA           := $0301
V1DDRB          := $0302
V1DDRA          := $0303
V1T1            := $0304
V1T1L           := $0306
V1T2            := $0308
V1SR            := $030A
V1ACR           := $030B
V1PCR           := $030C
V1IFR           := $030D
V1ER            := $030E
V1DRAB          := $030F
FDCCR           := $0310
FDCTR           := $0311
FDCSR           := $0312
FDCDR           := $0313
CDRIVE          := $0314
FDCRQ           := $0318
ACIADR          := $031C                        ; ACIA Registre de Données
ACIASR          := $031D                        ; ACIA Registre d'état
ACIACR          := $031E                        ; ACIA Registre de Commande
ACIACT          := $031F                        ; ACIA Registre de Controle
V2DRB           := $0320
V2DRA           := $0321
V2DDRB          := $0322
V2DDRA          := $0323
V2T1            := $0324
V2T1L           := $0326
V2T2            := $0328
V2SR            := $032A
V2ACR           := $032B
V2PCR           := $032C
V2IFR           := $032D
V2ER            := $032E
V2DRAB          := $032F
EXBNK           := $040C
VEXBNK          := $0414
BNKCID          := $0417
DRIVE           := $0500                        ; N° de lecteur
TRACK           := $0501                        ; N° de piste
SECTOR          := $0502                        ; N° de secteur
RWBUF           := $0503                        ; Sector buffer
ERRFDC          := $050E
ERRFLG          := $050F                        ; Autorisation erreur
ERRVEC          := $0510                        ; Adresse de gestion des erreurs (LD618 ou LFE76)
ERRNB           := $0512                        ; Erreur Stratsed
SAVES           := $0513
POSNMP          := $0514                        ; Piste position d'un nom dans le catalogue
POSNMS          := $0515                        ; Secteur position d'un nom dans le catalogue
POSNMX          := $0516                        ; Index position d'un nom dans le catalogue
BUFNOM          := $0517                        ; Nom de fichier (drive+nom+extension)
VASALO0         := $0528                        ; Flag lecture/écriture
VASALO1         := $0529                        ; Flag lecture/écriture
LOSALO          := $052A
FTYPE           := $052C                        ; Type du fichier
DESALO          := $052D                        ; Adresse de début du fichier
FISALO          := $052F                        ; Adresse de fin du fichier
EXSALO          := $0531                        ; Adresse d'exécution
LOCRE           := $0533
LOCREB          := $0535
DECREP          := $0537
DECRES          := $0538
NBCRE           := $0539
VCRE0           := $053A
BUFC0           := $053B
TAMPFC          := $0542                        ; Adresse de début des tampons fichier (initialisé à DOSBUFFERS par STARTUP)
BITMFC          := $0544                        ; (word) BitMap des tampons logiques (même convention que la BitMap disquette, 0->occupé, 1->libre))
INDFCB          := $0546                        ; Index dans la liste des secteurs de FCB du secteur FCB courant
FICTYP          := $0547                        ; Type du fichier (00: séquentiel, $80: direct)
FICNUM          := $0548                        ; Numéro logique du fichier (1 ou 2)
NBFIC           := $0549                        ; Nombre de fichiers autorisés par FILE
FICLON          := $054A                        ; Longueur du fichier
XFIELD          := $054C                        ; Pour fichier accès direct: xfield=n° de banque, xfield+1=adresse
RWTS            := $054F                        ; Vecteur de détournement RWTS
BUFEDT          := $0590                        ; Buffer Editeur de Texte
TLMCAL          := $07EA                        ; Call Telemon (BRK xx RTS ou JSR $BFE0)
VARBOT          := $07FD                        ; Adresse de début des variables (Hyperbasic)
PROGRM          := $0800                        ; Zone programme
BUFTXT          := $8000                        ; Buffer code VIDEOTEX (3ko maxi)
BVDTAS          := $9000                        ; Buffer attributs VDT
BVDTAT          := $9400                        ; Buffer couleur VDT
VDTDES          := $9C00                        ; Travail et conversion G2
TABDBH          := $9C80                        ; Buffer double hauteur VIDEOTEX (taille inconnue)
PAGE            := $9CC0                        ; Buffer pour le nom de la page actuelle (variable PAGE$ basic)
; ----------------------------------------------------------------------------
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C000 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C008 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C010 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00         ; C018 00 00 00 00 00 00
LC01E:
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C01E 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C026 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C02E 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C036 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C03E 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C046 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C04E 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C056 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C05E 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C066 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C06E 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C076 00 00 00 00 00 00 00 00
        .byte   $00                             ; C07E 00
LC07F:
        .byte   $00                             ; C07F 00
; ----------------------------------------------------------------------------
; Définition des buffers
BUFBUF:
        .addr   KBDBU                           ; C080 C4 C5
        .addr   RSEBU                           ; C082 80 C6
        .addr   LC60D                           ; C084 0D C6
        .addr   LC60D                           ; C086 0D C6
        .addr   RES                             ; C088 00 00
        .addr   VARLNG+48                       ; C08A BC 00
        .addr   RSEBU                           ; C08C 80 C6
        .addr   RSSBU                           ; C08E 00 C8
        .addr   RSSBU                           ; C090 00 C8
        .addr   RSSBU                           ; C092 00 C8
        .addr   RES                             ; C094 00 00
        .addr   L0180                           ; C096 80 01
        .addr   RSSBU                           ; C098 00 C8
        .addr   LPRBU                           ; C09A 00 CA
        .addr   LC804                           ; C09C 04 C8
        .addr   LPRBU                           ; C09E 00 CA
        .addr   DECDEB+1                        ; C0A0 05 00
        .addr   BNKST                           ; C0A2 00 02
        .addr   LPRBU                           ; C0A4 00 CA
        .addr   TD200                           ; C0A6 00 D2
        .addr   TD200                           ; C0A8 00 D2
        .addr   TD200                           ; C0AA 00 D2
        .addr   RES                             ; C0AC 00 00
        .addr   PROGRM                          ; C0AE 00 08
; ----------------------------------------------------------------------------
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C0B0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C0B8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C0C0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C0C8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C0D0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C0D8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C0E0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C0E8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C0F0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C0F8 FF FF FF FF FF FF FF FF
BUF1:
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C100 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C108 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C110 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C118 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C120 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C128 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C130 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C138 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C140 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C148 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C150 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C158 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C160 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C168 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C170 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C178 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C180 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C188 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C190 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C198 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C1A0 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C1A8 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C1B0 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C1B8 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C1C0 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C1C8 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C1D0 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C1D8 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C1E0 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C1E8 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C1F0 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C1F8 00 00 00 00 00 00 00 00
; Buffer BITMAP
BUF2:
        .byte   $FF,$00,$4E,$0A,$01,$00,$50,$11 ; C200 FF 00 4E 0A 01 00 50 11
        .byte   $01,$D0,$00,$00,$00,$00,$00,$00 ; C208 01 D0 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$FC,$FF ; C210 00 00 00 00 00 00 FC FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C218 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C220 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C228 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C230 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$0F,$00,$10,$00,$E0,$FF ; C238 FF FF 0F 00 10 00 E0 FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C240 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C248 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C250 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C258 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C260 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C268 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C270 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C278 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C280 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C288 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C290 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C298 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C2A0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C2A8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C2B0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C2B8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C2C0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C2C8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C2D0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C2D8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C2E0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C2E8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C2F0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C2F8 FF FF FF FF FF FF FF FF
; Buffer BITMAP
BUF2b:
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C300 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C308 00 00 00 00 00 00 00 00
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C310 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C318 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C320 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C328 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C330 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C338 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C340 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C348 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C350 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C358 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C360 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C368 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C370 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C378 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C380 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C388 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C390 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C398 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C3A0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C3A8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C3B0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C3B8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C3C0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C3C8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C3D0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C3D8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C3E0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C3E8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C3F0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C3F8 FF FF FF FF FF FF FF FF
; ----------------------------------------------------------------------------
; Buffer catalogue
BUF3:
        .byte   $00,$00                         ; C400 00 00
        .byte   " "                             ; C402 20
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C403 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00             ; C40B 00 00 00 00 00
        .byte   "TEST     DAT"                  ; C410 54 45 53 54 20 20 20 20
                                                ; C418 20 44 41 54
        .byte   $02,$0C,$05                     ; C41C 02 0C 05
        .byte   "@"                             ; C41F 40
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C420 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C428 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C430 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C438 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C440 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C448 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C450 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C458 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C460 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C468 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C470 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C478 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C480 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C488 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C490 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C498 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C4A0 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C4A8 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C4B0 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C4B8 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C4C0 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C4C8 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C4D0 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C4D8 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C4E0 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C4E8 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C4F0 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C4F8 00 00 00 00 00 00 00 00
; ----------------------------------------------------------------------------
; Routines de gestion des buffers
BUFROU:
        bcc     LC54E                           ; C500 90 4C
        bvc     LC513                           ; C502 50 0F
        tay                                     ; C504 A8
        beq     LC533                           ; C505 F0 2C
LC507:
        lda     BUFBUF+8,x                      ; C507 BD 88 C0
        ora     BUFBUF+8+1,x                    ; C50A 1D 89 C0
        beq     LC511                           ; C50D F0 02
        clc                                     ; C50F 18
        rts                                     ; C510 60

; ----------------------------------------------------------------------------
LC511:
        sec                                     ; C511 38
        rts                                     ; C512 60

; ----------------------------------------------------------------------------
LC513:
        sta     RESB                            ; C513 85 02
        sty     RESB+1                          ; C515 84 03
        sec                                     ; C517 38
        sbc     RES                             ; C518 E5 00
        sta     BUFBUF+8+1+1,x                  ; C51A 9D 8A C0
        tya                                     ; C51D 98
        sbc     RES+1                           ; C51E E5 01
        sta     BUFBUF+8+1+1+1,x                ; C520 9D 8B C0
        txa                                     ; C523 8A
        adc     #$03                            ; C524 69 03
        tax                                     ; C526 AA
        ldy     #$03                            ; C527 A0 03
LC529:
        lda     RES,y                           ; C529 B9 00 00
        sta     LC07F,x                         ; C52C 9D 7F C0
        dex                                     ; C52F CA
        dey                                     ; C530 88
        bpl     LC529                           ; C531 10 F6
LC533:
        lda     #$00                            ; C533 A9 00
        sta     BUFBUF+8,x                      ; C535 9D 88 C0
        sta     BUFBUF+8+1,x                    ; C538 9D 89 C0
        lda     BUFBUF+2,x                      ; C53B BD 82 C0
        sta     BUFBUF+2+2,x                    ; C53E 9D 84 C0
        sta     BUFBUF+2+2+2,x                  ; C541 9D 86 C0
        lda     BUFBUF+2+1,x                    ; C544 BD 83 C0
        sta     BUFBUF+2+2+1,x                  ; C547 9D 85 C0
        sta     BUFBUF+2+2+2+1,x                ; C54A 9D 87 C0
        rts                                     ; C54D 60

; ----------------------------------------------------------------------------
LC54E:
        bvs     LC576                           ; C54E 70 26
        jsr     LC507                           ; C550 20 07 C5
        bcs     LC575                           ; C553 B0 20
        lda     BUFBUF+2+2+2,x                  ; C555 BD 86 C0
        ldy     BUFBUF+2+2+2+1,x                ; C558 BC 87 C0
        jsr     LC5A6                           ; C55B 20 A6 C5
        sta     BUFBUF+2+2+2,x                  ; C55E 9D 86 C0
        tya                                     ; C561 98
        sta     BUFBUF+2+2+2+1,x                ; C562 9D 87 C0
        lda     BUFBUF+8,x                      ; C565 BD 88 C0
        bne     LC56D                           ; C568 D0 03
        dec     BUFBUF+8+1,x                    ; C56A DE 89 C0
LC56D:
        dec     BUFBUF+8,x                      ; C56D DE 88 C0
        ldy     #$00                            ; C570 A0 00
        lda     (P0024),y                       ; C572 B1 24
        clc                                     ; C574 18
LC575:
        rts                                     ; C575 60

; ----------------------------------------------------------------------------
LC576:
        pha                                     ; C576 48
        lda     BUFBUF+8,x                      ; C577 BD 88 C0
        cmp     BUFBUF+8+1+1,x                  ; C57A DD 8A C0
        lda     BUFBUF+8+1,x                    ; C57D BD 89 C0
        sbc     BUFBUF+8+1+1+1,x                ; C580 FD 8B C0
        bcs     LC5A4                           ; C583 B0 1F
        lda     BUFBUF+2+2,x                    ; C585 BD 84 C0
        ldy     BUFBUF+2+2+1,x                  ; C588 BC 85 C0
        jsr     LC5A6                           ; C58B 20 A6 C5
        sta     BUFBUF+2+2,x                    ; C58E 9D 84 C0
        tya                                     ; C591 98
        sta     BUFBUF+2+2+1,x                  ; C592 9D 85 C0
        inc     BUFBUF+8,x                      ; C595 FE 88 C0
        bne     LC59D                           ; C598 D0 03
        inc     BUFBUF+8+1,x                    ; C59A FE 89 C0
LC59D:
        ldy     #$00                            ; C59D A0 00
        pla                                     ; C59F 68
        sta     (P0024),y                       ; C5A0 91 24
        clc                                     ; C5A2 18
        rts                                     ; C5A3 60

; ----------------------------------------------------------------------------
LC5A4:
        pla                                     ; C5A4 68
        rts                                     ; C5A5 60

; ----------------------------------------------------------------------------
LC5A6:
        clc                                     ; C5A6 18
        adc     #$01                            ; C5A7 69 01
        bcc     LC5AC                           ; C5A9 90 01
        iny                                     ; C5AB C8
LC5AC:
        cmp     BUFBUF+2,x                      ; C5AC DD 82 C0
        sta     P0024                           ; C5AF 85 24
        tya                                     ; C5B1 98
        sbc     BUFBUF+2+1,x                    ; C5B2 FD 83 C0
        bcc     LC5BF                           ; C5B5 90 08
        lda     BUFBUF,x                        ; C5B7 BD 80 C0
        ldy     BUFBUF+1,x                      ; C5BA BC 81 C0
        sta     P0024                           ; C5BD 85 24
LC5BF:
        sty     P0024+1                         ; C5BF 84 25
        lda     P0024                           ; C5C1 A5 24
        rts                                     ; C5C3 60

; ----------------------------------------------------------------------------
; Buffer clavier
KBDBU:
        .byte   $32,$00,$31,$00,$44,$00,$49,$00 ; C5C4 32 00 31 00 44 00 49 00
        .byte   $52,$00,$0D,$00,$44,$00,$49,$00 ; C5CC 52 00 0D 00 44 00 49 00
        .byte   $52,$00,$0D,$00,$44,$00,$49,$00 ; C5D4 52 00 0D 00 44 00 49 00
        .byte   $52,$00,$0D,$00,$44,$00,$49,$00 ; C5DC 52 00 0D 00 44 00 49 00
        .byte   $52,$00,$0D,$00,$31,$00,$30,$00 ; C5E4 52 00 0D 00 31 00 30 00
        .byte   $20,$00,$44,$00,$49,$00,$52,$00 ; C5EC 20 00 44 00 49 00 52 00
        .byte   $0D,$00,$52,$00,$55,$00,$4E,$00 ; C5F4 0D 00 52 00 55 00 4E 00
        .byte   $0D,$00,$44,$00,$49,$00,$52,$00 ; C5FC 0D 00 44 00 49 00 52 00
        .byte   $0D,$00,$52,$00,$55,$00,$4E,$00 ; C604 0D 00 52 00 55 00 4E 00
        .byte   $0D                             ; C60C 0D
LC60D:
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C60D 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C615 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C61D 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C625 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C62D 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C635 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C63D 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C645 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C64D 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C655 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C65D 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C665 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C66D 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C675 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00                     ; C67D 00 00 00
; Buffer RS232 (entrée)
RSEBU:
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C680 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C688 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C690 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C698 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C6A0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C6A8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C6B0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C6B8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C6C0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C6C8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C6D0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C6D8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C6E0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C6E8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C6F0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C6F8 FF FF FF FF FF FF FF FF
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C700 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C708 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C710 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C718 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C720 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C728 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C730 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C738 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C740 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C748 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C750 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C758 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C760 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C768 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C770 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C778 00 00 00 00 00 00 00 00
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C780 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C788 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C790 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C798 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C7A0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C7A8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C7B0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C7B8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C7C0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C7C8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C7D0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C7D8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C7E0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C7E8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C7F0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C7F8 FF FF FF FF FF FF FF FF
; Buffer RS232 (sortie)
RSSBU:
        .byte   $1B,$3A,$6A,$43                 ; C800 1B 3A 6A 43
LC804:
        .byte   $14,$00,$00,$00,$00,$00,$00,$00 ; C804 14 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C80C 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C814 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C81C 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C824 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C82C 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C834 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C83C 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C844 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C84C 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C854 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C85C 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C864 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C86C 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C874 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$FF,$FF,$FF,$FF ; C87C 00 00 00 00 FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C884 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C88C FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C894 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C89C FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C8A4 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C8AC FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C8B4 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C8BC FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C8C4 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C8CC FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C8D4 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C8DC FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C8E4 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C8EC FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C8F4 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$00,$00,$00,$00 ; C8FC FF FF FF FF 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C904 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C90C 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C914 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C91C 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C924 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C92C 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C934 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C93C 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C944 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C94C 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C954 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C95C 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C964 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C96C 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; C974 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$FF,$FF,$FF,$FF ; C97C 00 00 00 00 FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C984 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C98C FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C994 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C99C FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C9A4 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C9AC FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C9B4 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C9BC FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C9C4 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C9CC FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C9D4 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C9DC FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C9E4 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C9EC FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; C9F4 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF                 ; C9FC FF FF FF FF
; Buffer imprimante
LPRBU:
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CA00 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CA08 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CA10 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CA18 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CA20 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CA28 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CA30 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CA38 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CA40 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CA48 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CA50 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CA58 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CA60 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CA68 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CA70 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CA78 00 00 00 00 00 00 00 00
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CA80 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CA88 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CA90 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CA98 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CAA0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CAA8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CAB0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CAB8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CAC0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CAC8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CAD0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CAD8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CAE0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CAE8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CAF0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CAF8 FF FF FF FF FF FF FF FF
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CB00 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CB08 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CB10 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CB18 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CB20 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CB28 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CB30 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CB38 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CB40 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CB48 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CB50 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CB58 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CB60 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CB68 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CB70 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CB78 00 00 00 00 00 00 00 00
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CB80 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CB88 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CB90 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CB98 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CBA0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CBA8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CBB0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CBB8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CBC0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CBC8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CBD0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CBD8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CBE0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CBE8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CBF0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CBF8 FF FF FF FF FF FF FF FF
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CC00 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CC08 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CC10 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CC18 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CC20 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CC28 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CC30 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CC38 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CC40 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CC48 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CC50 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CC58 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CC60 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CC68 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CC70 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CC78 00 00 00 00 00 00 00 00
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CC80 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CC88 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CC90 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CC98 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CCA0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CCA8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CCB0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CCB8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CCC0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CCC8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CCD0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CCD8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CCE0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CCE8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CCF0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CCF8 FF FF FF FF FF FF FF FF
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CD00 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CD08 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CD10 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CD18 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CD20 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CD28 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CD30 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CD38 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CD40 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CD48 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CD50 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CD58 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CD60 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CD68 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CD70 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CD78 00 00 00 00 00 00 00 00
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CD80 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CD88 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CD90 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CD98 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CDA0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CDA8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CDB0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CDB8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CDC0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CDC8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CDD0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CDD8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CDE0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CDE8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CDF0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CDF8 FF FF FF FF FF FF FF FF
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CE00 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CE08 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CE10 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CE18 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CE20 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CE28 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CE30 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CE38 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CE40 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CE48 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CE50 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CE58 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CE60 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CE68 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CE70 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CE78 00 00 00 00 00 00 00 00
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CE80 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CE88 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CE90 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CE98 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CEA0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CEA8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CEB0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CEB8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CEC0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CEC8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CED0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CED8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CEE0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CEE8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CEF0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CEF8 FF FF FF FF FF FF FF FF
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CF00 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CF08 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CF10 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CF18 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CF20 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CF28 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CF30 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CF38 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CF40 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CF48 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CF50 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CF58 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CF60 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CF68 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CF70 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CF78 00 00 00 00 00 00 00 00
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CF80 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CF88 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CF90 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CF98 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CFA0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CFA8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CFB0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CFB8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CFC0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CFC8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CFD0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CFD8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CFE0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CFE8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CFF0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; CFF8 FF FF FF FF FF FF FF FF
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; D000 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; D008 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; D010 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; D018 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; D020 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; D028 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; D030 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; D038 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; D040 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; D048 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; D050 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; D058 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; D060 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; D068 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; D070 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; D078 00 00 00 00 00 00 00 00
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D080 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D088 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D090 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D098 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D0A0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D0A8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D0B0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D0B8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D0C0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D0C8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D0D0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D0D8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D0E0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D0E8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D0F0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D0F8 FF FF FF FF FF FF FF FF
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; D100 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; D108 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; D110 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; D118 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; D120 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; D128 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; D130 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; D138 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; D140 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; D148 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; D150 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; D158 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; D160 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; D168 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; D170 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; D178 00 00 00 00 00 00 00 00
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D180 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D188 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D190 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D198 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D1A0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D1A8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D1B0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D1B8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D1C0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D1C8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D1D0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D1D8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D1E0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D1E8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D1F0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D1F8 FF FF FF FF FF FF FF FF
TD200:
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; D200 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; D208 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; D210 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; D218 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; D220 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; D228 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; D230 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; D238 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; D240 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; D248 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; D250 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; D258 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; D260 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; D268 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; D270 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; D278 00 00 00 00 00 00 00 00
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D280 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D288 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D290 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D298 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D2A0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D2A8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D2B0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D2B8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D2C0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D2C8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D2D0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D2D8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D2E0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D2E8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D2F0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D2F8 FF FF FF FF FF FF FF FF
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; D300 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; D308 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; D310 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; D318 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; D320 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; D328 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; D330 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; D338 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; D340 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; D348 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; D350 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; D358 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; D360 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; D368 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; D370 00 00 00 00 00 00 00 00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; D378 00 00 00 00 00 00 00 00
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D380 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D388 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D390 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D398 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D3A0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D3A8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D3B0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D3B8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D3C0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D3C8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D3D0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D3D8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D3E0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D3E8 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D3F0 FF FF FF FF FF FF FF FF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D3F8 FF FF FF FF FF FF FF FF
; ----------------------------------------------------------------------------
; Routine de gestion des RWTS
_RWTS:
        tya                                     ; D400 98
        pha                                     ; D401 48
        php                                     ; D402 08
LD403:
        lda     V1ER                            ; D403 AD 0E 03
        pha                                     ; D406 48
        lda     V2ER                            ; D407 AD 2E 03
        pha                                     ; D40A 48
        lda     ACIACR                          ; D40B AD 1E 03
        pha                                     ; D40E 48
        and     #$F3                            ; D40F 29 F3
        ora     #$02                            ; D411 09 02
        sta     ACIACR                          ; D413 8D 1E 03
        lda     #$7F                            ; D416 A9 7F
        sta     V1ER                            ; D418 8D 0E 03
        sta     V2ER                            ; D41B 8D 2E 03
        jsr     LD4DA                           ; D41E 20 DA D4
        pla                                     ; D421 68
        sta     ACIACR                          ; D422 8D 1E 03
        pla                                     ; D425 68
        sta     V2ER                            ; D426 8D 2E 03
        pla                                     ; D429 68
        sta     V1ER                            ; D42A 8D 0E 03
        bit     ERRFLG                          ; D42D 2C 0F 05
        bmi     LD437                           ; D430 30 05
        lda     ERRFDC                          ; D432 AD 0E 05
        bne     LD43A                           ; D435 D0 03
LD437:
        jmp     LD4D1                           ; D437 4C D1 D4

; ----------------------------------------------------------------------------
LD43A:
        cli                                     ; D43A 58
        ldx     #$00                            ; D43B A2 00
        _XCSSCR                                 ; D43D 00 35
        pha                                     ; D43F 48
        lda     #$CD                            ; D440 A9 CD
        ldy     #$D9                            ; D442 A0 D9
        _XWSTR0                                 ; D444 00 14
        pla                                     ; D446 68
        and     #$40                            ; D447 29 40
        bne     LD49E                           ; D449 D0 53
        lda     RWBUF+2                         ; D44B AD 05 05
        and     #$20                            ; D44E 29 20
        beq     LD458                           ; D450 F0 06
        lda     #$E8                            ; D452 A9 E8
        ldy     #$D9                            ; D454 A0 D9
        bne     LD45C                           ; D456 D0 04
LD458:
        lda     #$D8                            ; D458 A9 D8
        ldy     #$D9                            ; D45A A0 D9
LD45C:
        _XWSTR0                                 ; D45C 00 14
        lda     ERRFDC                          ; D45E AD 0E 05
        jsr     LDE45                           ; D461 20 45 DE
        lda     #$F8                            ; D464 A9 F8
        ldy     #$D9                            ; D466 A0 D9
        _XWSTR0                                 ; D468 00 14
        jsr     LD954                           ; D46A 20 54 D9
        lda     #$02                            ; D46D A9 02
        ldy     #$DA                            ; D46F A0 DA
        _XWSTR0                                 ; D471 00 14
        lda     #$30                            ; D473 A9 30
        sta     DEFAFF                          ; D475 85 14
        lda     TRACK                           ; D477 AD 01 05
        pha                                     ; D47A 48
        and     #$80                            ; D47B 29 80
        rol     a                               ; D47D 2A
        rol     a                               ; D47E 2A
        adc     #$30                            ; D47F 69 30
        _XWR0                                   ; D481 00 10
        lda     #$09                            ; D483 A9 09
        ldy     #$DA                            ; D485 A0 DA
        _XWSTR0                                 ; D487 00 14
        pla                                     ; D489 68
        and     #$7F                            ; D48A 29 7F
        jsr     LD94D                           ; D48C 20 4D D9
        lda     #$11                            ; D48F A9 11
        ldy     #$DA                            ; D491 A0 DA
        _XWSTR0                                 ; D493 00 14
        lda     SECTOR                          ; D495 AD 02 05
        jsr     LD94D                           ; D498 20 4D D9
        jmp     LD4A4                           ; D49B 4C A4 D4

; ----------------------------------------------------------------------------
LD49E:
        lda     #$1B                            ; D49E A9 1B
        ldy     #$DA                            ; D4A0 A0 DA
        _XWSTR0                                 ; D4A2 00 14
LD4A4:
        lda     #$2D                            ; D4A4 A9 2D
        ldy     #$DA                            ; D4A6 A0 DA
        _XWSTR0                                 ; D4A8 00 14
LD4AA:
        _XRDW0                                  ; D4AA 00 0C
        and     #$DF                            ; D4AC 29 DF
        cmp     #$52                            ; D4AE C9 52
        bne     LD4BC                           ; D4B0 D0 0A
        _XWR0                                   ; D4B2 00 10
        _XCRLF                                  ; D4B4 00 25
        ldx     RWBUF+2                         ; D4B6 AE 05 05
        jmp     LD403                           ; D4B9 4C 03 D4

; ----------------------------------------------------------------------------
LD4BC:
        cmp     #$41                            ; D4BC C9 41
        beq     LD4CD                           ; D4BE F0 0D
        cmp     #$1B                            ; D4C0 C9 1B
        beq     LD4CF                           ; D4C2 F0 0B
        cmp     #$49                            ; D4C4 C9 49
        bne     LD4AA                           ; D4C6 D0 E2
        ldx     #$00                            ; D4C8 A2 00
        stx     ERRFDC                          ; D4CA 8E 0E 05
LD4CD:
        _XWR0                                   ; D4CD 00 10
LD4CF:
        _XCRLF                                  ; D4CF 00 25
LD4D1:
        plp                                     ; D4D1 28
        pla                                     ; D4D2 68
        tay                                     ; D4D3 A8
        lda     #$FF                            ; D4D4 A9 FF
        bit     ERRFDC                          ; D4D6 2C 0E 05
        rts                                     ; D4D9 60

; ----------------------------------------------------------------------------
LD4DA:
        ldy     #$03                            ; D4DA A0 03
LD4DC:
        sty     RWBUF+3                         ; D4DC 8C 06 05
        ldy     #$08                            ; D4DF A0 08
        sty     RWBUF+4                         ; D4E1 8C 07 05
LD4E4:
        pha                                     ; D4E4 48
        sei                                     ; D4E5 78
        stx     RWBUF+2                         ; D4E6 8E 05 05
LD4E9:
        ldy     DRIVE                           ; D4E9 AC 00 05
        lda     TD61D,y                         ; D4EC B9 1D D6
        bit     TRACK                           ; D4EF 2C 01 05
        bpl     LD4F6                           ; D4F2 10 02
        ora     #$10                            ; D4F4 09 10
LD4F6:
        sta     RWBUF+10                        ; D4F6 8D 0D 05
        lda     RWBUF+6,y                       ; D4F9 B9 09 05
        nop                                     ; D4FC EA
        nop                                     ; D4FD EA
        sta     FDCTR                           ; D4FE 8D 11 03
        lda     RWBUF                           ; D501 AD 03 05
        sta     TD1                             ; D504 85 4E
        lda     RWBUF+1                         ; D506 AD 04 05
        sta     TD2                             ; D509 85 4F
        lda     #$20                            ; D50B A9 20
        bit     RWBUF+2                         ; D50D 2C 05 05
        bpl     LD53C                           ; D510 10 2A
        bvc     LD516                           ; D512 50 02
        beq     LD53C                           ; D514 F0 26
LD516:
        lda     TRACK                           ; D516 AD 01 05
        and     #$7F                            ; D519 29 7F
        nop                                     ; D51B EA
        sta     FDCDR                           ; D51C 8D 13 03
        nop                                     ; D51F EA
        nop                                     ; D520 EA
        nop                                     ; D521 EA
        cmp     FDCTR                           ; D522 CD 11 03
        beq     LD53C                           ; D525 F0 15
        txa                                     ; D527 8A
        ldx     #$18                            ; D528 A2 18
        jsr     LD4E4                           ; D52A 20 E4 D4
        sta     RWBUF+2                         ; D52D 8D 05 05
        ldy     FDCDR                           ; D530 AC 13 03
        ora     #$04                            ; D533 09 04
        tax                                     ; D535 AA
        sty     FDCTR                           ; D536 8C 11 03
        nop                                     ; D539 EA
        nop                                     ; D53A EA
        nop                                     ; D53B EA
LD53C:
        ldy     SECTOR                          ; D53C AC 02 05
        sty     FDCSR                           ; D53F 8C 12 03
        ldy     #$00                            ; D542 A0 00
        txa                                     ; D544 8A
        bmi     LD54A                           ; D545 30 03
LD547:
        dey                                     ; D547 88
        bne     LD547                           ; D548 D0 FD
LD54A:
        lda     RWBUF+10                        ; D54A AD 0D 05
        stx     FDCCR                           ; D54D 8E 10 03
        ora     #$01                            ; D550 09 01
        sta     CDRIVE                          ; D552 8D 14 03
        txa                                     ; D555 8A
        and     #$F0                            ; D556 29 F0
        cmp     #$E0                            ; D558 C9 E0
        cli                                     ; D55A 58
        beq     LD563                           ; D55B F0 06
        and     #$20                            ; D55D 29 20
        bne     LD575                           ; D55F D0 14
        nop                                     ; D561 EA
        nop                                     ; D562 EA
LD563:
        lda     FDCRQ                           ; D563 AD 18 03
        bmi     LD563                           ; D566 30 FB
        lda     FDCDR                           ; D568 AD 13 03
        sta     (TD1),y                         ; D56B 91 4E
        iny                                     ; D56D C8
        bne     LD563                           ; D56E D0 F3
        inc     TD2                             ; D570 E6 4F
        jmp     LD563                           ; D572 4C 63 D5

; ----------------------------------------------------------------------------
LD575:
        lda     FDCRQ                           ; D575 AD 18 03
        bmi     LD575                           ; D578 30 FB
        lda     (TD1),y                         ; D57A B1 4E
        sta     FDCDR                           ; D57C 8D 13 03
        iny                                     ; D57F C8
        bne     LD575                           ; D580 D0 F3
        inc     TD2                             ; D582 E6 4F
        jmp     LD575                           ; D584 4C 75 D5

; ----------------------------------------------------------------------------
        nop                                     ; D587 EA
        nop                                     ; D588 EA
        nop                                     ; D589 EA
LD58A:
        bit     CDRIVE                          ; D58A 2C 14 03
        bpl     LD592                           ; D58D 10 03
        jmp     VIRQ                            ; D58F 4C FA 02

; ----------------------------------------------------------------------------
LD592:
        pla                                     ; D592 68
        pla                                     ; D593 68
        pla                                     ; D594 68
        lda     RWBUF+10                        ; D595 AD 0D 05
        sta     CDRIVE                          ; D598 8D 14 03
        ldy     DRIVE                           ; D59B AC 00 05
        lda     FDCTR                           ; D59E AD 11 03
        sta     RWBUF+6,y                       ; D5A1 99 09 05
        clc                                     ; D5A4 18
        lda     FDCCR                           ; D5A5 AD 10 03
        and     #$5C                            ; D5A8 29 5C
        tay                                     ; D5AA A8
        ldx     RWBUF+2                         ; D5AB AE 05 05
        bmi     LD5B2                           ; D5AE 30 02
        ldy     #$00                            ; D5B0 A0 00
LD5B2:
        sty     ERRFDC                          ; D5B2 8C 0E 05
        and     #$40                            ; D5B5 29 40
        bne     LD5C8                           ; D5B7 D0 0F
        tya                                     ; D5B9 98
        and     #$10                            ; D5BA 29 10
        beq     LD5CB                           ; D5BC F0 0D
        dec     RWBUF+3                         ; D5BE CE 06 05
        beq     LD5C8                           ; D5C1 F0 05
        jsr     LD5D8                           ; D5C3 20 D8 D5
        bcc     LD5D5                           ; D5C6 90 0D
LD5C8:
        sec                                     ; D5C8 38
LD5C9:
        pla                                     ; D5C9 68
        rts                                     ; D5CA 60

; ----------------------------------------------------------------------------
LD5CB:
        tya                                     ; D5CB 98
        and     #$0C                            ; D5CC 29 0C
        beq     LD5C9                           ; D5CE F0 F9
        dec     RWBUF+4                         ; D5D0 CE 07 05
        beq     LD5C8                           ; D5D3 F0 F3
LD5D5:
        jmp     LD4E9                           ; D5D5 4C E9 D4

; ----------------------------------------------------------------------------
LD5D8:
        txa                                     ; D5D8 8A
        pha                                     ; D5D9 48
        lda     RWBUF                           ; D5DA AD 03 05
        pha                                     ; D5DD 48
        lda     RWBUF+1                         ; D5DE AD 04 05
        pha                                     ; D5E1 48
        lda     #$3B                            ; D5E2 A9 3B
        ldy     #$05                            ; D5E4 A0 05
        sta     RWBUF                           ; D5E6 8D 03 05
        sty     RWBUF+1                         ; D5E9 8C 04 05
        lda     RWBUF+3                         ; D5EC AD 06 05
        ldx     #$C0                            ; D5EF A2 C0
        ldy     #$01                            ; D5F1 A0 01
        jsr     LD4DC                           ; D5F3 20 DC D4
        sta     RWBUF+3                         ; D5F6 8D 06 05
        pla                                     ; D5F9 68
        sta     RWBUF+1                         ; D5FA 8D 04 05
        pla                                     ; D5FD 68
        sta     RWBUF                           ; D5FE 8D 03 05
        bcs     LD60C                           ; D601 B0 09
        lda     FDCSR                           ; D603 AD 12 03
        ldy     DRIVE                           ; D606 AC 00 05
        sta     RWBUF+6,y                       ; D609 99 09 05
LD60C:
        pla                                     ; D60C 68
        tax                                     ; D60D AA
        stx     RWBUF+2                         ; D60E 8E 05 05
        rts                                     ; D611 60

; ----------------------------------------------------------------------------
; Génère l'erreur (X)
_XERREU:
        stx     ERRNB                           ; D612 8E 12 05
        jmp     (ERRVEC)                        ; D615 6C 10 05

; ----------------------------------------------------------------------------
        ldx     SAVES                           ; D618 AE 13 05
        txs                                     ; D61B 9A
LD61C:
        rts                                     ; D61C 60

; ----------------------------------------------------------------------------
; Table indexée par DRIVE (utilisée par _RWTS)
TD61D:
        .byte   $84,$A4,$C4,$E4                 ; D61D 84 A4 C4 E4
; ----------------------------------------------------------------------------
; Lit le secteur BITMAP
_XPMAP:
        php                                     ; D621 08
        jsr     LDF1C                           ; D622 20 1C DF
        lda     #$14                            ; D625 A9 14
        ldy     #$02                            ; D627 A0 02
        jsr     LD640                           ; D629 20 40 D6
        iny                                     ; D62C C8
        lda     #$14                            ; D62D A9 14
        jsr     LD643                           ; D62F 20 43 D6
        plp                                     ; D632 28
        ldx     BUF2                            ; D633 AE 00 C2
        inx                                     ; D636 E8
        beq     LD61C                           ; D637 F0 E3
        ldx     #$07                            ; D639 A2 07
        bne     _XERREU                         ; D63B D0 D5
; Lit le secteur Y piste A dans BUF1
_XPBUF1:
        ldx     #$C1                            ; D63D A2 C1
        .byte   $2C                             ; D63F 2C
LD640:
        ldx     #$C2                            ; D640 A2 C2
        .byte   $2C                             ; D642 2C
LD643:
        ldx     #$C3                            ; D643 A2 C3
        .byte   $2C                             ; D645 2C
LD646:
        ldx     #$C4                            ; D646 A2 C4
        stx     RWBUF+1                         ; D648 8E 04 05
        ldx     #$00                            ; D64B A2 00
        stx     RWBUF                           ; D64D 8E 03 05
LD650:
        sta     TRACK                           ; D650 8D 01 05
        sty     SECTOR                          ; D653 8C 02 05
; Lit un secteur selon DRIVE, PISTE, SECTEUR et RWBUF
_XPRSEC:
        ldx     #$88                            ; D656 A2 88
LD658:
        jsr     RWTS                            ; D658 20 4F 05
        beq     LD6C1                           ; D65B F0 64
        ldx     #$02                            ; D65D A2 02
        bvc     _XERREU                         ; D65F 50 B1
        ldx     #$05                            ; D661 A2 05
        jmp     _XERREU                         ; D663 4C 12 D6

; ----------------------------------------------------------------------------
; Ecrit le secteur catalogue selon POSNMP et POSNMS
_XSCAT:
        lda     POSNMP                          ; D666 AD 14 05
        ldy     POSNMS                          ; D669 AC 15 05
        bne     _XSBUF3                         ; D66C D0 1C
LD66E:
        lda     #$14                            ; D66E A9 14
        ldy     #$02                            ; D670 A0 02
        php                                     ; D672 08
        jsr     LDF1C                           ; D673 20 1C DF
        jsr     _XSBUF2                         ; D676 20 84 D6
        iny                                     ; D679 C8
        lda     #$14                            ; D67A A9 14
        jsr     LD681                           ; D67C 20 81 D6
        plp                                     ; D67F 28
        rts                                     ; D680 60

; ----------------------------------------------------------------------------
LD681:
        ldx     #$C3                            ; D681 A2 C3
        .byte   $2C                             ; D683 2C
; Ecrit BUF2 dans le secteur Y piste A
_XSBUF2:
        ldx     #$C2                            ; D684 A2 C2
        .byte   $2C                             ; D686 2C
; Ecrit BUF1 dans le secteur Y piste A
_XSBUF1:
        ldx     #$C1                            ; D687 A2 C1
        .byte   $2C                             ; D689 2C
; Ecrit BUF3 dans le secteur Y piste A
_XSBUF3:
        ldx     #$C4                            ; D68A A2 C4
        stx     RWBUF+1                         ; D68C 8E 04 05
        ldx     #$00                            ; D68F A2 00
        stx     RWBUF                           ; D691 8E 03 05
; Ecrit le secteur Y piste A selon DRIVE et RWBUF
_XSAY:
        sta     TRACK                           ; D694 8D 01 05
        sty     SECTOR                          ; D697 8C 02 05
; Ecrit un secteur selon DRIVE, PISTE, SECTEUR et RWBUF
_XSVSEC:
        ldx     #$A8                            ; D69A A2 A8
        bne     LD658                           ; D69C D0 BA
LD69E:
        lda     #$00                            ; D69E A9 00
        ldy     #$C1                            ; D6A0 A0 C1
        sta     RWBUF                           ; D6A2 8D 03 05
        sty     RWBUF+1                         ; D6A5 8C 04 05
        bne     _XSVSEC                         ; D6A8 D0 F0
LD6AA:
        ldx     POSNMX                          ; D6AA AE 16 05
        ldy     #$08                            ; D6AD A0 08
        jsr     LD6B8                           ; D6AF 20 B8 D6
        lda     #$2E                            ; D6B2 A9 2E
        _XWR0                                   ; D6B4 00 10
        ldy     #$02                            ; D6B6 A0 02
LD6B8:
        lda     BUF3,x                          ; D6B8 BD 00 C4
        _XWR0                                   ; D6BB 00 10
        inx                                     ; D6BD E8
        dey                                     ; D6BE 88
        bpl     LD6B8                           ; D6BF 10 F7
LD6C1:
        rts                                     ; D6C1 60

; ----------------------------------------------------------------------------
LD6C2:
        jsr     LD6CB                           ; D6C2 20 CB D6
        lda     #$C2                            ; D6C5 A9 C2
        .byte   $2C                             ; D6C7 2C
; Initialise le buffer 1 avec des 0
_XBUF1:
        lda     #$C1                            ; D6C8 A9 C1
        .byte   $2C                             ; D6CA 2C
LD6CB:
        lda     #$C3                            ; D6CB A9 C3
        .byte   $2C                             ; D6CD 2C
LD6CE:
        lda     #$C4                            ; D6CE A9 C4
        sta     TD1                             ; D6D0 85 4E
        lda     #$00                            ; D6D2 A9 00
        sta     TD0                             ; D6D4 85 4D
        ldy     #$00                            ; D6D6 A0 00
        tya                                     ; D6D8 98
LD6D9:
        sta     (TD0),y                         ; D6D9 91 4D
        iny                                     ; D6DB C8
        bne     LD6D9                           ; D6DC D0 FB
        rts                                     ; D6DE 60

; ----------------------------------------------------------------------------
        lda     POSNMP                          ; D6DF AD 14 05
        ldy     POSNMS                          ; D6E2 AC 15 05
        jsr     LD646                           ; D6E5 20 46 D6
; Transfert BUFNOM ->  catalogue
_XBUCA:
        ldx     POSNMX                          ; D6E8 AE 16 05
        ldy     #$F0                            ; D6EB A0 F0
LD6ED:
        lda     $0428,y                         ; D6ED B9 28 04
        sta     BUF3,x                          ; D6F0 9D 00 C4
        inx                                     ; D6F3 E8
        iny                                     ; D6F4 C8
        bne     LD6ED                           ; D6F5 D0 F6
        rts                                     ; D6F7 60

; ----------------------------------------------------------------------------
        lda     POSNMP                          ; D6F8 AD 14 05
        ldy     POSNMS                          ; D6FB AC 15 05
        jsr     LD646                           ; D6FE 20 46 D6
; Transfert catalogue -> BUFNOM
_XCABU:
        ldx     POSNMX                          ; D701 AE 16 05
        ldy     #$F0                            ; D704 A0 F0
LD706:
        lda     BUF3,x                          ; D706 BD 00 C4
        sta     $0428,y                         ; D709 99 28 04
        inx                                     ; D70C E8
        iny                                     ; D70D C8
        bne     LD706                           ; D70E D0 F6
        rts                                     ; D710 60

; ----------------------------------------------------------------------------
LD711:
        ldy     #$F4                            ; D711 A0 F4
LD713:
        lda     $0424,y                         ; D713 B9 24 04
        cmp     #$3F                            ; D716 C9 3F
        beq     LD71F                           ; D718 F0 05
        cmp     BUF3,x                          ; D71A DD 00 C4
        bne     _XTRVNX                         ; D71D D0 1C
LD71F:
        inx                                     ; D71F E8
        iny                                     ; D720 C8
        bne     LD713                           ; D721 D0 F0
        ldx     POSNMX                          ; D723 AE 16 05
        rts                                     ; D726 60

; ----------------------------------------------------------------------------
; Cherche un fichier
_XTRVNM:
        jsr     _XPMAP                          ; D727 20 21 D6
LD72A:
        lda     #$14                            ; D72A A9 14
        ldy     #$04                            ; D72C A0 04
LD72E:
        sta     POSNMP                          ; D72E 8D 14 05
        sty     POSNMS                          ; D731 8C 15 05
        jsr     LD646                           ; D734 20 46 D6
        ldx     #$10                            ; D737 A2 10
        bne     LD742                           ; D739 D0 07
; Cherche le fichier suivant
_XTRVNX:
        lda     POSNMX                          ; D73B AD 16 05
LD73E:
        clc                                     ; D73E 18
        adc     #$10                            ; D73F 69 10
        tax                                     ; D741 AA
LD742:
        stx     POSNMX                          ; D742 8E 16 05
        cpx     BUF3+2                          ; D745 EC 02 C4
        bne     LD711                           ; D748 D0 C7
        lda     BUF3                            ; D74A AD 00 C4
        ldy     BUF3+1                          ; D74D AC 01 C4
        bne     LD72E                           ; D750 D0 DC
        rts                                     ; D752 60

; ----------------------------------------------------------------------------
; ???
_XTRVCA:
        jsr     LD7A2                           ; D753 20 A2 D7
        bne     LD78F                           ; D756 D0 37
        lda     BUF2+8                          ; D758 AD 08 C2
        cmp     #$1D                            ; D75B C9 1D
        bcs     LD76C                           ; D75D B0 0D
        cmp     #$0D                            ; D75F C9 0D
        tay                                     ; D761 A8
        lda     TD9A5,y                         ; D762 B9 A5 D9
        tay                                     ; D765 A8
        lda     #$14                            ; D766 A9 14
        adc     #$00                            ; D768 69 00
        bne     LD76F                           ; D76A D0 03
LD76C:
        jsr     _XLIBSE                         ; D76C 20 56 D8
LD76F:
        sta     BUF3                            ; D76F 8D 00 C4
        sty     BUF3+1                          ; D772 8C 01 C4
        inc     BUF2+8                          ; D775 EE 08 C2
        jsr     LD66E                           ; D778 20 6E D6
        jsr     _XSCAT                          ; D77B 20 66 D6
        lda     BUF3                            ; D77E AD 00 C4
        ldy     BUF3+1                          ; D781 AC 01 C4
        sta     POSNMP                          ; D784 8D 14 05
        sty     POSNMS                          ; D787 8C 15 05
        jsr     LD6CE                           ; D78A 20 CE D6
        ldx     #$10                            ; D78D A2 10
LD78F:
        txa                                     ; D78F 8A
        stx     POSNMX                          ; D790 8E 16 05
        clc                                     ; D793 18
        adc     #$10                            ; D794 69 10
        sta     BUF3+2                          ; D796 8D 02 C4
        inc     BUF2+4                          ; D799 EE 04 C2
        bne     LD7BC                           ; D79C D0 1E
        inc     BUF2+5                          ; D79E EE 05 C2
        rts                                     ; D7A1 60

; ----------------------------------------------------------------------------
LD7A2:
        lda     #$14                            ; D7A2 A9 14
        ldy     #$04                            ; D7A4 A0 04
LD7A6:
        sta     POSNMP                          ; D7A6 8D 14 05
        sty     POSNMS                          ; D7A9 8C 15 05
        jsr     LD646                           ; D7AC 20 46 D6
        ldx     BUF3+2                          ; D7AF AE 02 C4
        bne     LD7BC                           ; D7B2 D0 08
        lda     BUF3                            ; D7B4 AD 00 C4
        ldy     BUF3+1                          ; D7B7 AC 01 C4
        bne     LD7A6                           ; D7BA D0 EA
LD7BC:
        rts                                     ; D7BC 60

; ----------------------------------------------------------------------------
LD7BD:
        sta     LOCRE                           ; D7BD 8D 33 05
        sty     LOCRE+1                         ; D7C0 8C 34 05
        sta     LOCREB                          ; D7C3 8D 35 05
        sty     LOCREB+1                        ; D7C6 8C 36 05
        jsr     _XBUF1                          ; D7C9 20 C8 D6
        ldx     #$01                            ; D7CC A2 01
        stx     NBCRE                           ; D7CE 8E 39 05
        jsr     _XLIBSE                         ; D7D1 20 56 D8
        sta     DECREP                          ; D7D4 8D 37 05
        sty     DECRES                          ; D7D7 8C 38 05
        sta     TRACK                           ; D7DA 8D 01 05
        sty     SECTOR                          ; D7DD 8C 02 05
        ldx     #$08                            ; D7E0 A2 08
LD7E2:
        lda     FTYPE,x                         ; D7E2 BD 2C 05
        sta     BUF1+3,x                        ; D7E5 9D 03 C1
        dex                                     ; D7E8 CA
        bpl     LD7E2                           ; D7E9 10 F7
        stx     BUF1+2                          ; D7EB 8E 02 C1
        ldx     #$0C                            ; D7EE A2 0C
LD7F0:
        stx     VCRE0                           ; D7F0 8E 3A 05
        lda     LOCRE                           ; D7F3 AD 33 05
        ora     LOCRE+1                         ; D7F6 0D 34 05
        beq     LD842                           ; D7F9 F0 47
        lda     LOCRE                           ; D7FB AD 33 05
        bne     LD803                           ; D7FE D0 03
        dec     LOCRE+1                         ; D800 CE 34 05
LD803:
        dec     LOCRE                           ; D803 CE 33 05
        jsr     _XLIBSE                         ; D806 20 56 D8
        ldx     VCRE0                           ; D809 AE 3A 05
        sta     BUF1,x                          ; D80C 9D 00 C1
        inx                                     ; D80F E8
        tya                                     ; D810 98
        sta     BUF1,x                          ; D811 9D 00 C1
        inx                                     ; D814 E8
        bne     LD7F0                           ; D815 D0 D9
        lda     LOCRE                           ; D817 AD 33 05
        ora     LOCRE+1                         ; D81A 0D 34 05
        beq     LD842                           ; D81D F0 23
        jsr     _XLIBSE                         ; D81F 20 56 D8
        sta     BUF1                            ; D822 8D 00 C1
        pha                                     ; D825 48
        sty     BUF1+1                          ; D826 8C 01 C1
        tya                                     ; D829 98
        pha                                     ; D82A 48
        jsr     LD69E                           ; D82B 20 9E D6
        pla                                     ; D82E 68
        sta     SECTOR                          ; D82F 8D 02 05
        pla                                     ; D832 68
        sta     TRACK                           ; D833 8D 01 05
        inc     NBCRE                           ; D836 EE 39 05
        bne     LD83B                           ; D839 D0 00
LD83B:
        jsr     _XBUF1                          ; D83B 20 C8 D6
        ldx     #$02                            ; D83E A2 02
        bne     LD7F0                           ; D840 D0 AE
LD842:
        lda     #$00                            ; D842 A9 00
        sta     BUF1                            ; D844 8D 00 C1
        sta     BUF1+1                          ; D847 8D 01 C1
        jsr     LD69E                           ; D84A 20 9E D6
        lda     DECREP                          ; D84D AD 37 05
        ldy     DECRES                          ; D850 AC 38 05
        jmp     _XPBUF1                         ; D853 4C 3D D6

; ----------------------------------------------------------------------------
; Marque le secteur Y piste A comme libre
_XLIBSE:
        lda     BUF2+2                          ; D856 AD 02 C2
        tax                                     ; D859 AA
        ora     BUF2+3                          ; D85A 0D 03 C2
        bne     LD864                           ; D85D D0 05
        ldx     #$04                            ; D85F A2 04
        jmp     _XERREU                         ; D861 4C 12 D6

; ----------------------------------------------------------------------------
LD864:
        txa                                     ; D864 8A
        bne     LD86A                           ; D865 D0 03
        dec     BUF2+3                          ; D867 CE 03 C2
LD86A:
        dec     BUF2+2                          ; D86A CE 02 C2
        lda     #$10                            ; D86D A9 10
        sta     TD0                             ; D86F 85 4D
        lda     #$C2                            ; D871 A9 C2
        lsr     INDIC0                          ; D873 46 55
        sta     TD1                             ; D875 85 4E
LD877:
        ldy     #$00                            ; D877 A0 00
LD879:
        lda     (TD0),y                         ; D879 B1 4D
        bne     LD887                           ; D87B D0 0A
        iny                                     ; D87D C8
        bne     LD879                           ; D87E D0 F9
        inc     TD1                             ; D880 E6 4E
        sec                                     ; D882 38
        ror     INDIC0                          ; D883 66 55
        bne     LD877                           ; D885 D0 F0
LD887:
        lda     #$01                            ; D887 A9 01
        ldx     #$00                            ; D889 A2 00
LD88B:
        pha                                     ; D88B 48
        and     (TD0),y                         ; D88C 31 4D
        bne     LD895                           ; D88E D0 05
        pla                                     ; D890 68
        asl     a                               ; D891 0A
        inx                                     ; D892 E8
        bne     LD88B                           ; D893 D0 F6
LD895:
        pla                                     ; D895 68
        eor     #$FF                            ; D896 49 FF
        and     (TD0),y                         ; D898 31 4D
        sta     (TD0),y                         ; D89A 91 4D
        lda     #$00                            ; D89C A9 00
        sta     RES+1                           ; D89E 85 01
        stx     TD0                             ; D8A0 86 4D
        tya                                     ; D8A2 98
        bit     INDIC0                          ; D8A3 24 55
        bpl     LD8AE                           ; D8A5 10 07
        clc                                     ; D8A7 18
        adc     #$F0                            ; D8A8 69 F0
        bcc     LD8AE                           ; D8AA 90 02
        inc     RES+1                           ; D8AC E6 01
LD8AE:
        asl     a                               ; D8AE 0A
        rol     RES+1                           ; D8AF 26 01
        asl     a                               ; D8B1 0A
        rol     RES+1                           ; D8B2 26 01
        asl     a                               ; D8B4 0A
        rol     RES+1                           ; D8B5 26 01
        ora     TD0                             ; D8B7 05 4D
        sta     RES                             ; D8B9 85 00
        ldy     #$00                            ; D8BB A0 00
        lda     BUF2+7                          ; D8BD AD 07 C2
        _XDIVIS                                 ; D8C0 00 23
        lda     RES                             ; D8C2 A5 00
        cmp     BUF2+6                          ; D8C4 CD 06 C2
        bcc     LD8CE                           ; D8C7 90 05
        sbc     BUF2+6                          ; D8C9 ED 06 C2
        ora     #$80                            ; D8CC 09 80
LD8CE:
        ldy     RESB                            ; D8CE A4 02
        iny                                     ; D8D0 C8
        rts                                     ; D8D1 60

; ----------------------------------------------------------------------------
LD8D2:
        dey                                     ; D8D2 88
        tax                                     ; D8D3 AA
        tya                                     ; D8D4 98
        pha                                     ; D8D5 48
        txa                                     ; D8D6 8A
        bpl     LD8DF                           ; D8D7 10 06
        and     #$7F                            ; D8D9 29 7F
        clc                                     ; D8DB 18
        adc     BUF2+6                          ; D8DC 6D 06 C2
LD8DF:
        ldx     #$00                            ; D8DF A2 00
        stx     RES+1                           ; D8E1 86 01
        ldx     BUF2+7                          ; D8E3 AE 07 C2
        stx     RES                             ; D8E6 86 00
        ldy     #$00                            ; D8E8 A0 00
        _XMULT                                  ; D8EA 00 21
        pla                                     ; D8EC 68
        clc                                     ; D8ED 18
        adc     TR0                             ; D8EE 65 0C
        bcc     LD8F4                           ; D8F0 90 02
        inc     TR1                             ; D8F2 E6 0D
LD8F4:
        pha                                     ; D8F4 48
        and     #$07                            ; D8F5 29 07
        tax                                     ; D8F7 AA
        pla                                     ; D8F8 68
        lsr     TR1                             ; D8F9 46 0D
        ror     a                               ; D8FB 6A
        lsr     TR1                             ; D8FC 46 0D
        ror     a                               ; D8FE 6A
        lsr     TR1                             ; D8FF 46 0D
        ror     a                               ; D901 6A
        tay                                     ; D902 A8
        sec                                     ; D903 38
        lda     #$00                            ; D904 A9 00
LD906:
        rol     a                               ; D906 2A
        dex                                     ; D907 CA
        bpl     LD906                           ; D908 10 FC
        rts                                     ; D90A 60

; ----------------------------------------------------------------------------
; Marque le secteur Y piste A comme utilisé
_XDETSE:
        jsr     LD8D2                           ; D90B 20 D2 D8
        jsr     LD940                           ; D90E 20 40 D9
        ora     (TD0),y                         ; D911 11 4D
        cmp     (TD0),y                         ; D913 D1 4D
        beq     LD922                           ; D915 F0 0B
        sta     (TD0),y                         ; D917 91 4D
        inc     BUF2+2                          ; D919 EE 02 C2
        bne     LD922                           ; D91C D0 04
        inc     BUF2+3                          ; D91E EE 03 C2
        clc                                     ; D921 18
LD922:
        rts                                     ; D922 60

; ----------------------------------------------------------------------------
; Créé une table P/S de AY secteurs
_XCREAY:
        jsr     LD8D2                           ; D923 20 D2 D8
        eor     #$FF                            ; D926 49 FF
        jsr     LD940                           ; D928 20 40 D9
        and     (TD0),y                         ; D92B 31 4D
        cmp     (TD0),y                         ; D92D D1 4D
        beq     LD922                           ; D92F F0 F1
        sta     (TD0),y                         ; D931 91 4D
        lda     BUF2+2                          ; D933 AD 02 C2
        bne     LD93B                           ; D936 D0 03
        dec     BUF2+3                          ; D938 CE 03 C2
LD93B:
        dec     BUF2+2                          ; D93B CE 02 C2
        clc                                     ; D93E 18
        rts                                     ; D93F 60

; ----------------------------------------------------------------------------
LD940:
        pha                                     ; D940 48
        lda     #$C2                            ; D941 A9 C2
        adc     TR1                             ; D943 65 0D
        sta     TD1                             ; D945 85 4E
        lda     #$10                            ; D947 A9 10
        sta     TD0                             ; D949 85 4D
        pla                                     ; D94B 68
        rts                                     ; D94C 60

; ----------------------------------------------------------------------------
LD94D:
        ldy     #$00                            ; D94D A0 00
        ldx     #$00                            ; D94F A2 00
        _XDECIM                                 ; D951 00 29
        rts                                     ; D953 60

; ----------------------------------------------------------------------------
LD954:
        lda     DRIVE                           ; D954 AD 00 05
LD957:
        clc                                     ; D957 18
        adc     #$41                            ; D958 69 41
        .byte   $2C                             ; D95A 2C
LD95B:
        lda     #$20                            ; D95B A9 20
        _XWR0                                   ; D95D 00 10
        rts                                     ; D95F 60

; ----------------------------------------------------------------------------
LD960:
        _XCRLF                                  ; D960 00 25
        jsr     LD954                           ; D962 20 54 D9
        lda     #$C2                            ; D965 A9 C2
        ldy     #$D9                            ; D967 A0 D9
        _XWSTR0                                 ; D969 00 14
        lda     #$44                            ; D96B A9 44
        bit     BUF2+9                          ; D96D 2C 09 C2
        bmi     LD974                           ; D970 30 02
        lda     #$53                            ; D972 A9 53
LD974:
        _XWR0                                   ; D974 00 10
        lda     #$46                            ; D976 A9 46
        _XWR0                                   ; D978 00 10
        lda     #$2F                            ; D97A A9 2F
        _XWR0                                   ; D97C 00 10
        lda     BUF2+6                          ; D97E AD 06 C2
        jsr     LD94D                           ; D981 20 4D D9
        lda     #$2F                            ; D984 A9 2F
        _XWR0                                   ; D986 00 10
        lda     BUF2+7                          ; D988 AD 07 C2
        jsr     LD94D                           ; D98B 20 4D D9
        lda     #$C6                            ; D98E A9 C6
        ldy     #$D9                            ; D990 A0 D9
        _XWSTR0                                 ; D992 00 14
        rts                                     ; D994 60

; ----------------------------------------------------------------------------
; Restaure le vecteur d'erreur
_XERVEC:
        lda     #$18                            ; D995 A9 18
        ldy     #$D6                            ; D997 A0 D6
        sta     ERRVEC                          ; D999 8D 10 05
        sty     ERRVEC+1                        ; D99C 8C 11 05
        lda     #$00                            ; D99F A9 00
        sta     ERRFLG                          ; D9A1 8D 0F 05
        rts                                     ; D9A4 60

; ----------------------------------------------------------------------------
TD9A5:
        .byte   $04,$07,$0A,$0D,$10,$05,$08,$0B ; D9A5 04 07 0A 0D 10 05 08 0B
        .byte   $0E,$06,$09,$0C,$0F,$01,$04,$07 ; D9AD 0E 06 09 0C 0F 01 04 07
        .byte   $0A,$0D,$10,$02,$05,$08,$0B,$0E ; D9B5 0A 0D 10 02 05 08 0B 0E
        .byte   $03,$06,$09,$0C,$0F,$2D,$20,$28 ; D9BD 03 06 09 0C 0F 2D 20 28
        .byte   $00,$29,$20,$CE,$E1,$ED,$E5,$00 ; D9C5 00 29 20 CE E1 ED E5 00
; ----------------------------------------------------------------------------
SD9CD:
        .byte   $0A,$0D                         ; D9CD 0A 0D
        .byte   "Error: d"                      ; D9CF 45 72 72 6F 72 3A 20 64
        .byte   $00                             ; D9D7 00
SD9D8:
        .byte   "isk read, type "               ; D9D8 69 73 6B 20 72 65 61 64
                                                ; D9E0 2C 20 74 79 70 65 20
        .byte   $00                             ; D9E7 00
SD9E8:
        .byte   "isk write,type "               ; D9E8 69 73 6B 20 77 72 69 74
                                                ; D9F0 65 2C 74 79 70 65 20
        .byte   $00                             ; D9F7 00
SD9F8:
        .byte   $0A,$0D                         ; D9F8 0A 0D
        .byte   "Disk   "                       ; D9FA 44 69 73 6B 20 20 20
        .byte   $00                             ; DA01 00
SDA02:
        .byte   " side "                        ; DA02 20 73 69 64 65 20
        .byte   $00                             ; DA08 00
SDA09:
        .byte   " track "                       ; DA09 20 74 72 61 63 6B 20
        .byte   $00                             ; DA10 00
SDA11:
        .byte   " sector "                      ; DA11 20 73 65 63 74 6F 72 20
        .byte   $00,$00                         ; DA19 00 00
SDA1B:
        .byte   "isk is protected "             ; DA1B 69 73 6B 20 69 73 20 70
                                                ; DA23 72 6F 74 65 63 74 65 64
                                                ; DA2B 20
        .byte   $00                             ; DA2C 00
SDA2D:
        .byte   $0A,$0D                         ; DA2D 0A 0D
        .byte   "Abort, Retry, Ignore?"         ; DA2F 41 62 6F 72 74 2C 20 52
                                                ; DA37 65 74 72 79 2C 20 49 67
                                                ; DA3F 6E 6F 72 65 3F
        .byte   $00                             ; DA44 00
SDA45:
        .byte   "          "                    ; DA45 20 20 20 20 20 20 20 20
                                                ; DA4D 20 20
        .byte   $00                             ; DA4F 00
; ----------------------------------------------------------------------------
LDA50:
        jsr     LD6AA                           ; DA50 20 AA D6
        lda     #$20                            ; DA53 A9 20
        sta     DEFAFF                          ; DA55 85 14
        ldx     POSNMX                          ; DA57 AE 16 05
        lda     BUF3+15,x                       ; DA5A BD 0F C4
        php                                     ; DA5D 08
        and     #$0F                            ; DA5E 29 0F
        tay                                     ; DA60 A8
        lda     BUF3+14,x                       ; DA61 BD 0E C4
        ldx     #$02                            ; DA64 A2 02
        _XDECIM                                 ; DA66 00 29
        lda     #$20                            ; DA68 A9 20
        plp                                     ; DA6A 28
        bpl     LDA6F                           ; DA6B 10 02
        lda     #$50                            ; DA6D A9 50
LDA6F:
        _XWR0                                   ; DA6F 00 10
        rts                                     ; DA71 60

; ----------------------------------------------------------------------------
; Catalogue (nom -> BUFNOM)
_XDIRN:
        php                                     ; DA72 08
        jsr     LDF1C                           ; DA73 20 1C DF
        lda     #$14                            ; DA76 A9 14
        ldy     #$01                            ; DA78 A0 01
        jsr     _XPBUF1                         ; DA7A 20 3D D6
        jsr     _XPMAP                          ; DA7D 20 21 D6
        plp                                     ; DA80 28
        jsr     LD960                           ; DA81 20 60 D9
        ldy     #$EB                            ; DA84 A0 EB
LDA86:
        lda     LC01E,y                         ; DA86 B9 1E C0
        _XWR0                                   ; DA89 00 10
        iny                                     ; DA8B C8
        bne     LDA86                           ; DA8C D0 F8
        _XCRLF                                  ; DA8E 00 25
        _XCRLF                                  ; DA90 00 25
        jsr     LD72A                           ; DA92 20 2A D7
        bne     LDA9E                           ; DA95 D0 07
        beq     LDACD                           ; DA97 F0 34
LDA99:
        _XCRLF                                  ; DA99 00 25
LDA9B:
        jsr     _XTRVNX                         ; DA9B 20 3B D7
LDA9E:
        beq     LDACB                           ; DA9E F0 2B
        jsr     LDA50                           ; DAA0 20 50 DA
        sec                                     ; DAA3 38
        lda     SCRFX                           ; DAA4 AD 2C 02
        sbc     SCRX                            ; DAA7 ED 20 02
        cmp     #$12                            ; DAAA C9 12
        bcc     LDAB7                           ; DAAC 90 09
        jsr     LD95B                           ; DAAE 20 5B D9
        jsr     LD95B                           ; DAB1 20 5B D9
        jmp     LDA9B                           ; DAB4 4C 9B DA

; ----------------------------------------------------------------------------
LDAB7:
        _XRD0                                   ; DAB7 00 08
        bcs     LDA99                           ; DAB9 B0 DE
        cmp     #$03                            ; DABB C9 03
        beq     LDAC9                           ; DABD F0 0A
        cmp     #$1B                            ; DABF C9 1B
        beq     LDAC9                           ; DAC1 F0 06
        _XRDW0                                  ; DAC3 00 0C
        cmp     #$1B                            ; DAC5 C9 1B
        bne     LDA99                           ; DAC7 D0 D0
LDAC9:
        _XCRLF                                  ; DAC9 00 25
LDACB:
        _XCRLF                                  ; DACB 00 25
LDACD:
        lda     #$2A                            ; DACD A9 2A
        sta     DEFAFF                          ; DACF 85 14
        lda     BUF2+2                          ; DAD1 AD 02 C2
        ldy     BUF2+3                          ; DAD4 AC 03 C2
        ldx     #$02                            ; DAD7 A2 02
        _XDECIM                                 ; DAD9 00 29
        lda     #$07                            ; DADB A9 07
        ldy     #$DB                            ; DADD A0 DB
        _XWSTR0                                 ; DADF 00 14
        lda     #$20                            ; DAE1 A9 20
        sta     DEFAFF                          ; DAE3 85 14
        lda     BUF2+4                          ; DAE5 AD 04 C2
        ldy     BUF2+5                          ; DAE8 AC 05 C2
        ldx     #$01                            ; DAEB A2 01
        _XDECIM                                 ; DAED 00 29
        lda     #$19                            ; DAEF A9 19
        ldy     #$DB                            ; DAF1 A0 DB
        _XWSTR0                                 ; DAF3 00 14
        lda     BUF2+5                          ; DAF5 AD 05 C2
        bne     LDB00                           ; DAF8 D0 06
        ldy     BUF2+4                          ; DAFA AC 04 C2
        dey                                     ; DAFD 88
        beq     LDB04                           ; DAFE F0 04
LDB00:
        lda     #$73                            ; DB00 A9 73
        _XWR0                                   ; DB02 00 10
LDB04:
        _XCRLF                                  ; DB04 00 25
        rts                                     ; DB06 60

; ----------------------------------------------------------------------------
SDB07:
        .byte   " sectors free,"                ; DB07 20 73 65 63 74 6F 72 73
                                                ; DB0F 20 66 72 65 65 2C
        .byte   $00,$00                         ; DB15 00 00
SDB17:
        .byte   " "                             ; DB17 20
        .byte   $00                             ; DB18 00
SDB19:
        .byte   " file"                         ; DB19 20 66 69 6C 65
        .byte   $00                             ; DB1E 00
SDB1F:
        .byte   "  "                            ; DB1F 20 20
        .byte   $00                             ; DB21 00
; ----------------------------------------------------------------------------
; Valeurs par défaut pour SAVE
_XDEFSA:
        lda     #$C0                            ; DB22 A9 C0
        sta     VASALO0                         ; DB24 8D 28 05
        lda     #$40                            ; DB27 A9 40
        sta     FTYPE                           ; DB29 8D 2C 05
        lda     #$00                            ; DB2C A9 00
        sta     EXSALO                          ; DB2E 8D 31 05
        sta     EXSALO+1                        ; DB31 8D 32 05
        rts                                     ; DB34 60

; ----------------------------------------------------------------------------
; Sauve l'écran TEXT ou HIRES (selon FLGTEL)
_XESAVE:
        lda     #$00                            ; DB35 A9 00
        ldy     #$A0                            ; DB37 A0 A0
        ldx     #$3F                            ; DB39 A2 3F
        bit     FLGTEL                          ; DB3B 2C 0D 02
        bmi     LDB46                           ; DB3E 30 06
        lda     #$80                            ; DB40 A9 80
        ldy     #$BB                            ; DB42 A0 BB
        ldx     #$DF                            ; DB44 A2 DF
LDB46:
        sta     DESALO                          ; DB46 8D 2D 05
        sty     DESALO+1                        ; DB49 8C 2E 05
        ldy     #$BF                            ; DB4C A0 BF
        stx     FISALO                          ; DB4E 8E 2F 05
        sty     FISALO+1                        ; DB51 8C 30 05
        jsr     _XDEFSA                         ; DB54 20 22 DB
; Sauve un fichier
_XSAVE:
        php                                     ; DB57 08
        jsr     LDF1C                           ; DB58 20 1C DF
        sec                                     ; DB5B 38
        lda     FISALO                          ; DB5C AD 2F 05
        sbc     DESALO                          ; DB5F ED 2D 05
        sta     LOSALO                          ; DB62 8D 2A 05
        lda     FISALO+1                        ; DB65 AD 30 05
        sbc     DESALO+1                        ; DB68 ED 2E 05
        sta     LOSALO+1                        ; DB6B 8D 2B 05
        jsr     _XTRVNM                         ; DB6E 20 27 D7
        beq     LDBE6                           ; DB71 F0 73
        lda     #$FF                            ; DB73 A9 FF
        bit     VASALO0                         ; DB75 2C 28 05
        beq     LDB8C                           ; DB78 F0 12
        bvc     LDB87                           ; DB7A 50 0B
        bmi     LDB94                           ; DB7C 30 16
        jsr     _XCABU                          ; DB7E 20 01 D7
        jmp     LDBF0                           ; DB81 4C F0 DB

; ----------------------------------------------------------------------------
LDB84:
        ldx     #$09                            ; DB84 A2 09
        .byte   $2C                             ; DB86 2C
LDB87:
        ldx     #$03                            ; DB87 A2 03
        jmp     _XERREU                         ; DB89 4C 12 D6

; ----------------------------------------------------------------------------
LDB8C:
        jsr     LDE4D                           ; DB8C 20 4D DE
        bcs     LDBC4                           ; DB8F B0 33
        jmp     LDBE6                           ; DB91 4C E6 DB

; ----------------------------------------------------------------------------
LDB94:
        ldy     #$02                            ; DB94 A0 02
LDB96:
        lda     BUFNOM+10,y                     ; DB96 B9 21 05
        pha                                     ; DB99 48
        dey                                     ; DB9A 88
        bpl     LDB96                           ; DB9B 10 F9
        ldy     #$02                            ; DB9D A0 02
LDB9F:
        lda     BUFNOM+10,y                     ; DB9F B9 21 05
        cmp     SDCB3,y                         ; DBA2 D9 B3 DC
        bne     LDBAC                           ; DBA5 D0 05
        dey                                     ; DBA7 88
        bpl     LDB9F                           ; DBA8 10 F5
        bmi     LDB84                           ; DBAA 30 D8
LDBAC:
        ldx     #$02                            ; DBAC A2 02
LDBAE:
        lda     SDCB3,x                         ; DBAE BD B3 DC
        sta     BUFNOM+10,x                     ; DBB1 9D 21 05
        dex                                     ; DBB4 CA
        bpl     LDBAE                           ; DBB5 10 F7
        jsr     LD72A                           ; DBB7 20 2A D7
        beq     LDBC6                           ; DBBA F0 0A
        jsr     LDE4D                           ; DBBC 20 4D DE
        bcc     LDBC6                           ; DBBF 90 05
        pla                                     ; DBC1 68
        pla                                     ; DBC2 68
        pla                                     ; DBC3 68
LDBC4:
        plp                                     ; DBC4 28
        rts                                     ; DBC5 60

; ----------------------------------------------------------------------------
LDBC6:
        ldy     #$00                            ; DBC6 A0 00
LDBC8:
        pla                                     ; DBC8 68
        sta     BUFNOM+10,y                     ; DBC9 99 21 05
        iny                                     ; DBCC C8
        cpy     #$03                            ; DBCD C0 03
        bne     LDBC8                           ; DBCF D0 F7
        jsr     LD72A                           ; DBD1 20 2A D7
        ldx     POSNMX                          ; DBD4 AE 16 05
LDBD7:
        lda     SDCB3,y                         ; DBD7 B9 B3 DC
        sta     BUF3+9,x                        ; DBDA 9D 09 C4
        inx                                     ; DBDD E8
        iny                                     ; DBDE C8
        cpy     #$03                            ; DBDF C0 03
        bne     LDBD7                           ; DBE1 D0 F4
        jsr     _XSCAT                          ; DBE3 20 66 D6
LDBE6:
        ldx     #$03                            ; DBE6 A2 03
        lda     #$00                            ; DBE8 A9 00
LDBEA:
        sta     $0524,x                         ; DBEA 9D 24 05
        dex                                     ; DBED CA
        bpl     LDBEA                           ; DBEE 10 FA
LDBF0:
        ldx     LOSALO+1                        ; DBF0 AE 2B 05
        ldy     #$00                            ; DBF3 A0 00
        inx                                     ; DBF5 E8
        txa                                     ; DBF6 8A
        bne     LDBFA                           ; DBF7 D0 01
        iny                                     ; DBF9 C8
LDBFA:
        jsr     LD7BD                           ; DBFA 20 BD D7
        lda     DESALO                          ; DBFD AD 2D 05
        ldy     DESALO+1                        ; DC00 AC 2E 05
        dey                                     ; DC03 88
        sta     RWBUF                           ; DC04 8D 03 05
        sty     RWBUF+1                         ; DC07 8C 04 05
        ldy     #$0A                            ; DC0A A0 0A
LDC0C:
        inc     RWBUF+1                         ; DC0C EE 04 05
        lda     LOSALO+1                        ; DC0F AD 2B 05
        beq     LDC2B                           ; DC12 F0 17
        dec     LOSALO+1                        ; DC14 CE 2B 05
        jsr     LDE08                           ; DC17 20 08 DE
        lda     BUF1,y                          ; DC1A B9 00 C1
        sta     TRACK                           ; DC1D 8D 01 05
        lda     BUF1+1,y                        ; DC20 B9 01 C1
        sta     SECTOR                          ; DC23 8D 02 05
        jsr     _XSVSEC                         ; DC26 20 9A D6
        beq     LDC0C                           ; DC29 F0 E1
LDC2B:
        jsr     LDE08                           ; DC2B 20 08 DE
        lda     BUF1,y                          ; DC2E B9 00 C1
        pha                                     ; DC31 48
        lda     BUF1+1,y                        ; DC32 B9 01 C1
        pha                                     ; DC35 48
        jsr     _XBUF1                          ; DC36 20 C8 D6
        lda     RWBUF                           ; DC39 AD 03 05
        ldy     RWBUF+1                         ; DC3C AC 04 05
        sta     TD0                             ; DC3F 85 4D
        sty     TD1                             ; DC41 84 4E
        ldy     #$FF                            ; DC43 A0 FF
LDC45:
        iny                                     ; DC45 C8
        lda     (TD0),y                         ; DC46 B1 4D
        sta     BUF1,y                          ; DC48 99 00 C1
        cpy     LOSALO                          ; DC4B CC 2A 05
        bne     LDC45                           ; DC4E D0 F5
        pla                                     ; DC50 68
        tay                                     ; DC51 A8
        pla                                     ; DC52 68
        jsr     _XSBUF1                         ; DC53 20 87 D6
LDC56:
        clc                                     ; DC56 18
        lda     LOCREB                          ; DC57 AD 35 05
        adc     NBCRE                           ; DC5A 6D 39 05
        bcc     LDC62                           ; DC5D 90 03
        inc     LOCREB+1                        ; DC5F EE 36 05
LDC62:
        adc     $0526                           ; DC62 6D 26 05
        sta     $0526                           ; DC65 8D 26 05
        lda     $0527                           ; DC68 AD 27 05
        and     #$0F                            ; DC6B 29 0F
        adc     LOCREB+1                        ; DC6D 6D 36 05
        ora     #$40                            ; DC70 09 40
        sta     $0527                           ; DC72 8D 27 05
        lda     $0524                           ; DC75 AD 24 05
        ldy     $0525                           ; DC78 AC 25 05
        beq     LDC9A                           ; DC7B F0 1D
LDC7D:
        jsr     _XPBUF1                         ; DC7D 20 3D D6
        lda     BUF1                            ; DC80 AD 00 C1
        ldy     BUF1+1                          ; DC83 AC 01 C1
        bne     LDC7D                           ; DC86 D0 F5
        lda     DECREP                          ; DC88 AD 37 05
        ldy     DECRES                          ; DC8B AC 38 05
        sta     BUF1                            ; DC8E 8D 00 C1
        sty     BUF1+1                          ; DC91 8C 01 C1
        jsr     _XSVSEC                         ; DC94 20 9A D6
        jmp     LDCA9                           ; DC97 4C A9 DC

; ----------------------------------------------------------------------------
LDC9A:
        lda     DECREP                          ; DC9A AD 37 05
        ldy     DECRES                          ; DC9D AC 38 05
        sta     $0524                           ; DCA0 8D 24 05
        sty     $0525                           ; DCA3 8C 25 05
        jsr     _XTRVCA                         ; DCA6 20 53 D7
LDCA9:
        jsr     LD66E                           ; DCA9 20 6E D6
        jsr     _XBUCA                          ; DCAC 20 E8 D6
        plp                                     ; DCAF 28
        jmp     _XSCAT                          ; DCB0 4C 66 D6

; ----------------------------------------------------------------------------
SDCB3:
        .byte   "BAK"                           ; DCB3 42 41 4B
; ----------------------------------------------------------------------------
; Valeurs par défaut pour LOAD
_XDEFLO:
        lda     #$00                            ; DCB6 A9 00
        ldx     #$03                            ; DCB8 A2 03
LDCBA:
        sta     VASALO0,x                       ; DCBA 9D 28 05
        dex                                     ; DCBD CA
        bpl     LDCBA                           ; DCBE 10 FA
        stx     INDIC0                          ; DCC0 86 55
        rts                                     ; DCC2 60

; ----------------------------------------------------------------------------
LDCC3:
        ldx     #$06                            ; DCC3 A2 06
        .byte   $2C                             ; DCC5 2C
LDCC6:
        ldx     #$01                            ; DCC6 A2 01
        jmp     _XERREU                         ; DCC8 4C 12 D6

; ----------------------------------------------------------------------------
; Charge un fichier
_XLOAD:
        jsr     _XTRVNM                         ; DCCB 20 27 D7
        beq     LDCC6                           ; DCCE F0 F6
LDCD0:
        php                                     ; DCD0 08
        jsr     LDF1C                           ; DCD1 20 1C DF
        sec                                     ; DCD4 38
        ror     INDIC0                          ; DCD5 66 55
        lda     BUF3+12,x                       ; DCD7 BD 0C C4
        ldy     BUF3+13,x                       ; DCDA BC 0D C4
LDCDD:
        jsr     _XPBUF1                         ; DCDD 20 3D D6
        ldx     #$02                            ; DCE0 A2 02
LDCE2:
        lda     BUF1,x                          ; DCE2 BD 00 C1
        cmp     #$FF                            ; DCE5 C9 FF
        beq     LDCF6                           ; DCE7 F0 0D
        inx                                     ; DCE9 E8
        bne     LDCE2                           ; DCEA D0 F6
        lda     BUF1                            ; DCEC AD 00 C1
        ldy     BUF1+1                          ; DCEF AC 01 C1
        bne     LDCDD                           ; DCF2 D0 E9
        plp                                     ; DCF4 28
        rts                                     ; DCF5 60

; ----------------------------------------------------------------------------
LDCF6:
        lda     BUF1+1,x                        ; DCF6 BD 01 C1
        sta     TD7                             ; DCF9 85 54
        and     #$C0                            ; DCFB 29 C0
        bne     LDD04                           ; DCFD D0 05
        bit     VASALO0                         ; DCFF 2C 28 05
        bvc     LDCC3                           ; DD02 50 BF
LDD04:
        bit     VASALO1                         ; DD04 2C 29 05
        bmi     LDD15                           ; DD07 30 0C
        lda     BUF1+2,x                        ; DD09 BD 02 C1
        ldy     BUF1+3,x                        ; DD0C BC 03 C1
        sta     DESALO                          ; DD0F 8D 2D 05
        sty     DESALO+1                        ; DD12 8C 2E 05
LDD15:
        sec                                     ; DD15 38
        lda     BUF1+4,x                        ; DD16 BD 04 C1
        sbc     BUF1+2,x                        ; DD19 FD 02 C1
        sta     LOSALO                          ; DD1C 8D 2A 05
        lda     BUF1+5,x                        ; DD1F BD 05 C1
        sbc     BUF1+3,x                        ; DD22 FD 03 C1
        sta     LOSALO+1                        ; DD25 8D 2B 05
        clc                                     ; DD28 18
        lda     DESALO                          ; DD29 AD 2D 05
        sta     RWBUF                           ; DD2C 8D 03 05
        adc     LOSALO                          ; DD2F 6D 2A 05
        pha                                     ; DD32 48
        sta     FISALO                          ; DD33 8D 2F 05
        lda     DESALO+1                        ; DD36 AD 2E 05
        tay                                     ; DD39 A8
        dey                                     ; DD3A 88
        sty     RWBUF+1                         ; DD3B 8C 04 05
        adc     LOSALO+1                        ; DD3E 6D 2B 05
        tay                                     ; DD41 A8
        sty     FISALO+1                        ; DD42 8C 30 05
        bit     INDIC0                          ; DD45 24 55
        bpl     LDD55                           ; DD47 10 0C
        lda     BUF1+6,x                        ; DD49 BD 06 C1
        sta     EXSALO                          ; DD4C 8D 31 05
        lda     BUF1+7,x                        ; DD4F BD 07 C1
        sta     EXSALO+1                        ; DD52 8D 32 05
LDD55:
        lda     BUF1+8,x                        ; DD55 BD 08 C1
        sta     TD5                             ; DD58 85 52
        lda     BUF1+9,x                        ; DD5A BD 09 C1
        sta     TD6                             ; DD5D 85 53
        bit     VASALO0                         ; DD5F 2C 28 05
        bvc     LDD9A                           ; DD62 50 36
        tya                                     ; DD64 98
        pha                                     ; DD65 48
        lda     DESALO+1                        ; DD66 AD 2E 05
        jsr     LDE45                           ; DD69 20 45 DE
        lda     DESALO                          ; DD6C AD 2D 05
        jsr     LDE45                           ; DD6F 20 45 DE
        jsr     LD95B                           ; DD72 20 5B D9
        pla                                     ; DD75 68
        jsr     LDE45                           ; DD76 20 45 DE
        pla                                     ; DD79 68
        jsr     LDE45                           ; DD7A 20 45 DE
        jsr     LD95B                           ; DD7D 20 5B D9
        lda     TD7                             ; DD80 A5 54
        jsr     LDE45                           ; DD82 20 45 DE
        jsr     LD95B                           ; DD85 20 5B D9
        lda     EXSALO+1                        ; DD88 AD 32 05
        jsr     LDE45                           ; DD8B 20 45 DE
        lda     EXSALO                          ; DD8E AD 31 05
        jsr     LDE45                           ; DD91 20 45 DE
        jsr     LD95B                           ; DD94 20 5B D9
        _XCRLF                                  ; DD97 00 25
        .byte   $24                             ; DD99 24
LDD9A:
        pla                                     ; DD9A 68
        txa                                     ; DD9B 8A
        clc                                     ; DD9C 18
        adc     #$08                            ; DD9D 69 08
        tay                                     ; DD9F A8
LDDA0:
        lda     TD5                             ; DDA0 A5 52
        bne     LDDA6                           ; DDA2 D0 02
        dec     TD6                             ; DDA4 C6 53
LDDA6:
        dec     TD5                             ; DDA6 C6 52
        inc     RWBUF+1                         ; DDA8 EE 04 05
        lda     TD5                             ; DDAB A5 52
        ora     TD6                             ; DDAD 05 53
        beq     LDDB9                           ; DDAF F0 08
        jsr     LDE08                           ; DDB1 20 08 DE
        jsr     LDE31                           ; DDB4 20 31 DE
        beq     LDDA0                           ; DDB7 F0 E7
LDDB9:
        lda     RWBUF                           ; DDB9 AD 03 05
        ldx     RWBUF+1                         ; DDBC AE 04 05
        sta     TD3                             ; DDBF 85 50
        stx     TD4                             ; DDC1 86 51
        jsr     LDE08                           ; DDC3 20 08 DE
        tya                                     ; DDC6 98
        pha                                     ; DDC7 48
        lda     #$00                            ; DDC8 A9 00
        ldx     #$C2                            ; DDCA A2 C2
        sta     RWBUF                           ; DDCC 8D 03 05
        stx     RWBUF+1                         ; DDCF 8E 04 05
        bit     VASALO0                         ; DDD2 2C 28 05
        bvs     LDDE7                           ; DDD5 70 10
        jsr     LDE31                           ; DDD7 20 31 DE
        ldy     #$FF                            ; DDDA A0 FF
LDDDC:
        iny                                     ; DDDC C8
        lda     BUF2,y                          ; DDDD B9 00 C2
        sta     (TD3),y                         ; DDE0 91 50
        cpy     LOSALO                          ; DDE2 CC 2A 05
        bne     LDDDC                           ; DDE5 D0 F5
LDDE7:
        pla                                     ; DDE7 68
        tay                                     ; DDE8 A8
        jsr     LDE08                           ; DDE9 20 08 DE
        tya                                     ; DDEC 98
        tax                                     ; DDED AA
        lda     INDIC0                          ; DDEE A5 55
        bpl     LDE05                           ; DDF0 10 13
        php                                     ; DDF2 08
        lsr     INDIC0                          ; DDF3 46 55
        plp                                     ; DDF5 28
        lda     VASALO1                         ; DDF6 AD 29 05
        and     #$BF                            ; DDF9 29 BF
        sta     VASALO1                         ; DDFB 8D 29 05
        lda     TD7                             ; DDFE A5 54
        sta     FTYPE                           ; DE00 8D 2C 05
        bcs     LDE2F                           ; DE03 B0 2A
LDE05:
        jmp     LDCE2                           ; DE05 4C E2 DC

; ----------------------------------------------------------------------------
LDE08:
        iny                                     ; DE08 C8
        iny                                     ; DE09 C8
LDE0A:
        bne     LDE29                           ; DE0A D0 1D
        lda     RWBUF                           ; DE0C AD 03 05
        pha                                     ; DE0F 48
        lda     RWBUF+1                         ; DE10 AD 04 05
        pha                                     ; DE13 48
        lda     BUF1                            ; DE14 AD 00 C1
        ldy     BUF1+1                          ; DE17 AC 01 C1
        beq     LDE2B                           ; DE1A F0 0F
        jsr     _XPBUF1                         ; DE1C 20 3D D6
        pla                                     ; DE1F 68
        sta     RWBUF+1                         ; DE20 8D 04 05
        pla                                     ; DE23 68
        sta     RWBUF                           ; DE24 8D 03 05
        ldy     #$02                            ; DE27 A0 02
LDE29:
        clc                                     ; DE29 18
LDE2A:
        rts                                     ; DE2A 60

; ----------------------------------------------------------------------------
LDE2B:
        sec                                     ; DE2B 38
        pla                                     ; DE2C 68
        pla                                     ; DE2D 68
        rts                                     ; DE2E 60

; ----------------------------------------------------------------------------
LDE2F:
        plp                                     ; DE2F 28
        rts                                     ; DE30 60

; ----------------------------------------------------------------------------
LDE31:
        lda     BUF1,y                          ; DE31 B9 00 C1
        sta     TRACK                           ; DE34 8D 01 05
        lda     BUF1+1,y                        ; DE37 B9 01 C1
        sta     SECTOR                          ; DE3A 8D 02 05
        bit     VASALO0                         ; DE3D 2C 28 05
        bvs     LDE2A                           ; DE40 70 E8
        jmp     _XPRSEC                         ; DE42 4C 56 D6

; ----------------------------------------------------------------------------
LDE45:
        _XHEXA                                  ; DE45 00 2A
        _XWR0                                   ; DE47 00 10
        tya                                     ; DE49 98
        _XWR0                                   ; DE4A 00 10
        rts                                     ; DE4C 60

; ----------------------------------------------------------------------------
LDE4D:
        clc                                     ; DE4D 18
        .byte   $24                             ; DE4E 24
; Détruit un fichier
_XNOMDE:
        sec                                     ; DE4F 38
        ldx     POSNMX                          ; DE50 AE 16 05
        ldy     BUF3+15,x                       ; DE53 BC 0F C4
        bmi     LDEBA                           ; DE56 30 62
        lda     BUF2+4                          ; DE58 AD 04 C2
        bne     LDE60                           ; DE5B D0 03
        dec     BUF2+5                          ; DE5D CE 05 C2
LDE60:
        dec     BUF2+4                          ; DE60 CE 04 C2
        lda     BUF3+12,x                       ; DE63 BD 0C C4
        pha                                     ; DE66 48
        lda     BUF3+13,x                       ; DE67 BD 0D C4
        pha                                     ; DE6A 48
        sec                                     ; DE6B 38
        lda     BUF3+2                          ; DE6C AD 02 C4
        sbc     #$10                            ; DE6F E9 10
        sta     BUF3+2                          ; DE71 8D 02 C4
        tay                                     ; DE74 A8
        lda     #$10                            ; DE75 A9 10
        sta     TD0                             ; DE77 85 4D
LDE79:
        lda     BUF3,y                          ; DE79 B9 00 C4
        stx     TD1                             ; DE7C 86 4E
        cpy     TD1                             ; DE7E C4 4E
        beq     LDE85                           ; DE80 F0 03
        sta     BUF3,x                          ; DE82 9D 00 C4
LDE85:
        lda     #$00                            ; DE85 A9 00
        sta     BUF3,y                          ; DE87 99 00 C4
        inx                                     ; DE8A E8
        iny                                     ; DE8B C8
        dec     TD0                             ; DE8C C6 4D
        bne     LDE79                           ; DE8E D0 E9
        pla                                     ; DE90 68
        tay                                     ; DE91 A8
        pla                                     ; DE92 68
LDE93:
        jsr     _XPBUF1                         ; DE93 20 3D D6
        lda     TRACK                           ; DE96 AD 01 05
        ldy     SECTOR                          ; DE99 AC 02 05
        jsr     _XDETSE                         ; DE9C 20 0B D9
        ldx     #$02                            ; DE9F A2 02
LDEA1:
        lda     BUF1,x                          ; DEA1 BD 00 C1
        cmp     #$FF                            ; DEA4 C9 FF
        beq     LDEC9                           ; DEA6 F0 21
        inx                                     ; DEA8 E8
        bne     LDEA1                           ; DEA9 D0 F6
        lda     BUF1                            ; DEAB AD 00 C1
        ldy     BUF1+1                          ; DEAE AC 01 C1
        bne     LDE93                           ; DEB1 D0 E0
LDEB3:
        jsr     LD66E                           ; DEB3 20 6E D6
        clc                                     ; DEB6 18
        jmp     _XSCAT                          ; DEB7 4C 66 D6

; ----------------------------------------------------------------------------
LDEBA:
        bcs     LDEC1                           ; DEBA B0 05
        _XCRLF                                  ; DEBC 00 25
        jsr     LD6AA                           ; DEBE 20 AA D6
LDEC1:
        lda     #$0F                            ; DEC1 A9 0F
        ldy     #$DF                            ; DEC3 A0 DF
        _XWSTR0                                 ; DEC5 00 14
        sec                                     ; DEC7 38
        rts                                     ; DEC8 60

; ----------------------------------------------------------------------------
LDEC9:
        lda     BUF1+8,x                        ; DEC9 BD 08 C1
        sta     TD5                             ; DECC 85 52
        lda     BUF1+9,x                        ; DECE BD 09 C1
        sta     TD6                             ; DED1 85 53
        txa                                     ; DED3 8A
        clc                                     ; DED4 18
        adc     #$0A                            ; DED5 69 0A
        tax                                     ; DED7 AA
LDED8:
        txa                                     ; DED8 8A
        pha                                     ; DED9 48
        lda     BUF1,x                          ; DEDA BD 00 C1
        ldy     BUF1+1,x                        ; DEDD BC 01 C1
        jsr     _XDETSE                         ; DEE0 20 0B D9
        pla                                     ; DEE3 68
        tax                                     ; DEE4 AA
        inx                                     ; DEE5 E8
        inx                                     ; DEE6 E8
        bne     LDEFF                           ; DEE7 D0 16
        lda     BUF1                            ; DEE9 AD 00 C1
        ldy     BUF1+1                          ; DEEC AC 01 C1
        beq     LDEB3                           ; DEEF F0 C2
        jsr     _XPBUF1                         ; DEF1 20 3D D6
        lda     TRACK                           ; DEF4 AD 01 05
        ldy     SECTOR                          ; DEF7 AC 02 05
        jsr     _XDETSE                         ; DEFA 20 0B D9
        ldx     #$02                            ; DEFD A2 02
LDEFF:
        ldy     TD5                             ; DEFF A4 52
        bne     LDF05                           ; DF01 D0 02
        dec     TD6                             ; DF03 C6 53
LDF05:
        dec     TD5                             ; DF05 C6 52
        lda     TD5                             ; DF07 A5 52
        ora     TD6                             ; DF09 05 53
        bne     LDED8                           ; DF0B D0 CB
        beq     LDEA1                           ; DF0D F0 92
SDF0F:
        .byte   " protected! "                  ; DF0F 20 70 72 6F 74 65 63 74
                                                ; DF17 65 64 21 20
        .byte   $00                             ; DF1B 00
; ----------------------------------------------------------------------------
LDF1C:
        pha                                     ; DF1C 48
        lda     DRIVE                           ; DF1D AD 00 05
        eor     #$03                            ; DF20 49 03
        beq     LDF25                           ; DF22 F0 01
        sei                                     ; DF24 78
LDF25:
        pla                                     ; DF25 68
        rts                                     ; DF26 60

; ----------------------------------------------------------------------------
SDF27:
        .byte   "?????????BAK"                  ; DF27 3F 3F 3F 3F 3F 3F 3F 3F
                                                ; DF2F 3F 42 41 4B
; ----------------------------------------------------------------------------
; DELBAK
_XDELBK:
        ldx     #$0B                            ; DF33 A2 0B
LDF35:
        lda     SDF27,x                         ; DF35 BD 27 DF
        sta     BUFNOM+1,x                      ; DF38 9D 18 05
        dex                                     ; DF3B CA
        bpl     LDF35                           ; DF3C 10 F7
        sec                                     ; DF3E 38
        .byte   $24                             ; DF3F 24
; DEL
_XDELN:
        clc                                     ; DF40 18
        ror     INDIC0                          ; DF41 66 55
        jsr     _XTRVNM                         ; DF43 20 27 D7
        bne     LDF4B                           ; DF46 D0 03
        jmp     LDCC6                           ; DF48 4C C6 DC

; ----------------------------------------------------------------------------
LDF4B:
        jsr     LE0D7                           ; DF4B 20 D7 E0
        bcs     LDF63                           ; DF4E B0 13
        jsr     LDE4D                           ; DF50 20 4D DE
        bcc     LDF97                           ; DF53 90 42
LDF55:
        rts                                     ; DF55 60

; ----------------------------------------------------------------------------
LDF56:
        _XWR0                                   ; DF56 00 10
LDF58:
        jsr     _XTRVNX                         ; DF58 20 3B D7
LDF5B:
        ldx     POSNMX                          ; DF5B AE 16 05
        jsr     LD742                           ; DF5E 20 42 D7
        beq     LDF97                           ; DF61 F0 34
LDF63:
        _XCRLF                                  ; DF63 00 25
        jsr     LD6AA                           ; DF65 20 AA D6
        bit     INDIC0                          ; DF68 24 55
        bmi     LDF89                           ; DF6A 30 1D
        lda     #$12                            ; DF6C A9 12
        ldy     #$E1                            ; DF6E A0 E1
        _XWSTR0                                 ; DF70 00 14
LDF72:
        _XRDW0                                  ; DF72 00 0C
        and     #$DF                            ; DF74 29 DF
        cmp     #$4E                            ; DF76 C9 4E
        beq     LDF56                           ; DF78 F0 DC
        cmp     #$1B                            ; DF7A C9 1B
        beq     LDF55                           ; DF7C F0 D7
        cmp     #$4F                            ; DF7E C9 4F
        bne     LDF72                           ; DF80 D0 F0
        _XWR0                                   ; DF82 00 10
        _XCRLF                                  ; DF84 00 25
        jsr     LD6AA                           ; DF86 20 AA D6
LDF89:
        jsr     _XNOMDE                         ; DF89 20 4F DE
        bcs     LDF58                           ; DF8C B0 CA
        lda     #$1B                            ; DF8E A9 1B
        ldy     #$E1                            ; DF90 A0 E1
        _XWSTR0                                 ; DF92 00 14
        jmp     LDF5B                           ; DF94 4C 5B DF

; ----------------------------------------------------------------------------
LDF97:
        lda     #$00                            ; DF97 A9 00
        sta     TD3                             ; DF99 85 50
        lda     BUF2+4                          ; DF9B AD 04 C2
        ldx     BUF2+5                          ; DF9E AE 05 C2
        clc                                     ; DFA1 18
        .byte   $24                             ; DFA2 24
LDFA3:
        sec                                     ; DFA3 38
        sbc     #$0F                            ; DFA4 E9 0F
        inc     TD3                             ; DFA6 E6 50
        bcs     LDFA3                           ; DFA8 B0 F9
        dex                                     ; DFAA CA
        bpl     LDFA3                           ; DFAB 10 F6
        ldx     BUF2+8                          ; DFAD AE 08 C2
        cpx     TD3                             ; DFB0 E4 50
        beq     LDF55                           ; DFB2 F0 A1
        dex                                     ; DFB4 CA
        lda     #$14                            ; DFB5 A9 14
        ldy     #$04                            ; DFB7 A0 04
        stx     TD3                             ; DFB9 86 50
LDFBB:
        dec     TD3                             ; DFBB C6 50
        bne     LDFC5                           ; DFBD D0 06
        sta     DECREP                          ; DFBF 8D 37 05
        sty     DECRES                          ; DFC2 8C 38 05
LDFC5:
        jsr     _XPBUF1                         ; DFC5 20 3D D6
        lda     BUF1                            ; DFC8 AD 00 C1
        ldy     BUF1+1                          ; DFCB AC 01 C1
        bne     LDFBB                           ; DFCE D0 EB
        ldy     #$10                            ; DFD0 A0 10
        sty     TD3                             ; DFD2 84 50
LDFD4:
        jsr     LD7A2                           ; DFD4 20 A2 D7
        ldy     TD3                             ; DFD7 A4 50
LDFD9:
        cpy     BUF1+2                          ; DFD9 CC 02 C1
        beq     LDFF2                           ; DFDC F0 14
        lda     BUF1,y                          ; DFDE B9 00 C1
        sta     BUF3,x                          ; DFE1 9D 00 C4
        iny                                     ; DFE4 C8
        inx                                     ; DFE5 E8
        stx     BUF3+2                          ; DFE6 8E 02 C4
        bne     LDFD9                           ; DFE9 D0 EE
        sty     TD3                             ; DFEB 84 50
        jsr     _XSCAT                          ; DFED 20 66 D6
        beq     LDFD4                           ; DFF0 F0 E2
LDFF2:
        jsr     _XSCAT                          ; DFF2 20 66 D6
        dec     BUF2+8                          ; DFF5 CE 08 C2
        lda     DECREP                          ; DFF8 AD 37 05
        ldy     DECRES                          ; DFFB AC 38 05
        jsr     LD646                           ; DFFE 20 46 D6
        lda     BUF3                            ; E001 AD 00 C4
        pha                                     ; E004 48
        lda     BUF3+1                          ; E005 AD 01 C4
        pha                                     ; E008 48
        lda     #$00                            ; E009 A9 00
        sta     BUF3                            ; E00B 8D 00 C4
        sta     BUF3+1                          ; E00E 8D 01 C4
        jsr     _XSVSEC                         ; E011 20 9A D6
        pla                                     ; E014 68
        tay                                     ; E015 A8
        pla                                     ; E016 68
        ldx     BUF2+8                          ; E017 AE 08 C2
        cpx     #$1D                            ; E01A E0 1D
        bcc     LE021                           ; E01C 90 03
        jsr     _XDETSE                         ; E01E 20 0B D9
LE021:
        jsr     LD66E                           ; E021 20 6E D6
        jmp     LDF97                           ; E024 4C 97 DF

; ----------------------------------------------------------------------------
; Change le nom d'un fichier
_XREN:
        lda     BUFTRV                          ; E027 AD 00 01
        cmp     BUFNOM                          ; E02A CD 17 05
        bne     LE042                           ; E02D D0 13
        ldx     #$0C                            ; E02F A2 0C
LE031:
        ldy     BUFNOM+1,x                      ; E031 BC 18 05
        lda     BUFTRV+1,x                      ; E034 BD 01 01
        sta     BUFNOM+1,x                      ; E037 9D 18 05
        cmp     #$3F                            ; E03A C9 3F
        beq     LE045                           ; E03C F0 07
        cpy     #$3F                            ; E03E C0 3F
        bne     LE049                           ; E040 D0 07
LE042:
        jmp     LDB84                           ; E042 4C 84 DB

; ----------------------------------------------------------------------------
LE045:
        cpy     #$3F                            ; E045 C0 3F
        bne     LE042                           ; E047 D0 F9
LE049:
        tya                                     ; E049 98
        sta     $0111,x                         ; E04A 9D 11 01
        dex                                     ; E04D CA
        bpl     LE031                           ; E04E 10 E1
        jsr     _XTRVNM                         ; E050 20 27 D7
        bne     LE05D                           ; E053 D0 08
        jmp     LDCC6                           ; E055 4C C6 DC

; ----------------------------------------------------------------------------
LE058:
        jsr     _XTRVNX                         ; E058 20 3B D7
        beq     LE0D6                           ; E05B F0 79
LE05D:
        lda     POSNMP                          ; E05D AD 14 05
        ldy     POSNMS                          ; E060 AC 15 05
        sta     TD3                             ; E063 85 50
        sty     TD4                             ; E065 84 51
        stx     TD5                             ; E067 86 52
        ldy     #$00                            ; E069 A0 00
LE06B:
        lda     BUFNOM+1,y                      ; E06B B9 18 05
        cmp     #$3F                            ; E06E C9 3F
        bne     LE077                           ; E070 D0 05
        lda     BUF3,x                          ; E072 BD 00 C4
        bcs     LE07A                           ; E075 B0 03
LE077:
        lda     $0111,y                         ; E077 B9 11 01
LE07A:
        sta     BUFNOM+1,y                      ; E07A 99 18 05
        inx                                     ; E07D E8
        iny                                     ; E07E C8
        cpy     #$0C                            ; E07F C0 0C
        bne     LE06B                           ; E081 D0 E8
LE083:
        lda     BUF3,x                          ; E083 BD 00 C4
        sta     BUFNOM+1,y                      ; E086 99 18 05
        inx                                     ; E089 E8
        iny                                     ; E08A C8
        cpy     #$10                            ; E08B C0 10
        bne     LE083                           ; E08D D0 F4
        jsr     LD72A                           ; E08F 20 2A D7
        php                                     ; E092 08
        beq     LE0A0                           ; E093 F0 0B
        _XCRLF                                  ; E095 00 25
        jsr     LD6AA                           ; E097 20 AA D6
        lda     #$24                            ; E09A A9 24
        ldy     #$E1                            ; E09C A0 E1
        _XWSTR0                                 ; E09E 00 14
LE0A0:
        lda     TD3                             ; E0A0 A5 50
        ldy     TD4                             ; E0A2 A4 51
        sta     POSNMP                          ; E0A4 8D 14 05
        sty     POSNMS                          ; E0A7 8C 15 05
        ldx     TD5                             ; E0AA A6 52
        stx     POSNMX                          ; E0AC 8E 16 05
        jsr     LD646                           ; E0AF 20 46 D6
        plp                                     ; E0B2 28
        bne     LE0C9                           ; E0B3 D0 14
        _XCRLF                                  ; E0B5 00 25
        jsr     LD6AA                           ; E0B7 20 AA D6
        jsr     _XBUCA                          ; E0BA 20 E8 D6
        lda     #$31                            ; E0BD A9 31
        ldy     #$E1                            ; E0BF A0 E1
        _XWSTR0                                 ; E0C1 00 14
        jsr     _XSCAT                          ; E0C3 20 66 D6
        jsr     LD6AA                           ; E0C6 20 AA D6
LE0C9:
        ldy     #$0B                            ; E0C9 A0 0B
LE0CB:
        lda     BUFTRV+1,y                      ; E0CB B9 01 01
        sta     BUFNOM+1,y                      ; E0CE 99 18 05
        dey                                     ; E0D1 88
        bpl     LE0CB                           ; E0D2 10 F7
        bmi     LE058                           ; E0D4 30 82
LE0D6:
        rts                                     ; E0D6 60

; ----------------------------------------------------------------------------
LE0D7:
        ldx     #$0B                            ; E0D7 A2 0B
        lda     #$3F                            ; E0D9 A9 3F
LE0DB:
        cmp     BUFNOM+1,x                      ; E0DB DD 18 05
        beq     LE0E4                           ; E0DE F0 04
        dex                                     ; E0E0 CA
        bpl     LE0DB                           ; E0E1 10 F8
        clc                                     ; E0E3 18
LE0E4:
        rts                                     ; E0E4 60

; ----------------------------------------------------------------------------
; PROT
_XPROT:
        lda     #$80                            ; E0E5 A9 80
        .byte   $2C                             ; E0E7 2C
; UNPROT
_XUNPROT:
        lda     #$00                            ; E0E8 A9 00
        sta     TD7                             ; E0EA 85 54
        jsr     LD72A                           ; E0EC 20 2A D7
        beq     LE10F                           ; E0EF F0 1E
        jsr     LE0D7                           ; E0F1 20 D7 E0
        bcs     LE106                           ; E0F4 B0 10
LE0F6:
        ldx     POSNMX                          ; E0F6 AE 16 05
        lda     BUF3+15,x                       ; E0F9 BD 0F C4
        and     #$7F                            ; E0FC 29 7F
        ora     TD7                             ; E0FE 05 54
        sta     BUF3+15,x                       ; E100 9D 0F C4
        jmp     _XSCAT                          ; E103 4C 66 D6

; ----------------------------------------------------------------------------
LE106:
        jsr     LE0F6                           ; E106 20 F6 E0
        jsr     _XTRVNX                         ; E109 20 3B D7
        bne     LE106                           ; E10C D0 F8
        rts                                     ; E10E 60

; ----------------------------------------------------------------------------
LE10F:
        jmp     LDCC6                           ; E10F 4C C6 DC

; ----------------------------------------------------------------------------
SE112:
        .byte   " (O/N) ?"                      ; E112 20 28 4F 2F 4E 29 20 3F
        .byte   $00                             ; E11A 00
SE11B:
        .byte   " deleted"                      ; E11B 20 64 65 6C 65 74 65 64
        .byte   $00                             ; E123 00
SE124:
        .byte   " exists     "                  ; E124 20 65 78 69 73 74 73 20
                                                ; E12C 20 20 20 20
        .byte   $00                             ; E130 00
SE131:
        .byte   " --> "                         ; E131 20 2D 2D 3E 20
        .byte   $00                             ; E136 00
; ----------------------------------------------------------------------------
; Change le nom de la disquette
_XDNAME:
        lda     #$14                            ; E137 A9 14
        ldy     #$01                            ; E139 A0 01
        jsr     _XPBUF1                         ; E13B 20 3D D6
        ldx     #$15                            ; E13E A2 15
        lda     #$20                            ; E140 A9 20
LE142:
        sta     BUF1+9,x                        ; E142 9D 09 C1
        dex                                     ; E145 CA
        bpl     LE142                           ; E146 10 FA
        ldy     ACC1E                           ; E148 A4 60
        beq     LE159                           ; E14A F0 0D
        cpy     #$15                            ; E14C C0 15
        bcs     LE15C                           ; E14E B0 0C
        dey                                     ; E150 88
LE151:
        lda     (ACC1M),y                       ; E151 B1 61
        sta     BUF1+9,y                        ; E153 99 09 C1
        dey                                     ; E156 88
        bpl     LE151                           ; E157 10 F8
LE159:
        jmp     _XSVSEC                         ; E159 4C 9A D6

; ----------------------------------------------------------------------------
LE15C:
        ldx     #$17                            ; E15C A2 17
        jmp     _XERREU                         ; E15E 4C 12 D6

; ----------------------------------------------------------------------------
SE161:
        .byte   $0C,$0A                         ; E161 0C 0A
        .byte   "Insert disk to be initialized  "; E163 49 6E 73 65 72 74 20 64
                                                ; E16B 69 73 6B 20 74 6F 20 62
                                                ; E173 65 20 69 6E 69 74 69 61
                                                ; E17B 6C 69 7A 65 64 20 20
        .byte   "       "                       ; E182 20 20 20 20 20 20 20
        .byte   $0A,$0D                         ; E189 0A 0D
        .byte   "into drive "                   ; E18B 69 6E 74 6F 20 64 72 69
                                                ; E193 76 65 20
        .byte   $00                             ; E196 00
SE197:
        .byte   $0A,$0D                         ; E197 0A 0D
        .byte   "Format another disk? (O/N)"    ; E199 46 6F 72 6D 61 74 20 61
                                                ; E1A1 6E 6F 74 68 65 72 20 64
                                                ; E1A9 69 73 6B 3F 20 28 4F 2F
                                                ; E1B1 4E 29
        .byte   $00                             ; E1B3 00
SE1B4:
        .byte   "    "                          ; E1B4 20 20 20 20
        .byte   $00                             ; E1B8 00
SE1B9:
        .byte   $0D,$0A                         ; E1B9 0D 0A
        .byte   "Format? (O/N)"                 ; E1BB 46 6F 72 6D 61 74 3F 20
                                                ; E1C3 28 4F 2F 4E 29
        .byte   $00                             ; E1C8 00
SE1C9:
        .byte   "  "                            ; E1C9 20 20
        .byte   $00                             ; E1CB 00
SE1CC:
        .byte   $0A,$0D                         ; E1CC 0A 0D
        .byte   "Formatting side"               ; E1CE 46 6F 72 6D 61 74 74 69
                                                ; E1D6 6E 67 20 73 69 64 65
        .byte   $00                             ; E1DD 00
SE1DE:
        .byte   $0A,$0A,$0A,$0D                 ; E1DE 0A 0A 0A 0D
        .byte   "Formatting done. "             ; E1E2 46 6F 72 6D 61 74 74 69
                                                ; E1EA 6E 67 20 64 6F 6E 65 2E
                                                ; E1F2 20
        .byte   $0A,$0D,$00                     ; E1F3 0A 0D 00
; ----------------------------------------------------------------------------
LE1F6:
        bit     FLGTEL                          ; E1F6 2C 0D 02
        bpl     LE203                           ; E1F9 10 08
        ldx     #$FE                            ; E1FB A2 FE
        .byte   $2C                             ; E1FD 2C
LE1FE:
        ldx     #$0F                            ; E1FE A2 0F
        jmp     _XERREU                         ; E200 4C 12 D6

; ----------------------------------------------------------------------------
LE203:
        rts                                     ; E203 60

; ----------------------------------------------------------------------------
; Initialise la disquette dans le lecteur DRIVE
_XINIT:
        jsr     LE1F6                           ; E204 20 F6 E1
        jsr     LD6C2                           ; E207 20 C2 D6
        lda     DESALO+1                        ; E20A AD 2E 05
        bit     FISALO+1                        ; E20D 2C 30 05
        bmi     LE214                           ; E210 30 02
        lda     #$11                            ; E212 A9 11
LE214:
        cmp     #$10                            ; E214 C9 10
        bcc     LE1FE                           ; E216 90 E6
        cmp     #$14                            ; E218 C9 14
        bcs     LE1FE                           ; E21A B0 E2
        sta     BUF2+7                          ; E21C 8D 07 C2
        sta     LE4F3+1                         ; E21F 8D F4 E4
        lda     DESALO                          ; E222 AD 2D 05
        bit     FISALO                          ; E225 2C 2F 05
        bmi     LE230                           ; E228 30 06
        ldy     DRIVE                           ; E22A AC 00 05
        lda     TABDRV,y                        ; E22D B9 08 02
LE230:
        sta     BUF2+9                          ; E230 8D 09 C2
        sta     LE528+1                         ; E233 8D 29 E5
        and     #$7F                            ; E236 29 7F
        sta     BUF2+6                          ; E238 8D 06 C2
        cmp     #$14                            ; E23B C9 14
        bcc     LE1FE                           ; E23D 90 BF
        cmp     #$66                            ; E23F C9 66
        bcs     LE1FE                           ; E241 B0 BB
        lda     #$61                            ; E243 A9 61
        ldy     #$E1                            ; E245 A0 E1
        _XWSTR0                                 ; E247 00 14
        jsr     LD954                           ; E249 20 54 D9
        jsr     _XBUF1                          ; E24C 20 C8 D6
        lda     #$FF                            ; E24F A9 FF
        ldx     #$10                            ; E251 A2 10
LE253:
        sta     BUF2,x                          ; E253 9D 00 C2
        sta     BUF2b,x                         ; E256 9D 00 C3
        inx                                     ; E259 E8
        bne     LE253                           ; E25A D0 F7
        sta     BUF2                            ; E25C 8D 00 C2
        inx                                     ; E25F E8
        stx     BUF2+8                          ; E260 8E 08 C2
        jsr     LD6CE                           ; E263 20 CE D6
        lda     #$10                            ; E266 A9 10
        sta     BUF3+2                          ; E268 8D 02 C4
        lda     BUF2+9                          ; E26B AD 09 C2
        and     #$7F                            ; E26E 29 7F
        ldy     BUF2+7                          ; E270 AC 07 C2
        sty     RES                             ; E273 84 00
        ldy     #$00                            ; E275 A0 00
        sty     RES+1                           ; E277 84 01
        _XMULT                                  ; E279 00 21
        lda     TR0                             ; E27B A5 0C
        ldy     TR1                             ; E27D A4 0D
        bit     BUF2+9                          ; E27F 2C 09 C2
        bpl     LE28A                           ; E282 10 06
        asl     a                               ; E284 0A
        pha                                     ; E285 48
        tya                                     ; E286 98
        rol     a                               ; E287 2A
        tay                                     ; E288 A8
        pla                                     ; E289 68
LE28A:
        sta     BUF2+2                          ; E28A 8D 02 C2
        sty     BUF2+3                          ; E28D 8C 03 C2
        lda     #$14                            ; E290 A9 14
        sta     TD2                             ; E292 85 4F
        clc                                     ; E294 18
        .byte   $24                             ; E295 24
LE296:
        sec                                     ; E296 38
        php                                     ; E297 08
        ldy     #$10                            ; E298 A0 10
        sty     TD3                             ; E29A 84 50
LE29C:
        lda     TD2                             ; E29C A5 4F
        ldy     TD3                             ; E29E A4 50
        jsr     _XCREAY                         ; E2A0 20 23 D9
        dec     TD3                             ; E2A3 C6 50
        bne     LE29C                           ; E2A5 D0 F5
        inc     TD2                             ; E2A7 E6 4F
        plp                                     ; E2A9 28
        bcc     LE296                           ; E2AA 90 EA
LE2AC:
        _XCRLF                                  ; E2AC 00 25
        jsr     LD960                           ; E2AE 20 60 D9
        ldx     #$15                            ; E2B1 A2 15
        jsr     LE48D                           ; E2B3 20 8D E4
        bcc     LE2B9                           ; E2B6 90 01
        rts                                     ; E2B8 60

; ----------------------------------------------------------------------------
LE2B9:
        _XCRLF                                  ; E2B9 00 25
        lda     #$B9                            ; E2BB A9 B9
        ldy     #$E1                            ; E2BD A0 E1
        _XWSTR0                                 ; E2BF 00 14
        php                                     ; E2C1 08
LE2C2:
        _XRDW0                                  ; E2C2 00 0C
        cmp     #$1B                            ; E2C4 C9 1B
        bne     LE2CA                           ; E2C6 D0 02
        plp                                     ; E2C8 28
        rts                                     ; E2C9 60

; ----------------------------------------------------------------------------
LE2CA:
        and     #$DF                            ; E2CA 29 DF
        cmp     #$4E                            ; E2CC C9 4E
        beq     LE2DC                           ; E2CE F0 0C
        cmp     #$4F                            ; E2D0 C9 4F
        bne     LE2C2                           ; E2D2 D0 EE
        _XCRLF                                  ; E2D4 00 25
        jsr     _XFORMA                         ; E2D6 20 51 E3
        jmp     LE2DE                           ; E2D9 4C DE E2

; ----------------------------------------------------------------------------
LE2DC:
        _XCRLF                                  ; E2DC 00 25
LE2DE:
        sei                                     ; E2DE 78
        lda     #$14                            ; E2DF A9 14
        ldy     #$01                            ; E2E1 A0 01
        jsr     _XSBUF1                         ; E2E3 20 87 D6
        lda     #$14                            ; E2E6 A9 14
        ldy     #$04                            ; E2E8 A0 04
        jsr     _XSBUF3                         ; E2EA 20 8A D6
        jsr     _XUPDAT                         ; E2ED 20 10 E3
        jsr     LD66E                           ; E2F0 20 6E D6
        plp                                     ; E2F3 28
        lda     #$97                            ; E2F4 A9 97
        ldy     #$E1                            ; E2F6 A0 E1
        _XWSTR0                                 ; E2F8 00 14
LE2FA:
        _XRD0                                   ; E2FA 00 08
        and     #$DF                            ; E2FC 29 DF
        cmp     #$4F                            ; E2FE C9 4F
        beq     LE307                           ; E300 F0 05
        cmp     #$4E                            ; E302 C9 4E
        bne     LE2FA                           ; E304 D0 F4
LE306:
        rts                                     ; E306 60

; ----------------------------------------------------------------------------
LE307:
        lda     #$61                            ; E307 A9 61
        ldy     #$E1                            ; E309 A0 E1
        _XWSTR0                                 ; E30B 00 14
        jmp     LE2AC                           ; E30D 4C AC E2

; ----------------------------------------------------------------------------
; Recopie le DOS en mémoire
_XUPDAT:
        ldx     #$2D                            ; E310 A2 2D
        stx     TD7                             ; E312 86 54
        ldy     #$00                            ; E314 A0 00
        sty     TRACK                           ; E316 8C 01 05
        iny                                     ; E319 C8
        lda     #$F3                            ; E31A A9 F3
        ldx     #$E4                            ; E31C A2 E4
LE31E:
        sta     RWBUF                           ; E31E 8D 03 05
        stx     RWBUF+1                         ; E321 8E 04 05
LE324:
        sty     SECTOR                          ; E324 8C 02 05
        lda     TRACK                           ; E327 AD 01 05
        jsr     _XCREAY                         ; E32A 20 23 D9
        jsr     _XSVSEC                         ; E32D 20 9A D6
        inc     RWBUF+1                         ; E330 EE 04 05
        ldy     SECTOR                          ; E333 AC 02 05
        cpy     BUF2+7                          ; E336 CC 07 C2
        bcc     LE340                           ; E339 90 05
        inc     TRACK                           ; E33B EE 01 05
        ldy     #$00                            ; E33E A0 00
LE340:
        iny                                     ; E340 C8
        dec     TD7                             ; E341 C6 54
        beq     LE306                           ; E343 F0 C1
        lda     TD7                             ; E345 A5 54
        cmp     #$2C                            ; E347 C9 2C
        bne     LE324                           ; E349 D0 D9
        lda     #$00                            ; E34B A9 00
        ldx     #$D4                            ; E34D A2 D4
        bne     LE31E                           ; E34F D0 CD
; Formate la disquette DRIVE
_XFORMA:
        lda     BUF2+9                          ; E351 AD 09 C2
        asl     a                               ; E354 0A
        lda     #$30                            ; E355 A9 30
        sta     DEFAFF                          ; E357 85 14
        php                                     ; E359 08
        clc                                     ; E35A 18
        jsr     LE3B7                           ; E35B 20 B7 E3
        plp                                     ; E35E 28
        bcc     LE365                           ; E35F 90 04
        sec                                     ; E361 38
        jsr     LE3B7                           ; E362 20 B7 E3
LE365:
        lda     #$DE                            ; E365 A9 DE
        ldy     #$E1                            ; E367 A0 E1
        _XWSTR0                                 ; E369 00 14
        ldx     #$00                            ; E36B A2 00
        _XCSSCR                                 ; E36D 00 35
        rts                                     ; E36F 60

; ----------------------------------------------------------------------------
LE370:
        lda     TD7                             ; E370 A5 54
        ldy     TE538+1                         ; E372 AC 39 E5
        sta     TR5                             ; E375 85 11
        sty     TR6                             ; E377 84 12
        ldx     BUF2+7                          ; E379 AE 07 C2
LE37C:
        ldy     #$00                            ; E37C A0 00
        lda     TRACK                           ; E37E AD 01 05
        and     #$7F                            ; E381 29 7F
        sta     (TR5),y                         ; E383 91 11
        iny                                     ; E385 C8
        lda     TD6                             ; E386 A5 53
        sta     (TR5),y                         ; E388 91 11
        iny                                     ; E38A C8
        lda     TD5                             ; E38B A5 52
        clc                                     ; E38D 18
        adc     #$01                            ; E38E 69 01
        jsr     LE3AD                           ; E390 20 AD E3
        sta     (TR5),y                         ; E393 91 11
        clc                                     ; E395 18
        lda     TD0                             ; E396 A5 4D
        adc     TR5                             ; E398 65 11
        sta     TR5                             ; E39A 85 11
        lda     TE538+2                         ; E39C AD 3A E5
        adc     TR6                             ; E39F 65 12
        sta     TR6                             ; E3A1 85 12
        dex                                     ; E3A3 CA
        bne     LE37C                           ; E3A4 D0 D6
        lda     TD5                             ; E3A6 A5 52
        adc     BUF2+7                          ; E3A8 6D 07 C2
        sbc     #$03                            ; E3AB E9 03
LE3AD:
        cmp     TD4                             ; E3AD C5 51
        bcc     LE3B4                           ; E3AF 90 03
        sbc     BUF2+7                          ; E3B1 ED 07 C2
LE3B4:
        sta     TD5                             ; E3B4 85 52
        rts                                     ; E3B6 60

; ----------------------------------------------------------------------------
LE3B7:
        php                                     ; E3B7 08
        sei                                     ; E3B8 78
        php                                     ; E3B9 08
        php                                     ; E3BA 08
        ldx     BUF2+7                          ; E3BB AE 07 C2
        stx     TD4                             ; E3BE 86 51
        lda     #$0C                            ; E3C0 A9 0C
        cpx     #$13                            ; E3C2 E0 13
        bcs     LE3CE                           ; E3C4 B0 08
        lda     #$1E                            ; E3C6 A9 1E
        cpx     #$12                            ; E3C8 E0 12
        bcs     LE3CE                           ; E3CA B0 02
        lda     #$2F                            ; E3CC A9 2F
LE3CE:
        sta     SE560+2                         ; E3CE 8D 62 E5
        clc                                     ; E3D1 18
        adc     #$3C                            ; E3D2 69 3C
        sta     TD0                             ; E3D4 85 4D
        lda     BUF2+9                          ; E3D6 AD 09 C2
        and     #$7F                            ; E3D9 29 7F
        sta     TD3                             ; E3DB 85 50
        lda     #$00                            ; E3DD A9 00
        ldy     TE538+1                         ; E3DF AC 39 E5
        sta     TR5                             ; E3E2 85 11
        sty     TR6                             ; E3E4 84 12
        sta     RWBUF                           ; E3E6 8D 03 05
        sty     RWBUF+1                         ; E3E9 8C 04 05
        plp                                     ; E3EC 28
        tax                                     ; E3ED AA
        tay                                     ; E3EE A8
        rol     a                               ; E3EF 2A
        sta     TD6                             ; E3F0 85 53
        plp                                     ; E3F2 28
        ror     a                               ; E3F3 6A
        sta     TRACK                           ; E3F4 8D 01 05
        stx     TD5                             ; E3F7 86 52
        lda     BUF2+7                          ; E3F9 AD 07 C2
        cmp     #$11                            ; E3FC C9 11
        bcs     LE406                           ; E3FE B0 06
        jsr     LE472                           ; E400 20 72 E4
        lda     #$70                            ; E403 A9 70
        .byte   $2C                             ; E405 2C
LE406:
        lda     #$10                            ; E406 A9 10
        sta     TD7                             ; E408 85 54
LE40A:
        ldx     #$0B                            ; E40A A2 0B
        jsr     LE472                           ; E40C 20 72 E4
        dec     TD4                             ; E40F C6 51
        bne     LE40A                           ; E411 D0 F7
        lda     #$4E                            ; E413 A9 4E
LE415:
        sta     (TR5),y                         ; E415 91 11
        iny                                     ; E417 C8
        bne     LE415                           ; E418 D0 FB
        inc     TR6                             ; E41A E6 12
        ldx     TR6                             ; E41C A6 12
        cpx     TE538                           ; E41E EC 38 E5
        bne     LE415                           ; E421 D0 F2
        ldx     BUF2+7                          ; E423 AE 07 C2
        inx                                     ; E426 E8
        stx     TD4                             ; E427 86 51
        ldy     #$03                            ; E429 A0 03
LE42B:
        ldx     #$5B                            ; E42B A2 5B
        jsr     RWTS                            ; E42D 20 4F 05
        dey                                     ; E430 88
        bne     LE42B                           ; E431 D0 F8
        ldx     #$08                            ; E433 A2 08
        jsr     RWTS                            ; E435 20 4F 05
LE438:
        jsr     LE370                           ; E438 20 70 E3
        ldx     #$F0                            ; E43B A2 F0
        jsr     LD658                           ; E43D 20 58 D6
        cli                                     ; E440 58
        ldx     #$00                            ; E441 A2 00
        _XCOSCR                                 ; E443 00 34
        lda     #$CC                            ; E445 A9 CC
        ldy     #$E1                            ; E447 A0 E1
        _XWSTR0                                 ; E449 00 14
        lda     TRACK                           ; E44B AD 01 05
        and     #$80                            ; E44E 29 80
        rol     a                               ; E450 2A
        rol     a                               ; E451 2A
        adc     #$30                            ; E452 69 30
        _XWR0                                   ; E454 00 10
        lda     #$09                            ; E456 A9 09
        ldy     #$DA                            ; E458 A0 DA
        _XWSTR0                                 ; E45A 00 14
        lda     TRACK                           ; E45C AD 01 05
        and     #$7F                            ; E45F 29 7F
        jsr     LD94D                           ; E461 20 4D D9
        lda     #$0B                            ; E464 A9 0B
        _XWR0                                   ; E466 00 10
        sei                                     ; E468 78
        inc     TRACK                           ; E469 EE 01 05
        dec     TD3                             ; E46C C6 50
        bne     LE438                           ; E46E D0 C8
        plp                                     ; E470 28
LE471:
        rts                                     ; E471 60

; ----------------------------------------------------------------------------
LE472:
        lda     TE538+3,x                       ; E472 BD 3B E5
        inx                                     ; E475 E8
        cmp     #$FF                            ; E476 C9 FF
        beq     LE471                           ; E478 F0 F7
        sta     TR7                             ; E47A 85 13
        lda     TE538+3,x                       ; E47C BD 3B E5
        inx                                     ; E47F E8
LE480:
        sta     (TR5),y                         ; E480 91 11
        iny                                     ; E482 C8
        bne     LE487                           ; E483 D0 02
        inc     TR6                             ; E485 E6 12
LE487:
        dec     TR7                             ; E487 C6 13
        bne     LE480                           ; E489 D0 F5
        beq     LE472                           ; E48B F0 E5
LE48D:
        ldy     #$FF                            ; E48D A0 FF
        stx     TD6                             ; E48F 86 53
        dex                                     ; E491 CA
        bmi     LE4F2                           ; E492 30 5E
        stx     TD7                             ; E494 86 54
LE496:
        iny                                     ; E496 C8
LE497:
        _XRDW0                                  ; E497 00 0C
        cmp     #$20                            ; E499 C9 20
        bcc     LE4B5                           ; E49B 90 18
        cmp     #$7D                            ; E49D C9 7D
        bcs     LE4D3                           ; E49F B0 32
        cpy     TD6                             ; E4A1 C4 53
        bcs     LE497                           ; E4A3 B0 F2
        sta     BUF1+9,y                        ; E4A5 99 09 C1
        _XWR0                                   ; E4A8 00 10
        cpy     TD7                             ; E4AA C4 54
        bcc     LE496                           ; E4AC 90 E8
        lda     #$08                            ; E4AE A9 08
        _XWR0                                   ; E4B0 00 10
        jmp     LE497                           ; E4B2 4C 97 E4

; ----------------------------------------------------------------------------
LE4B5:
        cmp     #$1B                            ; E4B5 C9 1B
        beq     LE4F2                           ; E4B7 F0 39
        cmp     #$08                            ; E4B9 C9 08
        bne     LE4C6                           ; E4BB D0 09
        cpy     #$00                            ; E4BD C0 00
        beq     LE497                           ; E4BF F0 D6
        _XWR0                                   ; E4C1 00 10
        dey                                     ; E4C3 88
        bpl     LE497                           ; E4C4 10 D1
LE4C6:
        cmp     #$09                            ; E4C6 C9 09
        bne     LE4ED                           ; E4C8 D0 23
        cpy     TD7                             ; E4CA C4 54
        bcs     LE497                           ; E4CC B0 C9
        _XWR0                                   ; E4CE 00 10
        iny                                     ; E4D0 C8
        bne     LE497                           ; E4D1 D0 C4
LE4D3:
        cmp     #$7F                            ; E4D3 C9 7F
        bne     LE4ED                           ; E4D5 D0 16
        tya                                     ; E4D7 98
        beq     LE497                           ; E4D8 F0 BD
        lda     #$08                            ; E4DA A9 08
        _XWR0                                   ; E4DC 00 10
        dey                                     ; E4DE 88
        lda     #$20                            ; E4DF A9 20
        sta     BUF1+9,y                        ; E4E1 99 09 C1
        _XWR0                                   ; E4E4 00 10
        lda     #$08                            ; E4E6 A9 08
        _XWR0                                   ; E4E8 00 10
        jmp     LE497                           ; E4EA 4C 97 E4

; ----------------------------------------------------------------------------
LE4ED:
        cmp     #$0D                            ; E4ED C9 0D
        clc                                     ; E4EF 18
        bne     LE497                           ; E4F0 D0 A5
LE4F2:
        rts                                     ; E4F2 60

; ----------------------------------------------------------------------------
; Modification de l'opérande depuis LE21F
LE4F3:
        _XWR1                                   ; E4F3 00 11
        bit     _RWTS                           ; E4F5 2C 00 D4
        lda     #$00                            ; E4F8 A9 00
        _XGOKBD                                 ; E4FA 00 52
        lda     #$00                            ; E4FC A9 00
        sta     ERRFLG                          ; E4FE 8D 0F 05
        sta     NBFIC                           ; E501 8D 49 05
        lda     #$4C                            ; E504 A9 4C
        ldy     #$00                            ; E506 A0 00
        ldx     #$D4                            ; E508 A2 D4
        sta     RWTS                            ; E50A 8D 4F 05
        sty     RWTS+1                          ; E50D 8C 50 05
        stx     RWTS+2                          ; E510 8E 51 05
        ldx     #$03                            ; E513 A2 03
LE515:
        cpx     DRVDEF                          ; E515 EC 0C 02
        bne     LE51D                           ; E518 D0 03
        lda     #$02                            ; E51A A9 02
        .byte   $2C                             ; E51C 2C
LE51D:
        lda     #$00                            ; E51D A9 00
        sta     RWBUF+6,x                       ; E51F 9D 09 05
        dex                                     ; E522 CA
        bpl     LE515                           ; E523 10 F0
        jsr     XERVEC                          ; E525 20 32 FF
; Modification de l'opérande depuis LE233
LE528:
        lda     #$D0                            ; E528 A9 D0
        ldx     #$03                            ; E52A A2 03
LE52C:
        ldy     TABDRV,x                        ; E52C BC 08 02
        beq     LE534                           ; E52F F0 03
        sta     TABDRV,x                        ; E531 9D 08 02
LE534:
        dex                                     ; E534 CA
        bpl     LE52C                           ; E535 10 F5
        rts                                     ; E537 60

; ----------------------------------------------------------------------------
TE538:
        .byte   $B3,$9A,$01,$28,$4E,$0C,$00,$03 ; E538 B3 9A 01 28 4E 0C 00 03
        .byte   $F6,$01,$FC,$28,$4E,$FF,$0C,$00 ; E540 F6 01 FC 28 4E FF 0C 00
        .byte   $03,$F5,$01,$FE,$01,$00,$01,$00 ; E548 03 F5 01 FE 01 00 01 00
        .byte   $01,$00,$01,$01,$01,$F7,$16,$4E ; E550 01 00 01 01 01 F7 16 4E
        .byte   $0C,$00,$03,$F5,$01,$FB,$00,$00 ; E558 0C 00 03 F5 01 FB 00 00
; ----------------------------------------------------------------------------
; SE560+2 modifié depuis LE3C2
SE560:
        .byte   $01,$F7                         ; E560 01 F7
        .byte   "/N"                            ; E562 2F 4E
        .byte   $FF,$0A,$0D                     ; E564 FF 0A 0D
        .byte   "Insert source disk         "   ; E567 49 6E 73 65 72 74 20 73
                                                ; E56F 6F 75 72 63 65 20 64 69
                                                ; E577 73 6B 20 20 20 20 20 20
                                                ; E57F 20 20 20
        .byte   $00                             ; E582 00
SE583:
        .byte   $0A,$0D                         ; E583 0A 0D
        .byte   "Insert target disk        "    ; E585 49 6E 73 65 72 74 20 74
                                                ; E58D 61 72 67 65 74 20 64 69
                                                ; E595 73 6B 20 20 20 20 20 20
                                                ; E59D 20 20
        .byte   $00                             ; E59F 00
SE5A0:
        .byte   $0A,$0A,$0D                     ; E5A0 0A 0A 0D
        .byte   "Press any key to continue..."  ; E5A3 50 72 65 73 73 20 61 6E
                                                ; E5AB 79 20 6B 65 79 20 74 6F
                                                ; E5B3 20 63 6F 6E 74 69 6E 75
                                                ; E5BB 65 2E 2E 2E
        .byte   $00                             ; E5BF 00
SE5C0:
        .byte   "     "                         ; E5C0 20 20 20 20 20
        .byte   $00                             ; E5C5 00
SE5C6:
        .byte   $0A,$0D                         ; E5C6 0A 0D
        .byte   "Insert disks to "              ; E5C8 49 6E 73 65 72 74 20 64
                                                ; E5D0 69 73 6B 73 20 74 6F 20
        .byte   $00                             ; E5D8 00
SE5D9:
        .byte   "             "                 ; E5D9 20 20 20 20 20 20 20 20
                                                ; E5E1 20 20 20 20 20
        .byte   $00                             ; E5E6 00
SE5E7:
        .byte   "copy   "                       ; E5E7 63 6F 70 79 20 20 20
        .byte   $00                             ; E5EE 00
SE5EF:
        .byte   $0A,$0D                         ; E5EF 0A 0D
        .byte   "from drive "                   ; E5F1 66 72 6F 6D 20 64 72 69
                                                ; E5F9 76 65 20
        .byte   $00                             ; E5FC 00
SE5FD:
        .byte   " to drive "                    ; E5FD 20 74 6F 20 64 72 69 76
                                                ; E605 65 20
        .byte   $00                             ; E607 00
SE608:
        .byte   " "                             ; E608 20
        .byte   $00                             ; E609 00
SE60A:
        .byte   "    "                          ; E60A 20 20 20 20
        .byte   $00                             ; E60E 00
SE60F:
        .byte   $0A,$0A,$0D                     ; E60F 0A 0A 0D
        .byte   "Copy complete "                ; E612 43 6F 70 79 20 63 6F 6D
                                                ; E61A 70 6C 65 74 65 20
        .byte   $0A                             ; E620 0A
SE621:
        .byte   $0D,$00                         ; E621 0D 00
        .byte   " replaced"                     ; E623 20 72 65 70 6C 61 63 65
                                                ; E62B 64
        .byte   $00                             ; E62C 00
SE62D:
        .byte   " merged"                       ; E62D 20 6D 65 72 67 65 64
        .byte   $00                             ; E634 00
SE635:
        .byte   " new "                         ; E635 20 6E 65 77 20
        .byte   $00                             ; E63A 00
SE63B:
        .byte   $0A,$0D                         ; E63B 0A 0D
        .byte   "into drive "                   ; E63D 69 6E 74 6F 20 64 72 69
                                                ; E645 76 65 20
        .byte   $00                             ; E648 00
SE649:
        .byte   "    "                          ; E649 20 20 20 20
        .byte   $00                             ; E64D 00
SE64E:
        .byte   $0A,$0D                         ; E64E 0A 0D
        .byte   "WARNING: BASIC program may be c"; E650 57 41 52 4E 49 4E 47 3A
                                                ; E658 20 42 41 53 49 43 20 70
                                                ; E660 72 6F 67 72 61 6D 20 6D
                                                ; E668 61 79 20 62 65 20 63
        .byte   "leared"                        ; E66F 6C 65 61 72 65 64
        .byte   $0A,$0D,$00                     ; E675 0A 0D 00
; ----------------------------------------------------------------------------
LE678:
        lda     #$4E                            ; E678 A9 4E
        ldy     #$E6                            ; E67A A0 E6
        _XWSTR0                                 ; E67C 00 14
        rts                                     ; E67E 60

; ----------------------------------------------------------------------------
LE67F:
        lsr     TD0                             ; E67F 46 4D
        lsr     TD2                             ; E681 46 4F
        ldx     #$0C                            ; E683 A2 0C
LE685:
        dex                                     ; E685 CA
        bmi     LE6AE                           ; E686 30 26
        lda     BUFTRV+1,x                      ; E688 BD 01 01
        sta     BUFNOM+1,x                      ; E68B 9D 18 05
        ldy     BUFTRV+14,x                     ; E68E BC 0E 01
        cmp     #$3F                            ; E691 C9 3F
        beq     LE6A1                           ; E693 F0 0C
        cpy     #$3F                            ; E695 C0 3F
        bne     LE685                           ; E697 D0 EC
        bit     ACC3+1                          ; E699 24 70
        bvs     LE6AB                           ; E69B 70 0E
        ror     TD0                             ; E69D 66 4D
        bne     LE685                           ; E69F D0 E4
LE6A1:
        ror     TD2                             ; E6A1 66 4F
        bit     ACC3+1                          ; E6A3 24 70
        bvs     LE685                           ; E6A5 70 DE
        cpy     #$3F                            ; E6A7 C0 3F
        beq     LE685                           ; E6A9 F0 DA
LE6AB:
        jmp     LDB84                           ; E6AB 4C 84 DB

; ----------------------------------------------------------------------------
LE6AE:
        bit     TD0                             ; E6AE 24 4D
        bpl     LE6BE                           ; E6B0 10 0C
        ldx     #$0C                            ; E6B2 A2 0C
LE6B4:
        lda     BUFTRV+13,x                     ; E6B4 BD 0D 01
        cmp     #$3F                            ; E6B7 C9 3F
        bne     LE6AB                           ; E6B9 D0 F0
        dex                                     ; E6BB CA
        bne     LE6B4                           ; E6BC D0 F6
LE6BE:
        rts                                     ; E6BE 60

; ----------------------------------------------------------------------------
; Copie de fichiers
_XCOPY:
        lda     VASALO0                         ; E6BF AD 28 05
        sta     ACC3+1                          ; E6C2 85 70
        lda     VASALO1                         ; E6C4 AD 29 05
        sta     ACC3+2                          ; E6C7 85 71
        ldx     #$0C                            ; E6C9 A2 0C
LE6CB:
        lda     BUFNOM,x                        ; E6CB BD 17 05
        sta     BUFTRV+13,x                     ; E6CE 9D 0D 01
        dex                                     ; E6D1 CA
        bpl     LE6CB                           ; E6D2 10 F7
LE6D4:
        ldx     #$24                            ; E6D4 A2 24
        _XTSTBU                                 ; E6D6 00 56
        bcc     LE6D4                           ; E6D8 90 FA
        php                                     ; E6DA 08
        cli                                     ; E6DB 58
        jsr     LE67F                           ; E6DC 20 7F E6
        lda     BUFTRV                          ; E6DF AD 00 01
        sta     DRIVE                           ; E6E2 8D 00 05
        cmp     BUFTRV+13                       ; E6E5 CD 0D 01
        beq     LE6F9                           ; E6E8 F0 0F
        lda     ACC3+2                          ; E6EA A5 71
        ora     #$80                            ; E6EC 09 80
        sta     ACC3+2                          ; E6EE 85 71
        bne     LE6F8                           ; E6F0 D0 06
LE6F2:
        plp                                     ; E6F2 28
LE6F3:
        lda     #$00                            ; E6F3 A9 00
        sta     ACC1J                           ; E6F5 85 67
        rts                                     ; E6F7 60

; ----------------------------------------------------------------------------
LE6F8:
        nop                                     ; E6F8 EA
LE6F9:
        jsr     LDF1C                           ; E6F9 20 1C DF
        jsr     _XTRVNM                         ; E6FC 20 27 D7
        cli                                     ; E6FF 58
        bne     LE705                           ; E700 D0 03
        jmp     LDCC6                           ; E702 4C C6 DC

; ----------------------------------------------------------------------------
LE705:
        stx     TD7                             ; E705 86 54
        bit     ACC3+2                          ; E707 24 71
        bvc     LE732                           ; E709 50 27
        cli                                     ; E70B 58
        jsr     LD6AA                           ; E70C 20 AA D6
        lda     #$12                            ; E70F A9 12
        ldy     #$E1                            ; E711 A0 E1
        _XWSTR0                                 ; E713 00 14
LE715:
        cli                                     ; E715 58
        _XRDW0                                  ; E716 00 0C
        jsr     LDF1C                           ; E718 20 1C DF
        and     #$DF                            ; E71B 29 DF
        cmp     #$1B                            ; E71D C9 1B
        beq     LE6F2                           ; E71F F0 D1
        cmp     #$4E                            ; E721 C9 4E
        bne     LE728                           ; E723 D0 03
        jmp     LE786                           ; E725 4C 86 E7

; ----------------------------------------------------------------------------
LE728:
        cmp     #$4F                            ; E728 C9 4F
        bne     LE715                           ; E72A D0 E9
        _XWR0                                   ; E72C 00 10
        _XCRLF                                  ; E72E 00 25
        bit     ACC3+2                          ; E730 24 71
LE732:
        lda     POSNMP                          ; E732 AD 14 05
        pha                                     ; E735 48
        lda     POSNMS                          ; E736 AD 15 05
        pha                                     ; E739 48
        lda     POSNMX                          ; E73A AD 16 05
        pha                                     ; E73D 48
        jsr     LE794                           ; E73E 20 94 E7
        pla                                     ; E741 68
        tay                                     ; E742 A8
        sta     TD7                             ; E743 85 54
        pla                                     ; E745 68
        sta     SECTOR                          ; E746 8D 02 05
        sta     POSNMS                          ; E749 8D 15 05
        pla                                     ; E74C 68
        bcc     LE752                           ; E74D 90 03
        jmp     LE6F2                           ; E74F 4C F2 E6

; ----------------------------------------------------------------------------
LE752:
        sta     TRACK                           ; E752 8D 01 05
        sta     POSNMP                          ; E755 8D 14 05
        lda     BUFTRV                          ; E758 AD 00 01
        sta     DRIVE                           ; E75B 8D 00 05
        bit     ACC3+1                          ; E75E 24 70
        bvc     LE768                           ; E760 50 06
        sty     POSNMX                          ; E762 8C 16 05
        jsr     _XPRSEC                         ; E765 20 56 D6
LE768:
        ldx     ACC1E                           ; E768 A6 66
        bne     LE76E                           ; E76A D0 02
        beq     LE770                           ; E76C F0 02
LE76E:
        nop                                     ; E76E EA
        nop                                     ; E76F EA
LE770:
        jsr     LE67F                           ; E770 20 7F E6
        bit     TD2                             ; E773 24 4F
        bpl     LE790                           ; E775 10 19
        bit     ACC3+2                          ; E777 24 71
        bmi     LE77F                           ; E779 30 04
        lda     #$CC                            ; E77B A9 CC
        ldy     #$CC                            ; E77D A0 CC
LE77F:
        jsr     _XPRSEC                         ; E77F 20 56 D6
        jmp     LE786                           ; E782 4C 86 E7

; ----------------------------------------------------------------------------
        nop                                     ; E785 EA
LE786:
        lda     TD7                             ; E786 A5 54
        jsr     LD73E                           ; E788 20 3E D7
        beq     LE790                           ; E78B F0 03
        jmp     LE705                           ; E78D 4C 05 E7

; ----------------------------------------------------------------------------
LE790:
        plp                                     ; E790 28
        jmp     LE6F3                           ; E791 4C F3 E6

; ----------------------------------------------------------------------------
LE794:
        jsr     LDF1C                           ; E794 20 1C DF
        lda     #$00                            ; E797 A9 00
        sta     ACC2M                           ; E799 85 69
        sta     ACC2M+1                         ; E79B 85 6A
        sta     VASALO0                         ; E79D 8D 28 05
        sta     ACC1M+3                         ; E7A0 85 64
        sta     TD3                             ; E7A2 85 50
        lda     #$80                            ; E7A4 A9 80
        sta     ACC2M+2                         ; E7A6 85 6B
LE7A8:
        lda     BUFTRV                          ; E7A8 AD 00 01
        sta     DRIVE                           ; E7AB 8D 00 05
        lsr     TD7                             ; E7AE 46 54
        bit     ACC1M+3                         ; E7B0 24 64
        bpl     LE7BA                           ; E7B2 10 06
        bit     ACC3+2                          ; E7B4 24 71
        bmi     LE7C5                           ; E7B6 30 0D
        bpl     LE7C5                           ; E7B8 10 0B
LE7BA:
        ldx     POSNMX                          ; E7BA AE 16 05
        lda     BUF3+12,x                       ; E7BD BD 0C C4
        ldy     BUF3+13,x                       ; E7C0 BC 0D C4
        bne     LE7C9                           ; E7C3 D0 04
LE7C5:
        lda     ACC1E                           ; E7C5 A5 60
        ldy     ACC1M                           ; E7C7 A4 61
LE7C9:
        jsr     _XPBUF1                         ; E7C9 20 3D D6
        ldy     BUFBUF+8+1+1+1+28               ; E7CC AC A7 C0
        dey                                     ; E7CF 88
        sty     RWBUF+1                         ; E7D0 8C 04 05
        sty     TD4                             ; E7D3 84 51
LE7D5:
        ldx     RWBUF+1                         ; E7D5 AE 04 05
        cpx     BUFBUF+8+1+1+1+26               ; E7D8 EC A5 C0
        beq     LE7F8                           ; E7DB F0 1B
        jsr     _XPRSEC                         ; E7DD 20 56 D6
        asl     ACC2M+2                         ; E7E0 06 6B
        jsr     LE909                           ; E7E2 20 09 E9
        ldy     RWBUF+1                         ; E7E5 AC 04 05
        sty     ACCPS                           ; E7E8 84 6E
        bcs     LE7F8                           ; E7EA B0 0C
        tay                                     ; E7EC A8
        jsr     LDE0A                           ; E7ED 20 0A DE
        bcs     LE7F7                           ; E7F0 B0 05
        sec                                     ; E7F2 38
        ror     ACC2M+2                         ; E7F3 66 6B
        bmi     LE7D5                           ; E7F5 30 DE
LE7F7:
        clc                                     ; E7F7 18
LE7F8:
        ror     ACC1M+3                         ; E7F8 66 64
        lda     BUFTRV+13                       ; E7FA AD 0D 01
        sta     DRIVE                           ; E7FD 8D 00 05
        sec                                     ; E800 38
        ror     TD7                             ; E801 66 54
        bit     ACC1M+3                         ; E803 24 64
        bvc     LE811                           ; E805 50 0A
        lda     ACC1M+1                         ; E807 A5 62
        ldy     ACC1M+2                         ; E809 A4 63
        jsr     _XPBUF1                         ; E80B 20 3D D6
        sec                                     ; E80E 38
        beq     LE869                           ; E80F F0 58
LE811:
        ldx     POSNMX                          ; E811 AE 16 05
        ldy     #$00                            ; E814 A0 00
LE816:
        lda     BUFTRV+14,y                     ; E816 B9 0E 01
        cmp     #$3F                            ; E819 C9 3F
        bne     LE820                           ; E81B D0 03
        lda     BUF3,x                          ; E81D BD 00 C4
LE820:
        sta     BUFNOM+1,y                      ; E820 99 18 05
        inx                                     ; E823 E8
        iny                                     ; E824 C8
        cpy     #$0C                            ; E825 C0 0C
        bne     LE816                           ; E827 D0 ED
        lda     #$00                            ; E829 A9 00
LE82B:
        sta     BUFNOM+1,y                      ; E82B 99 18 05
        iny                                     ; E82E C8
        cpy     #$10                            ; E82F C0 10
        bne     LE82B                           ; E831 D0 F8
        jsr     _XTRVNM                         ; E833 20 27 D7
        beq     LE85E                           ; E836 F0 26
        bit     ACC3+1                          ; E838 24 70
        bmi     LE84B                           ; E83A 30 0F
        bvc     LE843                           ; E83C 50 05
        jsr     _XCABU                          ; E83E 20 01 D7
        beq     LE85E                           ; E841 F0 1B
LE843:
        jsr     LDE4D                           ; E843 20 4D DE
        bcc     LE858                           ; E846 90 10
        lda     #$00                            ; E848 A9 00
        .byte   $2C                             ; E84A 2C
LE84B:
        lda     #$E1                            ; E84B A9 E1
        sta     ACC1E                           ; E84D 85 66
        lda     #$24                            ; E84F A9 24
        sta     ACC1S                           ; E851 85 65
        clc                                     ; E853 18
        cli                                     ; E854 58
        jmp     LE6F3                           ; E855 4C F3 E6

; ----------------------------------------------------------------------------
LE858:
        lda     #$CC                            ; E858 A9 CC
        ldy     #$CC                            ; E85A A0 CC
        bne     LE862                           ; E85C D0 04
LE85E:
        lda     #$CC                            ; E85E A9 CC
        ldy     #$CC                            ; E860 A0 CC
LE862:
        sty     ACC1E                           ; E862 84 66
        sta     ACC1S                           ; E864 85 65
        sec                                     ; E866 38
        ror     ACC2M+2                         ; E867 66 6B
LE869:
        lda     #$00                            ; E869 A9 00
        ldy     BUFBUF+8+1+1+1+28               ; E86B AC A7 C0
        dey                                     ; E86E 88
        sta     TD3                             ; E86F 85 50
        sty     TD4                             ; E871 84 51
        sty     RWBUF+1                         ; E873 8C 04 05
        bcc     LE87C                           ; E876 90 04
        bit     ACC2M+2                         ; E878 24 6B
        bpl     LE8D5                           ; E87A 10 59
LE87C:
        lda     RWBUF+1                         ; E87C AD 04 05
        pha                                     ; E87F 48
        php                                     ; E880 08
        bcc     LE898                           ; E881 90 15
        ror     ACC2M+2                         ; E883 66 6B
        jsr     _XLIBSE                         ; E885 20 56 D8
        sta     BUF1                            ; E888 8D 00 C1
        sty     BUF1+1                          ; E88B 8C 01 C1
        jsr     _XDETSE                         ; E88E 20 0B D9
        lda     ACC1M+1                         ; E891 A5 62
        ldy     ACC1M+2                         ; E893 A4 63
        jsr     _XSBUF1                         ; E895 20 87 D6
LE898:
        ldy     #$0B                            ; E898 A0 0B
LE89A:
        lda     (TD3),y                         ; E89A B1 50
        sta     VASALO1,y                       ; E89C 99 29 05
        dey                                     ; E89F 88
        bne     LE89A                           ; E8A0 D0 F8
        lda     LOCRE                           ; E8A2 AD 33 05
        pha                                     ; E8A5 48
        ldy     LOCRE+1                         ; E8A6 AC 34 05
        jsr     LD7BD                           ; E8A9 20 BD D7
        pla                                     ; E8AC 68
        clc                                     ; E8AD 18
        adc     ACC2M                           ; E8AE 65 69
        sta     ACC2M                           ; E8B0 85 69
        pha                                     ; E8B2 48
        lda     ACC2M+1                         ; E8B3 A5 6A
        adc     LOCREB+1                        ; E8B5 6D 36 05
        sta     ACC2M+1                         ; E8B8 85 6A
        pla                                     ; E8BA 68
        adc     NBCRE                           ; E8BB 6D 39 05
        sta     ACC2M                           ; E8BE 85 69
        bcc     LE8C4                           ; E8C0 90 02
        inc     ACC2M+1                         ; E8C2 E6 6A
LE8C4:
        plp                                     ; E8C4 28
        bcs     LE8D1                           ; E8C5 B0 0A
        lda     DECREP                          ; E8C7 AD 37 05
        ldy     DECRES                          ; E8CA AC 38 05
        sta     ACC1J                           ; E8CD 85 67
        sty     ACC2E                           ; E8CF 84 68
LE8D1:
        pla                                     ; E8D1 68
        sta     RWBUF+1                         ; E8D2 8D 04 05
LE8D5:
        asl     ACC2M+2                         ; E8D5 06 6B
        jsr     LE909                           ; E8D7 20 09 E9
        ldy     RWBUF+1                         ; E8DA AC 04 05
        sty     TD4                             ; E8DD 84 51
        dey                                     ; E8DF 88
        cpy     ACCPS                           ; E8E0 C4 6E
        bcs     LE87C                           ; E8E2 B0 98
        bit     ACC1M+3                         ; E8E4 24 64
        bpl     LE8EB                           ; E8E6 10 03
        jmp     LE7A8                           ; E8E8 4C A8 E7

; ----------------------------------------------------------------------------
LE8EB:
        lda     ACC1J                           ; E8EB A5 67
        ldy     ACC2E                           ; E8ED A4 68
        sta     DECREP                          ; E8EF 8D 37 05
        sty     DECRES                          ; E8F2 8C 38 05
        lda     ACC2M                           ; E8F5 A5 69
        ldy     ACC2M+1                         ; E8F7 A4 6A
        ldx     #$00                            ; E8F9 A2 00
        stx     NBCRE                           ; E8FB 8E 39 05
        sta     LOCREB                          ; E8FE 8D 35 05
        sty     LOCREB+1                        ; E901 8C 36 05
        clc                                     ; E904 18
        php                                     ; E905 08
        jmp     LDC56                           ; E906 4C 56 DC

; ----------------------------------------------------------------------------
LE909:
        bcc     LE915                           ; E909 90 0A
        lda     #$0A                            ; E90B A9 0A
        ldx     BUF1+10                         ; E90D AE 0A C1
        ldy     BUF1+11                         ; E910 AC 0B C1
        bcs     LE91B                           ; E913 B0 06
LE915:
        ldx     ACC2M+3                         ; E915 A6 6C
        ldy     ACC2S                           ; E917 A4 6D
        lda     ACC3                            ; E919 A5 6F
LE91B:
        inx                                     ; E91B E8
        bne     LE91F                           ; E91C D0 01
        iny                                     ; E91E C8
LE91F:
        stx     TD5                             ; E91F 86 52
        sty     TD6                             ; E921 84 53
        tay                                     ; E923 A8
        jsr     LE975                           ; E924 20 75 E9
LE927:
        lda     TD5                             ; E927 A5 52
        bne     LE92D                           ; E929 D0 02
        dec     TD6                             ; E92B C6 53
LE92D:
        dec     TD5                             ; E92D C6 52
        dec     RWBUF+1                         ; E92F CE 04 05
        ldx     RWBUF+1                         ; E932 AE 04 05
        cpx     BUFBUF+8+1+1+1+26               ; E935 EC A5 C0
        beq     LE966                           ; E938 F0 2C
        lda     TD6                             ; E93A A5 53
        ora     TD5                             ; E93C 05 52
        beq     LE965                           ; E93E F0 25
        jsr     LDE08                           ; E940 20 08 DE
        cpy     #$02                            ; E943 C0 02
        bne     LE94A                           ; E945 D0 03
        jsr     LE975                           ; E947 20 75 E9
LE94A:
        bit     TD7                             ; E94A 24 54
        bmi     LE953                           ; E94C 30 05
        jsr     LDE31                           ; E94E 20 31 DE
        beq     LE927                           ; E951 F0 D4
LE953:
        lda     BUF1,y                          ; E953 B9 00 C1
        sta     TRACK                           ; E956 8D 01 05
        lda     BUF1+1,y                        ; E959 B9 01 C1
        sta     SECTOR                          ; E95C 8D 02 05
        jsr     _XSVSEC                         ; E95F 20 9A D6
        jmp     LE927                           ; E962 4C 27 E9

; ----------------------------------------------------------------------------
LE965:
        clc                                     ; E965 18
LE966:
        bit     TD7                             ; E966 24 54
        bpl     LE974                           ; E968 10 0A
        sty     ACC3                            ; E96A 84 6F
        lda     TD5                             ; E96C A5 52
        ldy     TD6                             ; E96E A4 53
        sta     ACC2M+3                         ; E970 85 6C
        sty     ACC2S                           ; E972 84 6D
LE974:
        rts                                     ; E974 60

; ----------------------------------------------------------------------------
LE975:
        lda     TRACK                           ; E975 AD 01 05
        ldx     SECTOR                          ; E978 AE 02 05
        bit     TD7                             ; E97B 24 54
        bmi     LE984                           ; E97D 30 05
        sta     ACC1E                           ; E97F 85 60
        stx     ACC1M                           ; E981 86 61
        rts                                     ; E983 60

; ----------------------------------------------------------------------------
LE984:
        sta     ACC1M+1                         ; E984 85 62
        stx     ACC1M+2                         ; E986 86 63
        rts                                     ; E988 60

; ----------------------------------------------------------------------------
        ora     (VARLNG+60,x)                   ; E989 01 C8
        stx     TD5                             ; E98B 86 52
        sty     TD6                             ; E98D 84 53
        tay                                     ; E98F A8
        jsr     LE9E0                           ; E990 20 E0 E9
LE993:
        lda     TD5                             ; E993 A5 52
        bne     LE999                           ; E995 D0 02
        dec     TD6                             ; E997 C6 53
LE999:
        dec     TD5                             ; E999 C6 52
        dec     RWBUF+1                         ; E99B CE 04 05
        ldx     RWBUF+1                         ; E99E AE 04 05
        cpx     #$08                            ; E9A1 E0 08
        beq     LE9D1                           ; E9A3 F0 2C
        lda     TD6                             ; E9A5 A5 53
        ora     TD5                             ; E9A7 05 52
        beq     LE9D0                           ; E9A9 F0 25
        jsr     LDE08                           ; E9AB 20 08 DE
        cpy     #$02                            ; E9AE C0 02
        bne     LE9B5                           ; E9B0 D0 03
        jsr     LE9E0                           ; E9B2 20 E0 E9
LE9B5:
        bit     TD7                             ; E9B5 24 54
        bmi     LE9BE                           ; E9B7 30 05
        jsr     LDE31                           ; E9B9 20 31 DE
        beq     LE993                           ; E9BC F0 D5
LE9BE:
        lda     BUF1,y                          ; E9BE B9 00 C1
        sta     TRACK                           ; E9C1 8D 01 05
        lda     BUF1+1,y                        ; E9C4 B9 01 C1
        sta     SECTOR                          ; E9C7 8D 02 05
        jsr     _XSVSEC                         ; E9CA 20 9A D6
        jmp     LE993                           ; E9CD 4C 93 E9

; ----------------------------------------------------------------------------
LE9D0:
        clc                                     ; E9D0 18
LE9D1:
        bit     TD7                             ; E9D1 24 54
        bpl     LE9DF                           ; E9D3 10 0A
        sty     ACC3                            ; E9D5 84 6F
        lda     TD5                             ; E9D7 A5 52
        ldy     TD6                             ; E9D9 A4 53
        sta     ACC2M+3                         ; E9DB 85 6C
        sty     ACC2S                           ; E9DD 84 6D
LE9DF:
        rts                                     ; E9DF 60

; ----------------------------------------------------------------------------
LE9E0:
        lda     TRACK                           ; E9E0 AD 01 05
        ldx     SECTOR                          ; E9E3 AE 02 05
        bit     TD7                             ; E9E6 24 54
        bmi     LE9EF                           ; E9E8 30 05
        sta     ACC1E                           ; E9EA 85 60
        stx     ACC1M                           ; E9EC 86 61
        rts                                     ; E9EE 60

; ----------------------------------------------------------------------------
LE9EF:
        sta     ACC1M+1                         ; E9EF 85 62
        stx     ACC1M+2                         ; E9F1 86 63
        rts                                     ; E9F3 60

; ----------------------------------------------------------------------------
LE9F4:
        cli                                     ; E9F4 58
        lda     #$3B                            ; E9F5 A9 3B
        ldy     #$E6                            ; E9F7 A0 E6
        _XWSTR0                                 ; E9F9 00 14
        lda     DRIVE                           ; E9FB AD 00 05
LE9FE:
        jsr     LD957                           ; E9FE 20 57 D9
        lda     #$A0                            ; EA01 A9 A0
        ldy     #$E5                            ; EA03 A0 E5
        _XWSTR0                                 ; EA05 00 14
        _XRDW0                                  ; EA07 00 0C
        cmp     #$1B                            ; EA09 C9 1B
        beq     LEA0E                           ; EA0B F0 01
        clc                                     ; EA0D 18
LEA0E:
        php                                     ; EA0E 08
        _XCRLF                                  ; EA0F 00 25
        plp                                     ; EA11 28
        jmp     LDF1C                           ; EA12 4C 1C DF

; ----------------------------------------------------------------------------
SEA15:
        .byte   "back up"                       ; EA15 62 61 63 6B 20 75 70
        .byte   $00                             ; EA1C 00
SEA1D:
        .byte   $0A,$0D                         ; EA1D 0A 0D
        .byte   "Backup done   "                ; EA1F 42 61 63 6B 75 70 20 64
                                                ; EA27 6F 6E 65 20 20 20
        .byte   $0A,$0D,$00                     ; EA2D 0A 0D 00
SEA30:
        .byte   $0A,$0D                         ; EA30 0A 0D
        .byte   "Format target disk? (O/N)"     ; EA32 46 6F 72 6D 61 74 20 74
                                                ; EA3A 61 72 67 65 74 20 64 69
                                                ; EA42 73 6B 3F 20 28 4F 2F 4E
                                                ; EA4A 29
        .byte   $00                             ; EA4B 00
SEA4C:
        .byte   "       "                       ; EA4C 20 20 20 20 20 20 20
        .byte   $00                             ; EA53 00
; ----------------------------------------------------------------------------
; Backup du lecteur BUFNOM vers le lecteur BUFNOM+1
_XBKP:
        php                                     ; EA54 08
        lda     #$0C                            ; EA55 A9 0C
        _XWR0                                   ; EA57 00 10
        jsr     LE1F6                           ; EA59 20 F6 E1
        jsr     LE678                           ; EA5C 20 78 E6
        lsr     TD6                             ; EA5F 46 53
        sec                                     ; EA61 38
        lda     BUFNOM                          ; EA62 AD 17 05
        sbc     BUFNOM+1                        ; EA65 ED 18 05
        sta     INDIC0                          ; EA68 85 55
        beq     LEA94                           ; EA6A F0 28
        lda     #$C6                            ; EA6C A9 C6
        ldy     #$E5                            ; EA6E A0 E5
        _XWSTR0                                 ; EA70 00 14
        lda     #$15                            ; EA72 A9 15
        ldy     #$EA                            ; EA74 A0 EA
        _XWSTR0                                 ; EA76 00 14
        lda     #$EF                            ; EA78 A9 EF
        ldy     #$E5                            ; EA7A A0 E5
        _XWSTR0                                 ; EA7C 00 14
        lda     BUFNOM                          ; EA7E AD 17 05
        jsr     LD957                           ; EA81 20 57 D9
        lda     #$FD                            ; EA84 A9 FD
        ldy     #$E5                            ; EA86 A0 E5
        _XWSTR0                                 ; EA88 00 14
        lda     BUFNOM+1                        ; EA8A AD 18 05
        jsr     LE9FE                           ; EA8D 20 FE E9
        bcc     LEAA7                           ; EA90 90 15
        bcs     LEAA5                           ; EA92 B0 11
LEA94:
        lda     #$65                            ; EA94 A9 65
        ldy     #$E5                            ; EA96 A0 E5
        _XWSTR0                                 ; EA98 00 14
        lda     BUFNOM+1                        ; EA9A AD 18 05
        sta     DRIVE                           ; EA9D 8D 00 05
        jsr     LE9F4                           ; EAA0 20 F4 E9
        bcc     LEAA7                           ; EAA3 90 02
LEAA5:
        plp                                     ; EAA5 28
        rts                                     ; EAA6 60

; ----------------------------------------------------------------------------
LEAA7:
        lda     #$30                            ; EAA7 A9 30
        ldy     #$EA                            ; EAA9 A0 EA
        _XWSTR0                                 ; EAAB 00 14
        cli                                     ; EAAD 58
        _XRDW0                                  ; EAAE 00 0C
        and     #$DF                            ; EAB0 29 DF
        cmp     #$1B                            ; EAB2 C9 1B
        bne     LEABB                           ; EAB4 D0 05
        _XCRLF                                  ; EAB6 00 25
        jmp     LEAA5                           ; EAB8 4C A5 EA

; ----------------------------------------------------------------------------
LEABB:
        cmp     #$4F                            ; EABB C9 4F
        bne     LEAC2                           ; EABD D0 03
        ror     TD6                             ; EABF 66 53
        .byte   $2C                             ; EAC1 2C
LEAC2:
        lda     #$4E                            ; EAC2 A9 4E
        _XWR0                                   ; EAC4 00 10
        _XCRLF                                  ; EAC6 00 25
        sei                                     ; EAC8 78
        lda     BUFNOM                          ; EAC9 AD 17 05
        sta     DRIVE                           ; EACC 8D 00 05
        jsr     _XPMAP                          ; EACF 20 21 D6
        ldx     #$00                            ; EAD2 A2 00
        ldy     #$C2                            ; EAD4 A0 C2
        stx     TD3                             ; EAD6 86 50
        stx     RWBUF                           ; EAD8 8E 03 05
        stx     TRACK                           ; EADB 8E 01 05
        sty     TD4                             ; EADE 84 51
        inx                                     ; EAE0 E8
        stx     SECTOR                          ; EAE1 8E 02 05
        ldy     #$10                            ; EAE4 A0 10
        sty     ACC1M                           ; EAE6 84 61
        lda     #$01                            ; EAE8 A9 01
        sta     ACC3                            ; EAEA 85 6F
LEAEC:
        ldx     SECTOR                          ; EAEC AE 02 05
        stx     ACC1M+2                         ; EAEF 86 63
        ldx     TRACK                           ; EAF1 AE 01 05
        stx     ACC1M+1                         ; EAF4 86 62
        sty     ACC1M                           ; EAF6 84 61
        ldx     TD4                             ; EAF8 A6 51
        stx     ACC1E                           ; EAFA 86 60
        sta     ACC3                            ; EAFC 85 6F
        lsr     TD0                             ; EAFE 46 4D
        jsr     LEB6D                           ; EB00 20 6D EB
        lda     INDIC0                          ; EB03 A5 55
        bne     LEB15                           ; EB05 D0 0E
        cli                                     ; EB07 58
        lda     #$83                            ; EB08 A9 83
        ldy     #$E5                            ; EB0A A0 E5
        _XWSTR0                                 ; EB0C 00 14
        jsr     LE9F4                           ; EB0E 20 F4 E9
        bcc     LEB15                           ; EB11 90 02
        plp                                     ; EB13 28
        rts                                     ; EB14 60

; ----------------------------------------------------------------------------
LEB15:
        lda     BUFNOM+1                        ; EB15 AD 18 05
        sta     DRIVE                           ; EB18 8D 00 05
        sei                                     ; EB1B 78
        bit     TD6                             ; EB1C 24 53
        bpl     LEB26                           ; EB1E 10 06
        jsr     _XFORMA                         ; EB20 20 51 E3
        sec                                     ; EB23 38
        ror     TD6                             ; EB24 66 53
LEB26:
        ldy     ACC1M                           ; EB26 A4 61
        lda     ACC1E                           ; EB28 A5 60
        sta     TD4                             ; EB2A 85 51
        lda     ACC3                            ; EB2C A5 6F
        ldx     ACC1M+2                         ; EB2E A6 63
        stx     SECTOR                          ; EB30 8E 02 05
        ldx     ACC1M+1                         ; EB33 A6 62
        stx     TRACK                           ; EB35 8E 01 05
        sec                                     ; EB38 38
        ror     TD0                             ; EB39 66 4D
        jsr     LEB6D                           ; EB3B 20 6D EB
        bcc     LEB61                           ; EB3E 90 21
        lsr     TD6                             ; EB40 46 53
        ldx     BUFNOM                          ; EB42 AE 17 05
        stx     DRIVE                           ; EB45 8E 00 05
        ldx     INDIC0                          ; EB48 A6 55
        beq     LEB4E                           ; EB4A F0 02
        bne     LEAEC                           ; EB4C D0 9E
LEB4E:
        pha                                     ; EB4E 48
        tya                                     ; EB4F 98
        pha                                     ; EB50 48
        lda     #$65                            ; EB51 A9 65
        ldy     #$E5                            ; EB53 A0 E5
        _XWSTR0                                 ; EB55 00 14
        jsr     LE9F4                           ; EB57 20 F4 E9
        bcs     LEB69                           ; EB5A B0 0D
        pla                                     ; EB5C 68
        tay                                     ; EB5D A8
        pla                                     ; EB5E 68
        bne     LEAEC                           ; EB5F D0 8B
LEB61:
        lda     #$1D                            ; EB61 A9 1D
        ldy     #$EA                            ; EB63 A0 EA
        _XWSTR0                                 ; EB65 00 14
        plp                                     ; EB67 28
        rts                                     ; EB68 60

; ----------------------------------------------------------------------------
LEB69:
        pla                                     ; EB69 68
        pla                                     ; EB6A 68
        plp                                     ; EB6B 28
        rts                                     ; EB6C 60

; ----------------------------------------------------------------------------
LEB6D:
        ldx     #$B3                            ; EB6D A2 B3
        bit     TD6                             ; EB6F 24 53
        bpl     LEB75                           ; EB71 10 02
        ldx     #$97                            ; EB73 A2 97
LEB75:
        stx     RWBUF+1                         ; EB75 8E 04 05
LEB78:
        pha                                     ; EB78 48
        and     (TD3),y                         ; EB79 31 50
        sta     TD5                             ; EB7B 85 52
        bne     LEB8C                           ; EB7D D0 0D
        bit     TD0                             ; EB7F 24 4D
        bpl     LEB89                           ; EB81 10 06
        jsr     _XSVSEC                         ; EB83 20 9A D6
        jmp     LEB8C                           ; EB86 4C 8C EB

; ----------------------------------------------------------------------------
LEB89:
        jsr     _XPRSEC                         ; EB89 20 56 D6
LEB8C:
        inc     SECTOR                          ; EB8C EE 02 05
        lda     SECTOR                          ; EB8F AD 02 05
        cmp     BUF2+7                          ; EB92 CD 07 C2
        bcc     LEBB6                           ; EB95 90 1F
        beq     LEBB6                           ; EB97 F0 1D
        lda     #$01                            ; EB99 A9 01
        sta     SECTOR                          ; EB9B 8D 02 05
        inc     TRACK                           ; EB9E EE 01 05
        lda     TRACK                           ; EBA1 AD 01 05
        cmp     BUF2+9                          ; EBA4 CD 09 C2
        bcc     LEBAC                           ; EBA7 90 03
        pla                                     ; EBA9 68
        clc                                     ; EBAA 18
        rts                                     ; EBAB 60

; ----------------------------------------------------------------------------
LEBAC:
        cmp     BUF2+6                          ; EBAC CD 06 C2
        bne     LEBB6                           ; EBAF D0 05
        lda     #$80                            ; EBB1 A9 80
        sta     TRACK                           ; EBB3 8D 01 05
LEBB6:
        pla                                     ; EBB6 68
        asl     a                               ; EBB7 0A
        bne     LEBC3                           ; EBB8 D0 09
        lda     #$01                            ; EBBA A9 01
        iny                                     ; EBBC C8
        bne     LEBC3                           ; EBBD D0 04
        inc     TD4                             ; EBBF E6 51
        ldy     #$10                            ; EBC1 A0 10
LEBC3:
        ldx     TD5                             ; EBC3 A6 52
        bne     LEB78                           ; EBC5 D0 B1
        dec     RWBUF+1                         ; EBC7 CE 04 05
        ldx     RWBUF+1                         ; EBCA AE 04 05
        cpx     #$07                            ; EBCD E0 07
        bne     LEB78                           ; EBCF D0 A7
        rts                                     ; EBD1 60

; ----------------------------------------------------------------------------
LEBD2:
        lda     TD3                             ; EBD2 A5 50
        ldy     #$12                            ; EBD4 A0 12
        sta     (DECDEB),y                      ; EBD6 91 04
        rts                                     ; EBD8 60

; ----------------------------------------------------------------------------
LEBD9:
        ldy     #$1D                            ; EBD9 A0 1D
        bne     LEBE1                           ; EBDB D0 04
LEBDD:
        ldy     #$1C                            ; EBDD A0 1C
        lda     #$02                            ; EBDF A9 02
LEBE1:
        clc                                     ; EBE1 18
        adc     (DECDEB),y                      ; EBE2 71 04
        sta     (DECDEB),y                      ; EBE4 91 04
        rts                                     ; EBE6 60

; ----------------------------------------------------------------------------
LEBE7:
        ldy     #$10                            ; EBE7 A0 10
        lda     #$20                            ; EBE9 A9 20
        sta     (DECDEB),y                      ; EBEB 91 04
        tay                                     ; EBED A8
LEBEE:
        lda     DECCIB                          ; EBEE A5 08
        sta     RWBUF                           ; EBF0 8D 03 05
        lda     DECCIB+1                        ; EBF3 A5 09
        sta     RWBUF+1                         ; EBF5 8D 04 05
        lda     (DECDEB),y                      ; EBF8 B1 04
        pha                                     ; EBFA 48
        iny                                     ; EBFB C8
        lda     (DECDEB),y                      ; EBFC B1 04
        tay                                     ; EBFE A8
        pla                                     ; EBFF 68
        jmp     LD650                           ; EC00 4C 50 D6

; ----------------------------------------------------------------------------
LEC03:
        ldy     #$1C                            ; EC03 A0 1C
        lda     (DECDEB),y                      ; EC05 B1 04
        clc                                     ; EC07 18
        adc     #$02                            ; EC08 69 02
        bcc     LEC33                           ; EC0A 90 27
        jsr     LED3F                           ; EC0C 20 3F ED
        cpy     #$00                            ; EC0F C0 00
        bne     LEC1A                           ; EC11 D0 07
        ldy     #$00                            ; EC13 A0 00
        lda     #$04                            ; EC15 A9 04
        jsr     LED68                           ; EC17 20 68 ED
LEC1A:
        lda     INDFCB                          ; EC1A AD 46 05
        tay                                     ; EC1D A8
        iny                                     ; EC1E C8
        iny                                     ; EC1F C8
        sty     TD0                             ; EC20 84 4D
        jsr     LEBEE                           ; EC22 20 EE EB
        ldy     #$10                            ; EC25 A0 10
        lda     TD0                             ; EC27 A5 4D
        sta     (DECDEB),y                      ; EC29 91 04
        sta     INDFCB                          ; EC2B 8D 46 05
        jsr     LEBDD                           ; EC2E 20 DD EB
        lda     #$02                            ; EC31 A9 02
LEC33:
        tay                                     ; EC33 A8
        jsr     LED44                           ; EC34 20 44 ED
        tax                                     ; EC37 AA
        tya                                     ; EC38 98
        bne     LEC45                           ; EC39 D0 0A
        ldy     #$00                            ; EC3B A0 00
        lda     #$04                            ; EC3D A9 04
        jsr     LED68                           ; EC3F 20 68 ED
        jmp     LEC03                           ; EC42 4C 03 EC

; ----------------------------------------------------------------------------
LEC45:
        txa                                     ; EC45 8A
        jsr     LEC4C                           ; EC46 20 4C EC
        jmp     LEBDD                           ; EC49 4C DD EB

; ----------------------------------------------------------------------------
LEC4C:
        ldx     DECTRV                          ; EC4C A6 0A
        stx     RWBUF                           ; EC4E 8E 03 05
        ldx     DECTRV+1                        ; EC51 A6 0B
        stx     RWBUF+1                         ; EC53 8E 04 05
        jmp     LD650                           ; EC56 4C 50 D6

; ----------------------------------------------------------------------------
; Calcul longueur du tampon de fichier (FICNUM)
_XLGBUF:
        ldx     FICNUM                          ; EC59 AE 48 05
LEC5C:
        ldy     #$00                            ; EC5C A0 00
        stx     RES                             ; EC5E 86 00
        sty     RES+1                           ; EC60 84 01
        lda     #$60                            ; EC62 A9 60
        ldy     #$02                            ; EC64 A0 02
        _XMULT                                  ; EC66 00 21
        lda     TR0                             ; EC68 A5 0C
        ldy     TR1                             ; EC6A A4 0D
        iny                                     ; EC6C C8
        iny                                     ; EC6D C8
        iny                                     ; EC6E C8
        sta     DECDEB                          ; EC6F 85 04
        sty     DECDEB+1                        ; EC71 84 05
        rts                                     ; EC73 60

; ----------------------------------------------------------------------------
LEC74:
        ldx     FICNUM                          ; EC74 AE 48 05
        dex                                     ; EC77 CA
        jsr     LEC5C                           ; EC78 20 5C EC
        lda     TAMPFC                          ; EC7B AD 42 05
        ldy     TAMPFC+1                        ; EC7E AC 43 05
        sta     DECTRV                          ; EC81 85 0A
        sty     DECTRV+1                        ; EC83 84 0B
        clc                                     ; EC85 18
        adc     DECDEB                          ; EC86 65 04
        sta     DECDEB                          ; EC88 85 04
        pha                                     ; EC8A 48
        tya                                     ; EC8B 98
        adc     DECDEB+1                        ; EC8C 65 05
        sta     DECDEB+1                        ; EC8E 85 05
        tay                                     ; EC90 A8
        pla                                     ; EC91 68
        adc     #$60                            ; EC92 69 60
        sta     DECFIN                          ; EC94 85 06
        sta     DECCIB                          ; EC96 85 08
        bcc     LEC9B                           ; EC98 90 01
        iny                                     ; EC9A C8
LEC9B:
        sty     DECCIB+1                        ; EC9B 84 09
        iny                                     ; EC9D C8
        sty     DECFIN+1                        ; EC9E 84 07
        rts                                     ; ECA0 60

; ----------------------------------------------------------------------------
LECA1:
        jsr     LEC74                           ; ECA1 20 74 EC
        jsr     LECD8                           ; ECA4 20 D8 EC
        beq     LECAE                           ; ECA7 F0 05
        ldx     #$0C                            ; ECA9 A2 0C
        jmp     _XERREU                         ; ECAB 4C 12 D6

; ----------------------------------------------------------------------------
LECAE:
        ldy     #$13                            ; ECAE A0 13
        lda     (DECDEB),y                      ; ECB0 B1 04
        asl     a                               ; ECB2 0A
        asl     a                               ; ECB3 0A
        asl     a                               ; ECB4 0A
        asl     a                               ; ECB5 0A
        sta     FICTYP                          ; ECB6 8D 47 05
        ldy     #$16                            ; ECB9 A0 16
        lda     (DECDEB),y                      ; ECBB B1 04
        sta     FICLON                          ; ECBD 8D 4A 05
        iny                                     ; ECC0 C8
        lda     (DECDEB),y                      ; ECC1 B1 04
        sta     FICLON+1                        ; ECC3 8D 4B 05
        ldy     #$10                            ; ECC6 A0 10
        lda     (DECDEB),y                      ; ECC8 B1 04
        sta     INDFCB                          ; ECCA 8D 46 05
        ldy     #$00                            ; ECCD A0 00
        lda     (DECDEB),y                      ; ECCF B1 04
        sta     DRIVE                           ; ECD1 8D 00 05
        rts                                     ; ECD4 60

; ----------------------------------------------------------------------------
LECD5:
        jmp     LE1FE                           ; ECD5 4C FE E1

; ----------------------------------------------------------------------------
LECD8:
        ldx     FICNUM                          ; ECD8 AE 48 05
        dex                                     ; ECDB CA
        cpx     NBFIC                           ; ECDC EC 49 05
        bcs     LECD5                           ; ECDF B0 F4
        txa                                     ; ECE1 8A
        ldy     #$05                            ; ECE2 A0 05
        sty     TD1                             ; ECE4 84 4E
        ldx     #$44                            ; ECE6 A2 44
        cmp     #$08                            ; ECE8 C9 08
        bcc     LECED                           ; ECEA 90 01
        inx                                     ; ECEC E8
LECED:
        stx     TD0                             ; ECED 86 4D
        and     #$07                            ; ECEF 29 07
        tax                                     ; ECF1 AA
        lda     #$00                            ; ECF2 A9 00
        sec                                     ; ECF4 38
LECF5:
        rol     a                               ; ECF5 2A
        dex                                     ; ECF6 CA
        bpl     LECF5                           ; ECF7 10 FC
        inx                                     ; ECF9 E8
        pha                                     ; ECFA 48
        and     (TD0,x)                         ; ECFB 21 4D
        sta     TD2                             ; ECFD 85 4F
        pla                                     ; ECFF 68
        eor     (TD0,x)                         ; ED00 41 4D
        ldy     TD2                             ; ED02 A4 4F
LED04:
        rts                                     ; ED04 60

; ----------------------------------------------------------------------------
LED05:
        sec                                     ; ED05 38
        .byte   $24                             ; ED06 24
LED07:
        clc                                     ; ED07 18
        inc     TD3                             ; ED08 E6 50
        bne     LED04                           ; ED0A D0 F8
        bcc     LED14                           ; ED0C 90 06
        jsr     LED1D                           ; ED0E 20 1D ED
        jmp     LEC03                           ; ED11 4C 03 EC

; ----------------------------------------------------------------------------
LED14:
        bit     INDIC1                          ; ED14 24 56
        bmi     LED1A                           ; ED16 30 02
        inc     DECTRV+1                        ; ED18 E6 0B
LED1A:
        jmp     LEC03                           ; ED1A 4C 03 EC

; ----------------------------------------------------------------------------
LED1D:
        lda     DECTRV                          ; ED1D A5 0A
        ldx     DECTRV+1                        ; ED1F A6 0B
        bne     LED2D                           ; ED21 D0 0A
LED23:
        ldy     #$11                            ; ED23 A0 11
        lda     (DECDEB),y                      ; ED25 B1 04
        bpl     LED4C                           ; ED27 10 23
        lda     DECFIN                          ; ED29 A5 06
        ldx     DECFIN+1                        ; ED2B A6 07
LED2D:
        sta     RWBUF                           ; ED2D 8D 03 05
        stx     RWBUF+1                         ; ED30 8E 04 05
        jsr     LED39                           ; ED33 20 39 ED
        jmp     _XSAY                           ; ED36 4C 94 D6

; ----------------------------------------------------------------------------
LED39:
        ldy     #$1C                            ; ED39 A0 1C
        lda     (DECDEB),y                      ; ED3B B1 04
        tay                                     ; ED3D A8
        .byte   $2C                             ; ED3E 2C
LED3F:
        ldy     #$00                            ; ED3F A0 00
        .byte   $2C                             ; ED41 2C
LED42:
        ldy     #$0C                            ; ED42 A0 0C
LED44:
        lda     (DECCIB),y                      ; ED44 B1 08
        iny                                     ; ED46 C8
        pha                                     ; ED47 48
        lda     (DECCIB),y                      ; ED48 B1 08
        tay                                     ; ED4A A8
        pla                                     ; ED4B 68
LED4C:
        rts                                     ; ED4C 60

; ----------------------------------------------------------------------------
LED4D:
        jmp     LDCC6                           ; ED4D 4C C6 DC

; ----------------------------------------------------------------------------
LED50:
        bcc     LED56                           ; ED50 90 04
        ora     TD1                             ; ED52 05 4E
        bne     LED66                           ; ED54 D0 10
LED56:
        ldy     #$20                            ; ED56 A0 20
        lda     (DECDEB),y                      ; ED58 B1 04
        pha                                     ; ED5A 48
        iny                                     ; ED5B C8
        lda     (DECDEB),y                      ; ED5C B1 04
        tay                                     ; ED5E A8
        pla                                     ; ED5F 68
        jsr     _XPBUF1                         ; ED60 20 3D D6
        jmp     LEE8A                           ; ED63 4C 8A EE

; ----------------------------------------------------------------------------
LED66:
        lda     TD1                             ; ED66 A5 4E
LED68:
        sta     LOCRE                           ; ED68 8D 33 05
        sty     LOCRE+1                         ; ED6B 8C 34 05
        sta     LOCREB                          ; ED6E 8D 35 05
        sty     LOCREB+1                        ; ED71 8C 36 05
        ldy     #$0C                            ; ED74 A0 0C
LED76:
        lda     (DECDEB),y                      ; ED76 B1 04
        sta     BUFNOM,y                        ; ED78 99 17 05
        dey                                     ; ED7B 88
        bne     LED76                           ; ED7C D0 F8
        jsr     _XTRVNM                         ; ED7E 20 27 D7
        beq     LED4D                           ; ED81 F0 CA
        lda     #$00                            ; ED83 A9 00
        sta     NBCRE                           ; ED85 8D 39 05
        ldy     #$1D                            ; ED88 A0 1D
        lda     (DECDEB),y                      ; ED8A B1 04
        ldy     #$10                            ; ED8C A0 10
        cmp     (DECDEB),y                      ; ED8E D1 04
        php                                     ; ED90 08
        tay                                     ; ED91 A8
        lda     (DECDEB),y                      ; ED92 B1 04
        sta     TRACK                           ; ED94 8D 01 05
        tax                                     ; ED97 AA
        iny                                     ; ED98 C8
        lda     (DECDEB),y                      ; ED99 B1 04
        sta     SECTOR                          ; ED9B 8D 02 05
        plp                                     ; ED9E 28
        bne     LEDAD                           ; ED9F D0 0C
        ldy     #$00                            ; EDA1 A0 00
LEDA3:
        lda     (DECCIB),y                      ; EDA3 B1 08
        sta     BUF1,y                          ; EDA5 99 00 C1
        iny                                     ; EDA8 C8
        bne     LEDA3                           ; EDA9 D0 F8
        beq     LEDB2                           ; EDAB F0 05
LEDAD:
        tay                                     ; EDAD A8
        txa                                     ; EDAE 8A
        jsr     _XPBUF1                         ; EDAF 20 3D D6
LEDB2:
        ldx     #$02                            ; EDB2 A2 02
        lda     BUF1,x                          ; EDB4 BD 00 C1
        cmp     #$FF                            ; EDB7 C9 FF
        bne     LEDBE                           ; EDB9 D0 03
        ldx     #$0B                            ; EDBB A2 0B
        .byte   $24                             ; EDBD 24
LEDBE:
        inx                                     ; EDBE E8
        inx                                     ; EDBF E8
        beq     LEDF6                           ; EDC0 F0 34
        lda     BUF1,x                          ; EDC2 BD 00 C1
        bne     LEDBE                           ; EDC5 D0 F7
LEDC7:
        stx     VCRE0                           ; EDC7 8E 3A 05
        lda     LOCRE                           ; EDCA AD 33 05
        ora     LOCRE+1                         ; EDCD 0D 34 05
        beq     LEE23                           ; EDD0 F0 51
        lda     LOCRE                           ; EDD2 AD 33 05
        bne     LEDDA                           ; EDD5 D0 03
        dec     LOCRE+1                         ; EDD7 CE 34 05
LEDDA:
        dec     LOCRE                           ; EDDA CE 33 05
        jsr     _XLIBSE                         ; EDDD 20 56 D8
        ldx     VCRE0                           ; EDE0 AE 3A 05
        sta     BUF1,x                          ; EDE3 9D 00 C1
        inx                                     ; EDE6 E8
        tya                                     ; EDE7 98
        sta     BUF1,x                          ; EDE8 9D 00 C1
        inx                                     ; EDEB E8
        bne     LEDC7                           ; EDEC D0 D9
        lda     LOCRE                           ; EDEE AD 33 05
        ora     LOCRE+1                         ; EDF1 0D 34 05
        beq     LEE23                           ; EDF4 F0 2D
LEDF6:
        jsr     _XLIBSE                         ; EDF6 20 56 D8
        sta     BUF1                            ; EDF9 8D 00 C1
        pha                                     ; EDFC 48
        sty     BUF1+1                          ; EDFD 8C 01 C1
        tya                                     ; EE00 98
        pha                                     ; EE01 48
        jsr     LD69E                           ; EE02 20 9E D6
        lda     #$02                            ; EE05 A9 02
        jsr     LEBD9                           ; EE07 20 D9 EB
        tay                                     ; EE0A A8
        iny                                     ; EE0B C8
        pla                                     ; EE0C 68
        sta     (DECDEB),y                      ; EE0D 91 04
        sta     SECTOR                          ; EE0F 8D 02 05
        dey                                     ; EE12 88
        pla                                     ; EE13 68
        sta     (DECDEB),y                      ; EE14 91 04
        sta     TRACK                           ; EE16 8D 01 05
        inc     NBCRE                           ; EE19 EE 39 05
        jsr     _XBUF1                          ; EE1C 20 C8 D6
        ldx     #$02                            ; EE1F A2 02
        bne     LEDC7                           ; EE21 D0 A4
LEE23:
        lda     #$00                            ; EE23 A9 00
        sta     BUF1                            ; EE25 8D 00 C1
        sta     BUF1+1                          ; EE28 8D 01 C1
        ldx     BUF1+2                          ; EE2B AE 02 C1
        inx                                     ; EE2E E8
        beq     LEE40                           ; EE2F F0 0F
        jsr     LD69E                           ; EE31 20 9E D6
        ldx     POSNMX                          ; EE34 AE 16 05
        lda     BUF3+12,x                       ; EE37 BD 0C C4
        ldy     BUF3+13,x                       ; EE3A BC 0D C4
        jsr     _XPBUF1                         ; EE3D 20 3D D6
LEE40:
        lda     BUF1+10                         ; EE40 AD 0A C1
        clc                                     ; EE43 18
        adc     LOCREB                          ; EE44 6D 35 05
        ldy     #$1A                            ; EE47 A0 1A
        sta     BUF1+10                         ; EE49 8D 0A C1
        sta     (DECDEB),y                      ; EE4C 91 04
        iny                                     ; EE4E C8
        lda     BUF1+11                         ; EE4F AD 0B C1
        adc     LOCREB+1                        ; EE52 6D 36 05
        sta     BUF1+11                         ; EE55 8D 0B C1
        sta     (DECDEB),y                      ; EE58 91 04
        jsr     LEE8A                           ; EE5A 20 8A EE
        ldx     POSNMX                          ; EE5D AE 16 05
        lda     LOCREB                          ; EE60 AD 35 05
        clc                                     ; EE63 18
        adc     NBCRE                           ; EE64 6D 39 05
        bcc     LEE6D                           ; EE67 90 04
        inc     LOCREB+1                        ; EE69 EE 36 05
        clc                                     ; EE6C 18
LEE6D:
        adc     BUF3+14,x                       ; EE6D 7D 0E C4
        sta     BUF3+14,x                       ; EE70 9D 0E C4
        lda     LOCREB+1                        ; EE73 AD 36 05
        adc     BUF3+15,x                       ; EE76 7D 0F C4
        sta     BUF3+15,x                       ; EE79 9D 0F C4
        jsr     _XSCAT                          ; EE7C 20 66 D6
        jsr     LD66E                           ; EE7F 20 6E D6
        ldy     #$10                            ; EE82 A0 10
        lda     (DECDEB),y                      ; EE84 B1 04
        tay                                     ; EE86 A8
        jmp     LEBEE                           ; EE87 4C EE EB

; ----------------------------------------------------------------------------
LEE8A:
        lda     DESALO                          ; EE8A AD 2D 05
        ldx     DESALO+1                        ; EE8D AE 2E 05
        sta     BUF1+4                          ; EE90 8D 04 C1
        stx     BUF1+5                          ; EE93 8E 05 C1
        ldy     #$14                            ; EE96 A0 14
        sta     (DECDEB),y                      ; EE98 91 04
        iny                                     ; EE9A C8
        txa                                     ; EE9B 8A
        sta     (DECDEB),y                      ; EE9C 91 04
        jmp     LD69E                           ; EE9E 4C 9E D6

; ----------------------------------------------------------------------------
; Prendre infos fichier (FICNUM)
_XFST:
        jsr     LECA1                           ; EEA1 20 A1 EC
        ldy     #$12                            ; EEA4 A0 12
        lda     (DECDEB),y                      ; EEA6 B1 04
        tay                                     ; EEA8 A8
        ldx     #$01                            ; EEA9 A2 01
        lda     (DECFIN),y                      ; EEAB B1 06
        bpl     LEEB8                           ; EEAD 10 09
        cmp     #$FF                            ; EEAF C9 FF
        beq     LEEB6                           ; EEB1 F0 03
        ldx     #$02                            ; EEB3 A2 02
        .byte   $2C                             ; EEB5 2C
LEEB6:
        ldx     #$00                            ; EEB6 A2 00
LEEB8:
        stx     ACC1M                           ; EEB8 86 61
        lda     #$00                            ; EEBA A9 00
        sta     ACC1M+1                         ; EEBC 85 62
        bit     FICTYP                          ; EEBE 2C 47 05
        bpl     LEECE                           ; EEC1 10 0B
        ldy     #$14                            ; EEC3 A0 14
        lda     (DECDEB),y                      ; EEC5 B1 04
        sta     ACC1M                           ; EEC7 85 61
        iny                                     ; EEC9 C8
        lda     (DECDEB),y                      ; EECA B1 04
        sta     ACC1M+1                         ; EECC 85 62
LEECE:
        rts                                     ; EECE 60

; ----------------------------------------------------------------------------
SEECF:
        .byte   "DAT"                           ; EECF 44 41 54
; ----------------------------------------------------------------------------
        jmp     LE1FE                           ; EED2 4C FE E1

; ----------------------------------------------------------------------------
        jmp     LDCC6                           ; EED5 4C C6 DC

; ----------------------------------------------------------------------------
LEED8:
        ldx     #$0B                            ; EED8 A2 0B
        jmp     _XERREU                         ; EEDA 4C 12 D6

; ----------------------------------------------------------------------------
; Ouvre un fichier (BUFNOM, FICNUM)
_XOPEN:
        php                                     ; EEDD 08
        sei                                     ; EEDE 78
        jsr     LECD8                           ; EEDF 20 D8 EC
        beq     LEED8                           ; EEE2 F0 F4
        ldx     #$02                            ; EEE4 A2 02
LEEE6:
        lda     SEECF,x                         ; EEE6 BD CF EE
        sta     BUFNOM+10,x                     ; EEE9 9D 21 05
        dex                                     ; EEEC CA
        bpl     LEEE6                           ; EEED 10 F7
        lsr     INDIC2                          ; EEEF 46 57
        jsr     _XTRVNM                         ; EEF1 20 27 D7
        bne     LEF32                           ; EEF4 D0 3C
        sec                                     ; EEF6 38
        ror     INDIC2                          ; EEF7 66 57
        tay                                     ; EEF9 A8
        lda     #$04                            ; EEFA A9 04
        jsr     LD7BD                           ; EEFC 20 BD D7
        lda     #$05                            ; EEFF A9 05
        ldy     #$40                            ; EF01 A0 40
        sta     $0526                           ; EF03 8D 26 05
        sty     $0527                           ; EF06 8C 27 05
        lda     DECREP                          ; EF09 AD 37 05
        ldy     DECRES                          ; EF0C AC 38 05
        sta     $0524                           ; EF0F 8D 24 05
        sty     $0525                           ; EF12 8C 25 05
        jsr     _XTRVCA                         ; EF15 20 53 D7
        jsr     _XBUCA                          ; EF18 20 E8 D6
        jsr     _XSCAT                          ; EF1B 20 66 D6
        jsr     LD66E                           ; EF1E 20 6E D6
        lda     BUF1+12                         ; EF21 AD 0C C1
        ldy     BUF1+13                         ; EF24 AC 0D C1
        jsr     _XPBUF1                         ; EF27 20 3D D6
        lda     #$FF                            ; EF2A A9 FF
        sta     BUF1                            ; EF2C 8D 00 C1
        jsr     _XSVSEC                         ; EF2F 20 9A D6
LEF32:
        jsr     LEC74                           ; EF32 20 74 EC
        ldy     #$00                            ; EF35 A0 00
        lda     DRIVE                           ; EF37 AD 00 05
        sta     (DECDEB),y                      ; EF3A 91 04
        lda     DECCIB                          ; EF3C A5 08
        ldy     DECCIB+1                        ; EF3E A4 09
        sec                                     ; EF40 38
        sbc     #$10                            ; EF41 E9 10
        bcs     LEF46                           ; EF43 B0 01
        dey                                     ; EF45 88
LEF46:
        sta     TD5                             ; EF46 85 52
        sty     TD6                             ; EF48 84 53
        ldy     #$20                            ; EF4A A0 20
        ldx     POSNMX                          ; EF4C AE 16 05
        lda     BUF3+12,x                       ; EF4F BD 0C C4
        sta     (DECDEB),y                      ; EF52 91 04
        iny                                     ; EF54 C8
        lda     BUF3+13,x                       ; EF55 BD 0D C4
        sta     (DECDEB),y                      ; EF58 91 04
        ldy     #$1D                            ; EF5A A0 1D
        lda     #$20                            ; EF5C A9 20
        sta     (DECDEB),y                      ; EF5E 91 04
        sta     TD7                             ; EF60 85 54
        jsr     LEBE7                           ; EF62 20 E7 EB
        jsr     LED3F                           ; EF65 20 3F ED
        pha                                     ; EF68 48
        tya                                     ; EF69 98
        beq     LEF95                           ; EF6A F0 29
        pla                                     ; EF6C 68
LEF6D:
        jsr     _XPBUF1                         ; EF6D 20 3D D6
        inc     TD7                             ; EF70 E6 54
        inc     TD7                             ; EF72 E6 54
        lda     TD7                             ; EF74 A5 54
        ldy     #$1D                            ; EF76 A0 1D
        sta     (DECDEB),y                      ; EF78 91 04
        tay                                     ; EF7A A8
        lda     TRACK                           ; EF7B AD 01 05
        sta     (DECDEB),y                      ; EF7E 91 04
        iny                                     ; EF80 C8
        lda     SECTOR                          ; EF81 AD 02 05
        sta     (DECDEB),y                      ; EF84 91 04
        lda     BUF1                            ; EF86 AD 00 C1
        sta     TRACK                           ; EF89 8D 01 05
        ldy     BUF1+1                          ; EF8C AC 01 C1
        sty     SECTOR                          ; EF8F 8C 02 05
        bne     LEF6D                           ; EF92 D0 D9
        .byte   $24                             ; EF94 24
LEF95:
        pla                                     ; EF95 68
        ldy     #$1B                            ; EF96 A0 1B
        ldx     #$08                            ; EF98 A2 08
LEF9A:
        lda     (TD5),y                         ; EF9A B1 52
        sta     (DECDEB),y                      ; EF9C 91 04
        dey                                     ; EF9E 88
        dex                                     ; EF9F CA
        bpl     LEF9A                           ; EFA0 10 F8
        cmp     FTYPE                           ; EFA2 CD 2C 05
        beq     LEFAA                           ; EFA5 F0 03
        jmp     LF129                           ; EFA7 4C 29 F1

; ----------------------------------------------------------------------------
LEFAA:
        ldx     POSNMX                          ; EFAA AE 16 05
        ldy     #$01                            ; EFAD A0 01
LEFAF:
        lda     BUF3,x                          ; EFAF BD 00 C4
        sta     (DECDEB),y                      ; EFB2 91 04
        inx                                     ; EFB4 E8
        iny                                     ; EFB5 C8
        cpy     #$10                            ; EFB6 C0 10
        bne     LEFAF                           ; EFB8 D0 F5
        jsr     LECD8                           ; EFBA 20 D8 EC
        sta     (TD0,x)                         ; EFBD 81 4D
        plp                                     ; EFBF 28
        ldy     #$11                            ; EFC0 A0 11
        lda     #$00                            ; EFC2 A9 00
        sta     (DECDEB),y                      ; EFC4 91 04
LEFC6:
        ldy     #$10                            ; EFC6 A0 10
        lda     #$20                            ; EFC8 A9 20
        sta     (DECDEB),y                      ; EFCA 91 04
        lda     #$00                            ; EFCC A9 00
        ldy     #$12                            ; EFCE A0 12
        sta     (DECDEB),y                      ; EFD0 91 04
        lda     DECFIN                          ; EFD2 A5 06
        sta     RWBUF                           ; EFD4 8D 03 05
        lda     DECFIN+1                        ; EFD7 A5 07
        sta     RWBUF+1                         ; EFD9 8D 04 05
        jsr     LED42                           ; EFDC 20 42 ED
        jsr     LD650                           ; EFDF 20 50 D6
        ldy     #$1C                            ; EFE2 A0 1C
        lda     #$0C                            ; EFE4 A9 0C
        sta     (DECDEB),y                      ; EFE6 91 04
        rts                                     ; EFE8 60

; ----------------------------------------------------------------------------
; Ferme un fichier (FICNUM)
_XCLOSE:
        ldx     FICNUM                          ; EFE9 AE 48 05
        bne     LF002                           ; EFEC D0 14
        lda     NBFIC                           ; EFEE AD 49 05
        sta     FICNUM                          ; EFF1 8D 48 05
LEFF4:
        jsr     LECD8                           ; EFF4 20 D8 EC
        bne     LEFFC                           ; EFF7 D0 03
        jsr     LF002                           ; EFF9 20 02 F0
LEFFC:
        dec     FICNUM                          ; EFFC CE 48 05
        bne     LEFF4                           ; EFFF D0 F3
LF001:
        rts                                     ; F001 60

; ----------------------------------------------------------------------------
LF002:
        jsr     LECA1                           ; F002 20 A1 EC
        jsr     LECD8                           ; F005 20 D8 EC
        sta     (TD0,x)                         ; F008 81 4D
        bit     FICTYP                          ; F00A 2C 47 05
        bmi     LF001                           ; F00D 30 F2
        jmp     LED23                           ; F00F 4C 23 ED

; ----------------------------------------------------------------------------
        ldx     #$0C                            ; F012 A2 0C
        jmp     _XERREU                         ; F014 4C 12 D6

; ----------------------------------------------------------------------------
LF017:
        ldx     #$0E                            ; F017 A2 0E
        jmp     _XERREU                         ; F019 4C 12 D6

; ----------------------------------------------------------------------------
; Ecrire (séquentiel)
_XSPUT:
        php                                     ; F01C 08
        jsr     LF102                           ; F01D 20 02 F1
        ldy     TD3                             ; F020 A4 50
        ldx     TD5                             ; F022 A6 52
        beq     LF02A                           ; F024 F0 04
        eor     ACC1S                           ; F026 45 65
        bmi     LF017                           ; F028 30 ED
LF02A:
        lda     #$05                            ; F02A A9 05
        sta     TD7                             ; F02C 85 54
        lda     ACC1S                           ; F02E A5 65
        and     #$80                            ; F030 29 80
        sta     (DECTRV),y                      ; F032 91 0A
        jsr     LED05                           ; F034 20 05 ED
        bit     ACC1S                           ; F037 24 65
        bpl     LF049                           ; F039 10 0E
        ldy     TD3                             ; F03B A4 50
        lda     TD5                             ; F03D A5 52
        bne     LF045                           ; F03F D0 04
        lda     ACC1E                           ; F041 A5 60
        sta     (DECTRV),y                      ; F043 91 0A
LF045:
        lda     (DECTRV),y                      ; F045 B1 0A
        sta     TD7                             ; F047 85 54
LF049:
        jsr     LED05                           ; F049 20 05 ED
LF04C:
        ldy     TD6                             ; F04C A4 53
        lda     ACC1E,y                         ; F04E B9 60 00
        bit     ACC1S                           ; F051 24 65
        bpl     LF05D                           ; F053 10 08
        lda     (ACC1M),y                       ; F055 B1 61
        cpy     ACC1E                           ; F057 C4 60
        bcc     LF05D                           ; F059 90 02
        lda     #$20                            ; F05B A9 20
LF05D:
        ldy     TD3                             ; F05D A4 50
        sta     (DECTRV),y                      ; F05F 91 0A
        jsr     LED05                           ; F061 20 05 ED
        inc     TD6                             ; F064 E6 53
        dec     TD7                             ; F066 C6 54
        bne     LF04C                           ; F068 D0 E2
        ldx     TD5                             ; F06A A6 52
        bne     LF074                           ; F06C D0 06
        dex                                     ; F06E CA
        txa                                     ; F06F 8A
        ldy     TD3                             ; F070 A4 50
        sta     (DECTRV),y                      ; F072 91 0A
LF074:
        lda     #$80                            ; F074 A9 80
        ldy     #$11                            ; F076 A0 11
        sta     (DECDEB),y                      ; F078 91 04
LF07A:
        jsr     LF12E                           ; F07A 20 2E F1
        jsr     LEBD2                           ; F07D 20 D2 EB
        plp                                     ; F080 28
        rts                                     ; F081 60

; ----------------------------------------------------------------------------
; Lire (séquntiel)
_XSTAKE:
        lsr     INDIC1                          ; F082 46 56
        bpl     LF08F                           ; F084 10 09
; Placer index séquentiel à la fin du fichier
_XAPPEN:
        sec                                     ; F086 38
        ror     INDIC1                          ; F087 66 56
        .byte   $2C                             ; F089 2C
; Sauter enregistrement (fichier séquentiel FICNUM)
_XJUMP:
        lsr     INDIC1                          ; F08A 46 56
        sec                                     ; F08C 38
        ror     INDIC1                          ; F08D 66 56
LF08F:
        php                                     ; F08F 08
        jsr     LF102                           ; F090 20 02 F1
        ldx     TD5                             ; F093 A6 52
        bne     LF09D                           ; F095 D0 06
        bit     INDIC1                          ; F097 24 56
        bpl     LF0FD                           ; F099 10 62
        bmi     LF07A                           ; F09B 30 DD
LF09D:
        sta     ACC1S                           ; F09D 85 65
        jsr     LED07                           ; F09F 20 07 ED
        ldy     TD3                             ; F0A2 A4 50
        lda     (DECTRV),y                      ; F0A4 B1 0A
        bit     ACC1S                           ; F0A6 24 65
        bmi     LF0AC                           ; F0A8 30 02
        lda     #$05                            ; F0AA A9 05
LF0AC:
        sta     ACC1E                           ; F0AC 85 60
        sta     TD7                             ; F0AE 85 54
        jsr     LED07                           ; F0B0 20 07 ED
        lda     TD3                             ; F0B3 A5 50
        clc                                     ; F0B5 18
        adc     DECTRV                          ; F0B6 65 0A
        sta     ACC1M                           ; F0B8 85 61
        lda     #$00                            ; F0BA A9 00
        adc     DECTRV+1                        ; F0BC 65 0B
        sta     ACC1M+1                         ; F0BE 85 62
LF0C0:
        ldy     TD3                             ; F0C0 A4 50
        lda     (DECTRV),y                      ; F0C2 B1 0A
        ldy     TD6                             ; F0C4 A4 53
        bit     ACC1S                           ; F0C6 24 65
        bmi     LF0CD                           ; F0C8 30 03
        sta     ACC1E,y                         ; F0CA 99 60 00
LF0CD:
        jsr     LED07                           ; F0CD 20 07 ED
        inc     TD6                             ; F0D0 E6 53
        dec     TD7                             ; F0D2 C6 54
        bne     LF0C0                           ; F0D4 D0 EA
        lda     #$00                            ; F0D6 A9 00
        sta     TD6                             ; F0D8 85 53
        bit     INDIC1                          ; F0DA 24 56
        bpl     LF0FA                           ; F0DC 10 1C
        bvs     LF0F2                           ; F0DE 70 12
        lda     DESALO                          ; F0E0 AD 2D 05
        bne     LF0E8                           ; F0E3 D0 03
        dec     DESALO+1                        ; F0E5 CE 2E 05
LF0E8:
        dec     DESALO                          ; F0E8 CE 2D 05
        bne     LF0F2                           ; F0EB D0 05
        lda     DESALO+1                        ; F0ED AD 2E 05
        beq     LF0FA                           ; F0F0 F0 08
LF0F2:
        ldy     TD3                             ; F0F2 A4 50
        lda     (DECTRV),y                      ; F0F4 B1 0A
        cmp     #$FF                            ; F0F6 C9 FF
        bne     LF09D                           ; F0F8 D0 A3
LF0FA:
        jmp     LF07A                           ; F0FA 4C 7A F0

; ----------------------------------------------------------------------------
LF0FD:
        ldx     #$0D                            ; F0FD A2 0D
        jmp     _XERREU                         ; F0FF 4C 12 D6

; ----------------------------------------------------------------------------
LF102:
        sei                                     ; F102 78
        lsr     TD4                             ; F103 46 51
        jsr     LECA1                           ; F105 20 A1 EC
        ldy     #$00                            ; F108 A0 00
        sty     TD6                             ; F10A 84 53
LF10C:
        lda     (DECFIN),y                      ; F10C B1 06
        sta     (DECTRV),y                      ; F10E 91 0A
        dey                                     ; F110 88
        bne     LF10C                           ; F111 D0 F9
        ldy     #$12                            ; F113 A0 12
        lda     (DECDEB),y                      ; F115 B1 04
        tay                                     ; F117 A8
        sta     TD3                             ; F118 85 50
        lda     (DECTRV),y                      ; F11A B1 0A
        pha                                     ; F11C 48
        sec                                     ; F11D 38
        sbc     #$FF                            ; F11E E9 FF
        sta     TD5                             ; F120 85 52
        pla                                     ; F122 68
        bit     FICTYP                          ; F123 2C 47 05
        bmi     LF129                           ; F126 30 01
        rts                                     ; F128 60

; ----------------------------------------------------------------------------
LF129:
        ldx     #$06                            ; F129 A2 06
        jmp     _XERREU                         ; F12B 4C 12 D6

; ----------------------------------------------------------------------------
LF12E:
        ldy     #$00                            ; F12E A0 00
LF130:
        lda     (DECTRV),y                      ; F130 B1 0A
        sta     (DECFIN),y                      ; F132 91 06
        dey                                     ; F134 88
        bne     LF130                           ; F135 D0 F9
        rts                                     ; F137 60

; ----------------------------------------------------------------------------
; Placer index séquentiel au début du fichier
_XREWIN:
        php                                     ; F138 08
        jsr     LF102                           ; F139 20 02 F1
        jsr     LED23                           ; F13C 20 23 ED
        jsr     LEBE7                           ; F13F 20 E7 EB
        jsr     LEFC6                           ; F142 20 C6 EF
        plp                                     ; F145 28
        rts                                     ; F146 60

; ----------------------------------------------------------------------------
LF147:
        ldx     #$0F                            ; F147 A2 0F
        jmp     _XERREU                         ; F149 4C 12 D6

; ----------------------------------------------------------------------------
; Ecrire enregistrement (fichier FICNUM)
_XPUT:
        sec                                     ; F14C 38
        .byte   $24                             ; F14D 24
; Prendre enregistrement (fichier FICUM)
_XTAKE:
        clc                                     ; F14E 18
        php                                     ; F14F 08
        sei                                     ; F150 78
        ror     TD4                             ; F151 66 51
        jsr     LECA1                           ; F153 20 A1 EC
        bit     FICTYP                          ; F156 2C 47 05
        bpl     LF129                           ; F159 10 CE
        lda     #$20                            ; F15B A9 20
        sta     INDFCB                          ; F15D 8D 46 05
        lda     DESALO                          ; F160 AD 2D 05
        ldy     DESALO+1                        ; F163 AC 2E 05
        jsr     LF2E3                           ; F166 20 E3 F2
        pha                                     ; F169 48
        tya                                     ; F16A 98
        pha                                     ; F16B 48
        ldy     #$14                            ; F16C A0 14
        lda     DESALO                          ; F16E AD 2D 05
        ora     DESALO+1                        ; F171 0D 2E 05
        beq     LF147                           ; F174 F0 D1
        lda     DESALO                          ; F176 AD 2D 05
        sec                                     ; F179 38
        sbc     (DECDEB),y                      ; F17A F1 04
        sta     TD1                             ; F17C 85 4E
        lda     DESALO+1                        ; F17E AD 2E 05
        iny                                     ; F181 C8
        sbc     (DECDEB),y                      ; F182 F1 04
        tay                                     ; F184 A8
        bcc     LF1A8                           ; F185 90 21
        ora     TD1                             ; F187 05 4E
        beq     LF1A8                           ; F189 F0 1D
        bit     TD4                             ; F18B 24 51
        bpl     LF147                           ; F18D 10 B8
        ldy     #$1A                            ; F18F A0 1A
        lda     TR0                             ; F191 A5 0C
        ldx     TR1                             ; F193 A6 0D
        clc                                     ; F195 18
        adc     #$04                            ; F196 69 04
        bcc     LF19B                           ; F198 90 01
        inx                                     ; F19A E8
LF19B:
        sec                                     ; F19B 38
        sbc     (DECDEB),y                      ; F19C F1 04
        sta     TD1                             ; F19E 85 4E
        iny                                     ; F1A0 C8
        txa                                     ; F1A1 8A
        sbc     (DECDEB),y                      ; F1A2 F1 04
        tay                                     ; F1A4 A8
        jsr     LED50                           ; F1A5 20 50 ED
LF1A8:
        pla                                     ; F1A8 68
        sta     TR1                             ; F1A9 85 0D
        pla                                     ; F1AB 68
        tax                                     ; F1AC AA
        inx                                     ; F1AD E8
        bne     LF1B2                           ; F1AE D0 02
        inc     TR1                             ; F1B0 E6 0D
LF1B2:
        txa                                     ; F1B2 8A
        ldx     #$0C                            ; F1B3 A2 0C
        ldy     TR1                             ; F1B5 A4 0D
        bne     LF1BD                           ; F1B7 D0 04
        cmp     #$7A                            ; F1B9 C9 7A
        bcc     LF1DB                           ; F1BB 90 1E
LF1BD:
        sec                                     ; F1BD 38
        sbc     #$7A                            ; F1BE E9 7A
        bcs     LF1C4                           ; F1C0 B0 02
LF1C2:
        dec     TR1                             ; F1C2 C6 0D
LF1C4:
        inc     INDFCB                          ; F1C4 EE 46 05
        inc     INDFCB                          ; F1C7 EE 46 05
        ldx     #$02                            ; F1CA A2 02
        ldy     TR1                             ; F1CC A4 0D
        bne     LF1D4                           ; F1CE D0 04
        cmp     #$7F                            ; F1D0 C9 7F
        bcc     LF1DB                           ; F1D2 90 07
LF1D4:
        sec                                     ; F1D4 38
        sbc     #$7F                            ; F1D5 E9 7F
        bcs     LF1C4                           ; F1D7 B0 EB
        bcc     LF1C2                           ; F1D9 90 E7
LF1DB:
        asl     a                               ; F1DB 0A
        sta     TD0                             ; F1DC 85 4D
        txa                                     ; F1DE 8A
        adc     TD0                             ; F1DF 65 4D
        sta     TD0                             ; F1E1 85 4D
        lda     INDFCB                          ; F1E3 AD 46 05
        ldy     #$10                            ; F1E6 A0 10
        cmp     (DECDEB),y                      ; F1E8 D1 04
        beq     LF1F2                           ; F1EA F0 06
        sta     (DECDEB),y                      ; F1EC 91 04
        tay                                     ; F1EE A8
        jsr     LEBEE                           ; F1EF 20 EE EB
LF1F2:
        lda     TD0                             ; F1F2 A5 4D
        ldy     #$1C                            ; F1F4 A0 1C
        sta     (DECDEB),y                      ; F1F6 91 04
        jsr     LED39                           ; F1F8 20 39 ED
        tax                                     ; F1FB AA
        pha                                     ; F1FC 48
        tya                                     ; F1FD 98
        pha                                     ; F1FE 48
        txa                                     ; F1FF 8A
        jsr     LEC4C                           ; F200 20 4C EC
        inc     DECTRV+1                        ; F203 E6 0B
        jsr     LEC03                           ; F205 20 03 EC
        lda     TRACK                           ; F208 AD 01 05
        pha                                     ; F20B 48
        lda     SECTOR                          ; F20C AD 02 05
        pha                                     ; F20F 48
        inc     DECTRV+1                        ; F210 E6 0B
        jsr     LEC03                           ; F212 20 03 EC
        lda     TAMPFC                          ; F215 AD 42 05
        ldy     TAMPFC+1                        ; F218 AC 43 05
        clc                                     ; F21B 18
        adc     TD3                             ; F21C 65 50
        sta     DECTRV                          ; F21E 85 0A
        bcc     LF223                           ; F220 90 01
        iny                                     ; F222 C8
LF223:
        sty     DECTRV+1                        ; F223 84 0B
LF225:
        ldy     #$00                            ; F225 A0 00
        lda     (DECFIN),y                      ; F227 B1 06
        cmp     #$FF                            ; F229 C9 FF
        bne     LF230                           ; F22B D0 03
        jmp     LF2B4                           ; F22D 4C B4 F2

; ----------------------------------------------------------------------------
LF230:
        sta     ACC1S                           ; F230 85 65
        pha                                     ; F232 48
        inc     DECFIN                          ; F233 E6 06
        bne     LF239                           ; F235 D0 02
        inc     DECFIN+1                        ; F237 E6 07
LF239:
        lda     (DECFIN),y                      ; F239 B1 06
        sta     TD7                             ; F23B 85 54
        sta     TD6                             ; F23D 85 53
        sta     ACC1E                           ; F23F 85 60
        lda     DECTRV                          ; F241 A5 0A
        sta     ACC1M                           ; F243 85 61
        lda     DECTRV+1                        ; F245 A5 0B
        sta     ACC1M+1                         ; F247 85 62
        bit     ACC1S                           ; F249 24 65
        bmi     LF25B                           ; F24B 30 0E
        lda     #$05                            ; F24D A9 05
        sta     TD6                             ; F24F 85 53
        ldy     #$04                            ; F251 A0 04
LF253:
        lda     (DECTRV),y                      ; F253 B1 0A
        sta     ACC1E,y                         ; F255 99 60 00
        dey                                     ; F258 88
        bpl     LF253                           ; F259 10 F8
LF25B:
        inc     DECFIN                          ; F25B E6 06
        bne     LF261                           ; F25D D0 02
        inc     DECFIN+1                        ; F25F E6 07
LF261:
        lda     XFIELD                          ; F261 AD 4C 05
        sta     BNKCID                          ; F264 8D 17 04
        lda     $054D                           ; F267 AD 4D 05
        ldy     $054E                           ; F26A AC 4E 05
        sta     VEXBNK+1                        ; F26D 8D 15 04
        sty     VEXBNK+2                        ; F270 8C 16 04
        jsr     EXBNK                           ; F273 20 0C 04
        pla                                     ; F276 68
        bit     TD4                             ; F277 24 51
        bpl     LF29B                           ; F279 10 20
        tay                                     ; F27B A8
        bpl     LF291                           ; F27C 10 13
        ldy     #$00                            ; F27E A0 00
LF280:
        lda     (ACC1M),y                       ; F280 B1 61
        cpy     ACC1E                           ; F282 C4 60
        bcc     LF288                           ; F284 90 02
        lda     #$20                            ; F286 A9 20
LF288:
        sta     (DECTRV),y                      ; F288 91 0A
        iny                                     ; F28A C8
        dec     TD7                             ; F28B C6 54
        bne     LF280                           ; F28D D0 F1
        beq     LF29B                           ; F28F F0 0A
LF291:
        ldy     #$04                            ; F291 A0 04
LF293:
        lda     ACC1E,y                         ; F293 B9 60 00
        sta     (DECTRV),y                      ; F296 91 0A
        dey                                     ; F298 88
        bpl     LF293                           ; F299 10 F8
LF29B:
        lda     TD6                             ; F29B A5 53
        clc                                     ; F29D 18
        adc     DECTRV                          ; F29E 65 0A
        sta     DECTRV                          ; F2A0 85 0A
        bcc     LF2A6                           ; F2A2 90 02
        inc     DECTRV+1                        ; F2A4 E6 0B
LF2A6:
        lda     DECFIN                          ; F2A6 A5 06
        clc                                     ; F2A8 18
        adc     #$08                            ; F2A9 69 08
        sta     DECFIN                          ; F2AB 85 06
        bcc     LF2B1                           ; F2AD 90 02
        inc     DECFIN+1                        ; F2AF E6 07
LF2B1:
        jmp     LF225                           ; F2B1 4C 25 F2

; ----------------------------------------------------------------------------
LF2B4:
        bit     TD4                             ; F2B4 24 51
        bpl     LF2DD                           ; F2B6 10 25
        ldx     TAMPFC                          ; F2B8 AE 42 05
        stx     RWBUF                           ; F2BB 8E 03 05
        ldx     TAMPFC+1                        ; F2BE AE 43 05
        inx                                     ; F2C1 E8
        inx                                     ; F2C2 E8
        stx     RWBUF+1                         ; F2C3 8E 04 05
        jsr     _XSVSEC                         ; F2C6 20 9A D6
        dec     RWBUF+1                         ; F2C9 CE 04 05
        pla                                     ; F2CC 68
        tay                                     ; F2CD A8
        pla                                     ; F2CE 68
        jsr     _XSAY                           ; F2CF 20 94 D6
        pla                                     ; F2D2 68
        tay                                     ; F2D3 A8
        pla                                     ; F2D4 68
        dec     RWBUF+1                         ; F2D5 CE 04 05
        jsr     _XSAY                           ; F2D8 20 94 D6
        plp                                     ; F2DB 28
        rts                                     ; F2DC 60

; ----------------------------------------------------------------------------
LF2DD:
        pla                                     ; F2DD 68
        pla                                     ; F2DE 68
        pla                                     ; F2DF 68
        pla                                     ; F2E0 68
        plp                                     ; F2E1 28
        rts                                     ; F2E2 60

; ----------------------------------------------------------------------------
LF2E3:
        ldx     FICLON                          ; F2E3 AE 4A 05
        stx     RES                             ; F2E6 86 00
        ldx     FICLON+1                        ; F2E8 AE 4B 05
        stx     RES+1                           ; F2EB 86 01
        _XMULT                                  ; F2ED 00 21
        ldx     #$07                            ; F2EF A2 07
LF2F1:
        lsr     TR2                             ; F2F1 46 0E
        ror     TR1                             ; F2F3 66 0D
        ror     TR0                             ; F2F5 66 0C
        ror     TD3                             ; F2F7 66 50
        dex                                     ; F2F9 CA
        bpl     LF2F1                           ; F2FA 10 F5
        lda     TR0                             ; F2FC A5 0C
        ldy     TR1                             ; F2FE A4 0D
        rts                                     ; F300 60

; ----------------------------------------------------------------------------
LF301:
        jmp     LDCC6                           ; F301 4C C6 DC

; ----------------------------------------------------------------------------
LF304:
        jmp     LDCC3                           ; F304 4C C3 DC

; ----------------------------------------------------------------------------
LF307:
        jmp     LF304                           ; F307 4C 04 F3

; ----------------------------------------------------------------------------
; Merge (Hyperbasic)
_XMERGE:
        jsr     _XTRVNM                         ; F30A 20 27 D7
        beq     LF301                           ; F30D F0 F2
        lda     BUF3+12,x                       ; F30F BD 0C C4
        ldy     BUF3+13,x                       ; F312 BC 0D C4
        jsr     _XPBUF1                         ; F315 20 3D D6
        lda     BUF1+3                          ; F318 AD 03 C1
        bpl     LF304                           ; F31B 10 E7
        sec                                     ; F31D 38
        lda     BUF1+6                          ; F31E AD 06 C1
        sbc     BUF1+4                          ; F321 ED 04 C1
        sta     RES                             ; F324 85 00
        lda     BUF1+7                          ; F326 AD 07 C1
        sbc     BUF1+5                          ; F329 ED 05 C1
        sta     RES+1                           ; F32C 85 01
        sec                                     ; F32E 38
        lda     $07FB                           ; F32F AD FB 07
        sbc     RES                             ; F332 E5 00
        sta     DESALO                          ; F334 8D 2D 05
        sta     ADASC                           ; F337 85 2E
        lda     $07FC                           ; F339 AD FC 07
        sbc     #$01                            ; F33C E9 01
        sbc     RES+1                           ; F33E E5 01
        sta     DESALO+1                        ; F340 8D 2E 05
        sta     ADASC+1                         ; F343 85 2F
        lda     DESALO                          ; F345 AD 2D 05
        cmp     $07F5                           ; F348 CD F5 07
        lda     DESALO+1                        ; F34B AD 2E 05
        sbc     $07F6                           ; F34E ED F6 07
        bcc     LF307                           ; F351 90 B4
        lda     #$00                            ; F353 A9 00
        sta     VASALO0                         ; F355 8D 28 05
        lda     #$80                            ; F358 A9 80
        sta     VASALO1                         ; F35A 8D 29 05
        ldx     POSNMX                          ; F35D AE 16 05
        jsr     LDCD0                           ; F360 20 D0 DC
        lda     #$00                            ; F363 A9 00
        sta     VARLNG+15                       ; F365 85 9B
        sec                                     ; F367 38
        lda     ADASC                           ; F368 A5 2E
        sbc     #$F0                            ; F36A E9 F0
        sta     TR3                             ; F36C 85 0F
        lda     ADASC+1                         ; F36E A5 2F
        sbc     #$07                            ; F370 E9 07
        sta     TR4                             ; F372 85 10
        clc                                     ; F374 18
        ldy     #$0D                            ; F375 A0 0D
        lda     (ADASC),y                       ; F377 B1 2E
        adc     TR3                             ; F379 65 0F
        tax                                     ; F37B AA
        iny                                     ; F37C C8
        lda     (ADASC),y                       ; F37D B1 2E
        adc     TR4                             ; F37F 65 10
        ldy     #$EF                            ; F381 A0 EF
        stx     ADVDT                           ; F383 86 2C
        sta     ADVDT+1                         ; F385 85 2D
        jsr     LF475                           ; F387 20 75 F4
        ldx     #$20                            ; F38A A2 20
; Remplacer LF484 par LF485-1
LF38C:
        lda     LF484,x                         ; F38C BD 84 F4
        sta     $BFDF,x                         ; F38F 9D DF BF
        dex                                     ; F392 CA
        bne     LF38C                           ; F393 D0 F7
        clc                                     ; F395 18
        lda     #$10                            ; F396 A9 10
        adc     ADASC                           ; F398 65 2E
        sta     ADASC                           ; F39A 85 2E
        bcc     LF3A0                           ; F39C 90 02
        inc     ADASC+1                         ; F39E E6 2F
LF3A0:
        lda     #$00                            ; F3A0 A9 00
        sta     TLMCAL                          ; F3A2 8D EA 07
        lda     #$60                            ; F3A5 A9 60
        sta     TLMCAL+2                        ; F3A7 8D EC 07
        ldy     #$00                            ; F3AA A0 00
        lda     (ADASC),y                       ; F3AC B1 2E
        bne     LF3B9                           ; F3AE D0 09
        lda     #$0E                            ; F3B0 A9 0E
        _XWR0                                   ; F3B2 00 10
        lda     #$0D                            ; F3B4 A9 0D
        _XWR0                                   ; F3B6 00 10
        rts                                     ; F3B8 60

; ----------------------------------------------------------------------------
LF3B9:
        lda     #$20                            ; F3B9 A9 20
        sta     DEFAFF                          ; F3BB 85 14
        ldx     #$03                            ; F3BD A2 03
        ldy     #$01                            ; F3BF A0 01
        lda     (ADASC),y                       ; F3C1 B1 2E
        pha                                     ; F3C3 48
        iny                                     ; F3C4 C8
        lda     (ADASC),y                       ; F3C5 B1 2E
        tay                                     ; F3C7 A8
        pla                                     ; F3C8 68
        _XDECIM                                 ; F3C9 00 29
        lda     #$0D                            ; F3CB A9 0D
        _XWR0                                   ; F3CD 00 10
        lda     #$4C                            ; F3CF A9 4C
        ldx     #$E0                            ; F3D1 A2 E0
        ldy     #$BF                            ; F3D3 A0 BF
        sta     TLMCAL                          ; F3D5 8D EA 07
        stx     TLMCAL+1                        ; F3D8 8E EB 07
        sty     TLMCAL+2                        ; F3DB 8C EC 07
        lda     #$00                            ; F3DE A9 00
        sta     VARLNG+15                       ; F3E0 85 9B
        jsr     LF460                           ; F3E2 20 60 F4
        ldy     #$EC                            ; F3E5 A0 EC
        jsr     LF475                           ; F3E7 20 75 F4
        lda     ADASC                           ; F3EA A5 2E
        ldy     ADASC+1                         ; F3EC A4 2F
        sta     RESB                            ; F3EE 85 02
        sty     RESB+1                          ; F3F0 84 03
        lda     #$02                            ; F3F2 A9 02
        sta     VARLNG+12                       ; F3F4 85 98
        lda     #$B9                            ; F3F6 A9 B9
        sta     VDTASC                          ; F3F8 85 33
        ldy     #$E9                            ; F3FA A0 E9
        jsr     LF475                           ; F3FC 20 75 F4
        ldx     VDTASC                          ; F3FF A6 33
        lda     #$00                            ; F401 A9 00
        sta     BUFEDT+2,x                      ; F403 9D 92 05
        jsr     LF460                           ; F406 20 60 F4
        ldy     #$EC                            ; F409 A0 EC
        jsr     LF475                           ; F40B 20 75 F4
        lda     FLGTEL                          ; F40E AD 0D 02
        pha                                     ; F411 48
        ora     #$80                            ; F412 09 80
        sta     FLGTEL                          ; F414 8D 0D 02
        lda     #$27                            ; F417 A9 27
        sta     BUFEDT                          ; F419 8D 90 05
        ldx     #$01                            ; F41C A2 01
        .byte   $2C                             ; F41E 2C
LF41F:
        ldx     #$00                            ; F41F A2 00
        ldy     #$F2                            ; F421 A0 F2
        jsr     LF475                           ; F423 20 75 F4
        bcs     LF41F                           ; F426 B0 F7
        pla                                     ; F428 68
        sta     FLGTEL                          ; F429 8D 0D 02
        tya                                     ; F42C 98
        pha                                     ; F42D 48
        ldy     #$01                            ; F42E A0 01
        lda     (ADASC),y                       ; F430 B1 2E
        sta     RES                             ; F432 85 00
        iny                                     ; F434 C8
        lda     (ADASC),y                       ; F435 B1 2E
        sta     RES+1                           ; F437 85 01
        pla                                     ; F439 68
        _XINSER                                 ; F43A 00 2E
        clc                                     ; F43C 18
        adc     VARBOT                          ; F43D 6D FD 07
        sta     VARBOT                          ; F440 8D FD 07
        tax                                     ; F443 AA
        tya                                     ; F444 98
        adc     VARBOT+1                        ; F445 6D FE 07
        sta     VARBOT+1                        ; F448 8D FE 07
        ldy     #$EF                            ; F44B A0 EF
        jsr     LF475                           ; F44D 20 75 F4
        clc                                     ; F450 18
        ldy     #$00                            ; F451 A0 00
        lda     ADASC                           ; F453 A5 2E
        adc     (ADASC),y                       ; F455 71 2E
        sta     ADASC                           ; F457 85 2E
        bcc     LF45D                           ; F459 90 02
        inc     ADASC+1                         ; F45B E6 2F
LF45D:
        jmp     LF3A0                           ; F45D 4C A0 F3

; ----------------------------------------------------------------------------
LF460:
        lda     VARBOT                          ; F460 AD FD 07
        ldy     ADVDT                           ; F463 A4 2C
        sty     VARBOT                          ; F465 8C FD 07
        sta     ADVDT                           ; F468 85 2C
        lda     VARBOT+1                        ; F46A AD FE 07
        ldy     ADVDT+1                         ; F46D A4 2D
        sty     VARBOT+1                        ; F46F 8C FE 07
        sta     ADVDT+1                         ; F472 85 2D
        rts                                     ; F474 60

; ----------------------------------------------------------------------------
; Appelle la fonction (Y) de la banque 6 (Hyperbasic)
LF475:
        sty     VEXBNK+1                        ; F475 8C 15 04
        ldy     #$FF                            ; F478 A0 FF
        sty     VEXBNK+2                        ; F47A 8C 16 04
        ldy     #$06                            ; F47D A0 06
        sty     BNKCID                          ; F47F 8C 17 04
LF484           := * + 2
        jmp     EXBNK                           ; F482 4C 0C 04

; ----------------------------------------------------------------------------
; Copié en $BFDF par _XMERGE (en LF38C)
LF485:
        stx     VDTATR                          ; F485 86 34
        inc     VDTASC                          ; F487 E6 33
        bit     VDTASC                          ; F489 24 33
        bpl     LF497                           ; F48B 10 0A
        bvc     LF4A2                           ; F48D 50 13
        cmp     #$20                            ; F48F C9 20
        beq     LF4A2                           ; F491 F0 0F
        ldx     #$00                            ; F493 A2 00
        stx     VDTASC                          ; F495 86 33
LF497:
        tax                                     ; F497 AA
        beq     LF4A0                           ; F498 F0 06
        ldx     VDTASC                          ; F49A A6 33
        sta     BUFEDT+1,x                      ; F49C 9D 91 05
        .byte   $2C                             ; F49F 2C
LF4A0:
        dec     VDTASC                          ; F4A0 C6 33
LF4A2:
        ldx     VDTATR                          ; F4A2 A6 34
        rts                                     ; F4A4 60

; ----------------------------------------------------------------------------
; Emission (cartouche TELEMATIC)
_XCTEMET:
        jsr     LFE5F                           ; F4A5 20 5F FE
        jsr     LF8D7                           ; F4A8 20 D7 F8
        jsr     XTRVNM                          ; F4AB 20 7D FF
        beq     LF4B3                           ; F4AE F0 03
        jmp     LF548                           ; F4B0 4C 48 F5

; ----------------------------------------------------------------------------
LF4B3:
        lda     #$38                            ; F4B3 A9 38
        ldy     #$FA                            ; F4B5 A0 FA
        _XWSTR1                                 ; F4B7 00 15
        lda     #$F7                            ; F4B9 A9 F7
        ldy     #$FA                            ; F4BB A0 FA
        _XWSTR1                                 ; F4BD 00 15
        jsr     LF8A8                           ; F4BF 20 A8 F8
        cmp     #$32                            ; F4C2 C9 32
        beq     LF4CF                           ; F4C4 F0 09
        bcc     LF4E6                           ; F4C6 90 1E
        lda     #$08                            ; F4C8 A9 08
        _XWR1                                   ; F4CA 00 11
        jmp     LF4CF                           ; F4CC 4C CF F4

; ----------------------------------------------------------------------------
LF4CF:
        lda     #$E4                            ; F4CF A9 E4
        ldy     #$FA                            ; F4D1 A0 FA
        _XWSTR1                                 ; F4D3 00 15
        jsr     LF875                           ; F4D5 20 75 F8
        ldx     #$03                            ; F4D8 A2 03
LF4DA:
        lda     VDTDES+39,x                     ; F4DA BD 27 9C
        sta     BUFTXT+1,x                      ; F4DD 9D 01 80
        dex                                     ; F4E0 CA
        bpl     LF4DA                           ; F4E1 10 F7
        lda     #$80                            ; F4E3 A9 80
        .byte   $2C                             ; F4E5 2C
LF4E6:
        lda     #$00                            ; F4E6 A9 00
        sta     BUFTXT                          ; F4E8 8D 00 80
        ldx     #$00                            ; F4EB A2 00
        stx     BUFTXT+5                        ; F4ED 8E 05 80
        stx     BUFTXT+6                        ; F4F0 8E 06 80
        lda     #$FF                            ; F4F3 A9 FF
LF4F5:
        sta     $9D00,x                         ; F4F5 9D 00 9D
        dex                                     ; F4F8 CA
        bne     LF4F5                           ; F4F9 D0 FA
        jsr     LF8EE                           ; F4FB 20 EE F8
        ldy     #$00                            ; F4FE A0 00
        sty     DESALO                          ; F500 8C 2D 05
        sty     DESALO+1                        ; F503 8C 2E 05
        lda     #$F7                            ; F506 A9 F7
        sta     FISALO                          ; F508 8D 2F 05
        sty     FISALO+1                        ; F50B 8C 30 05
        jsr     LF910                           ; F50E 20 10 F9
        ldy     #$0A                            ; F511 A0 0A
LF513:
        lda     SF53D,y                         ; F513 B9 3D F5
        sta     (DECFIN),y                      ; F516 91 06
        dey                                     ; F518 88
        bpl     LF513                           ; F519 10 F8
        lda     DECFIN                          ; F51B A5 06
        ldy     DECFIN+1                        ; F51D A4 07
        sta     RWBUF                           ; F51F 8D 03 05
        sty     RWBUF+1                         ; F522 8C 04 05
        ldy     #$0C                            ; F525 A0 0C
        lda     (DECCIB),y                      ; F527 B1 08
        pha                                     ; F529 48
        iny                                     ; F52A C8
        lda     (DECCIB),y                      ; F52B B1 08
        tay                                     ; F52D A8
        pla                                     ; F52E 68
        jsr     XSAY                            ; F52F 20 8F FF
        jsr     LF965                           ; F532 20 65 F9
        jsr     LF9CB                           ; F535 20 CB F9
LF538:
        lda     #$A9                            ; F538 A9 A9
        sta     VARAPL+47                       ; F53A 85 FF
        rts                                     ; F53C 60

; ----------------------------------------------------------------------------
SF53D:
        .byte   $88,$F7                         ; F53D 88 F7
        .byte   "MESSAGE$"                      ; F53F 4D 45 53 53 41 47 45 24
        .byte   $FF                             ; F547 FF
; ----------------------------------------------------------------------------
LF548:
        jsr     LF8D7                           ; F548 20 D7 F8
        jsr     XDEFLO                          ; F54B 20 68 FF
        jsr     XLOAD                           ; F54E 20 62 FF
        jsr     LF910                           ; F551 20 10 F9
        ldx     #$08                            ; F554 A2 08
        lda     #$00                            ; F556 A9 00
        jsr     LF9DB                           ; F558 20 DB F9
        ldy     #$00                            ; F55B A0 00
LF55D:
        lda     (ACC1M),y                       ; F55D B1 61
        sta     $9D00,y                         ; F55F 99 00 9D
        iny                                     ; F562 C8
        bne     LF55D                           ; F563 D0 F8
        lda     #$02                            ; F565 A9 02
        ldy     #$FA                            ; F567 A0 FA
        _XWSTR1                                 ; F569 00 15
        jsr     LF890                           ; F56B 20 90 F8
        ldx     #$06                            ; F56E A2 06
LF570:
        lda     VDTDES+43,x                     ; F570 BD 2B 9C
        sta     VDTDES+32,x                     ; F573 9D 20 9C
        dex                                     ; F576 CA
        bpl     LF570                           ; F577 10 F7
        jsr     LF83A                           ; F579 20 3A F8
        bcs     LF59E                           ; F57C B0 20
LF57E:
        jsr     LF9E4                           ; F57E 20 E4 F9
        jsr     LF8A8                           ; F581 20 A8 F8
        cmp     #$31                            ; F584 C9 31
        bne     LF58E                           ; F586 D0 06
        jsr     LF798                           ; F588 20 98 F7
        jmp     LF57E                           ; F58B 4C 7E F5

; ----------------------------------------------------------------------------
LF58E:
        cmp     #$32                            ; F58E C9 32
        bne     LF598                           ; F590 D0 06
        jsr     LF5F8                           ; F592 20 F8 F5
        jmp     LF57E                           ; F595 4C 7E F5

; ----------------------------------------------------------------------------
LF598:
        jsr     LF7E1                           ; F598 20 E1 F7
        jmp     LF5D8                           ; F59B 4C D8 F5

; ----------------------------------------------------------------------------
LF59E:
        lda     #$03                            ; F59E A9 03
        sta     TR0                             ; F5A0 85 0C
LF5A2:
        lda     #$1B                            ; F5A2 A9 1B
        ldy     #$FA                            ; F5A4 A0 FA
        _XWSTR1                                 ; F5A6 00 15
        jsr     LF875                           ; F5A8 20 75 F8
        ldx     #$03                            ; F5AB A2 03
        ldy     #$0A                            ; F5AD A0 0A
LF5AF:
        lda     VDTDES+39,x                     ; F5AF BD 27 9C
        cmp     (VARAPL+32),y                   ; F5B2 D1 F0
        bne     LF5BC                           ; F5B4 D0 06
        dey                                     ; F5B6 88
        dex                                     ; F5B7 CA
        bpl     LF5AF                           ; F5B8 10 F5
        bmi     LF5C3                           ; F5BA 30 07
LF5BC:
        dec     TR0                             ; F5BC C6 0C
        bne     LF5A2                           ; F5BE D0 E2
        jmp     LF538                           ; F5C0 4C 38 F5

; ----------------------------------------------------------------------------
LF5C3:
        ldy     #$0B                            ; F5C3 A0 0B
        lda     (VARAPL+32),y                   ; F5C5 B1 F0
        tax                                     ; F5C7 AA
        iny                                     ; F5C8 C8
        lda     (VARAPL+32),y                   ; F5C9 B1 F0
        jsr     LF9DB                           ; F5CB 20 DB F9
        ldy     #$00                            ; F5CE A0 00
LF5D0:
        lda     (ACC1M),y                       ; F5D0 B1 61
        sta     $0600,y                         ; F5D2 99 00 06
        iny                                     ; F5D5 C8
        bne     LF5D0                           ; F5D6 D0 F8
LF5D8:
        jsr     LF9E6                           ; F5D8 20 E6 F9
        jsr     LF8A8                           ; F5DB 20 A8 F8
        cmp     #$31                            ; F5DE C9 31
        bne     LF5E8                           ; F5E0 D0 06
        jsr     LF798                           ; F5E2 20 98 F7
        jmp     LF5D8                           ; F5E5 4C D8 F5

; ----------------------------------------------------------------------------
LF5E8:
        cmp     #$32                            ; F5E8 C9 32
        bne     LF5F2                           ; F5EA D0 06
        jsr     LF5F8                           ; F5EC 20 F8 F5
        jmp     LF5D8                           ; F5EF 4C D8 F5

; ----------------------------------------------------------------------------
LF5F2:
        jsr     LF6DA                           ; F5F2 20 DA F6
        jmp     LF5D8                           ; F5F5 4C D8 F5

; ----------------------------------------------------------------------------
LF5F8:
        lda     #$04                            ; F5F8 A9 04
        ldy     #$FC                            ; F5FA A0 FC
        _XWSTR1                                 ; F5FC 00 15
        jsr     LF890                           ; F5FE 20 90 F8
        jsr     LF83C                           ; F601 20 3C F8
        sta     TR0                             ; F604 85 0C
        sty     TR1                             ; F606 84 0D
        bcs     LF617                           ; F608 B0 0D
        lda     #$28                            ; F60A A9 28
        ldy     #$FC                            ; F60C A0 FC
        _XWSTR1                                 ; F60E 00 15
        jsr     LF6EF                           ; F610 20 EF F6
        jmp     LF798                           ; F613 4C 98 F7

; ----------------------------------------------------------------------------
LF616:
        rts                                     ; F616 60

; ----------------------------------------------------------------------------
LF617:
        lda     #$39                            ; F617 A9 39
        ldy     #$FC                            ; F619 A0 FC
        _XWSTR1                                 ; F61B 00 15
        ldx     #$F0                            ; F61D A2 F0
        lda     #$20                            ; F61F A9 20
LF621:
        sta     $9DFF,x                         ; F621 9D FF 9D
        dex                                     ; F624 CA
        bne     LF621                           ; F625 D0 FA
        ldx     #$07                            ; F627 A2 07
LF629:
        lda     VDTDES+31,x                     ; F629 BD 1F 9C
        sta     $9EEF,x                         ; F62C 9D EF 9E
        dex                                     ; F62F CA
        bne     LF629                           ; F630 D0 F7
LF632:
        stx     TR7                             ; F632 86 13
        jsr     LF8C0                           ; F634 20 C0 F8
        ldx     TR7                             ; F637 A6 13
        cmp     #$A5                            ; F639 C9 A5
        beq     LF616                           ; F63B F0 D9
        cmp     #$A6                            ; F63D C9 A6
        beq     LF65D                           ; F63F F0 1C
        cmp     #$08                            ; F641 C9 08
        beq     LF65D                           ; F643 F0 18
        cmp     #$20                            ; F645 C9 20
        bcc     LF668                           ; F647 90 1F
        cmp     #$A0                            ; F649 C9 A0
        bcs     LF668                           ; F64B B0 1B
        cpx     #$F0                            ; F64D E0 F0
        beq     LF632                           ; F64F F0 E1
        sta     $9E00,x                         ; F651 9D 00 9E
        bit     VARAPL+29                       ; F654 24 ED
        bvs     LF65A                           ; F656 70 02
        _XWR1                                   ; F658 00 11
LF65A:
        inx                                     ; F65A E8
        bne     LF632                           ; F65B D0 D5
LF65D:
        txa                                     ; F65D 8A
        beq     LF632                           ; F65E F0 D2
        dex                                     ; F660 CA
        lda     #$08                            ; F661 A9 08
LF663:
        _XWR1                                   ; F663 00 11
        jmp     LF632                           ; F665 4C 32 F6

; ----------------------------------------------------------------------------
LF668:
        cmp     #$A4                            ; F668 C9 A4
        beq     LF670                           ; F66A F0 04
        cmp     #$09                            ; F66C C9 09
        bne     LF679                           ; F66E D0 09
LF670:
        cpx     #$F0                            ; F670 E0 F0
        beq     LF632                           ; F672 F0 BE
        inx                                     ; F674 E8
        lda     #$09                            ; F675 A9 09
        bne     LF663                           ; F677 D0 EA
LF679:
        cmp     #$A7                            ; F679 C9 A7
        bne     LF689                           ; F67B D0 0C
        cpx     #$C8                            ; F67D E0 C8
        bcs     LF632                           ; F67F B0 B1
        txa                                     ; F681 8A
        adc     #$28                            ; F682 69 28
        tax                                     ; F684 AA
        lda     #$0A                            ; F685 A9 0A
        bne     LF663                           ; F687 D0 DA
LF689:
        cmp     #$A1                            ; F689 C9 A1
        bne     LF699                           ; F68B D0 0C
        cpx     #$28                            ; F68D E0 28
        bcc     LF632                           ; F68F 90 A1
        txa                                     ; F691 8A
        sbc     #$28                            ; F692 E9 28
        tax                                     ; F694 AA
        lda     #$0B                            ; F695 A9 0B
        bne     LF663                           ; F697 D0 CA
LF699:
        cmp     #$A0                            ; F699 C9 A0
        bne     LF632                           ; F69B D0 95
        ldy     #$0B                            ; F69D A0 0B
        lda     (VARAPL+35),y                   ; F69F B1 F3
        tax                                     ; F6A1 AA
        iny                                     ; F6A2 C8
        lda     (VARAPL+35),y                   ; F6A3 B1 F3
        jsr     LF9DB                           ; F6A5 20 DB F9
        ldy     #$00                            ; F6A8 A0 00
LF6AA:
        lda     (ACC1M),y                       ; F6AA B1 61
        sta     $9F02,y                         ; F6AC 99 02 9F
        iny                                     ; F6AF C8
        cpy     #$F0                            ; F6B0 C0 F0
        bne     LF6AA                           ; F6B2 D0 F6
        ldy     $9F02                           ; F6B4 AC 02 9F
        iny                                     ; F6B7 C8
        sty     $9F00                           ; F6B8 8C 00 9F
        jsr     LF965                           ; F6BB 20 65 F9
        sta     $9F01                           ; F6BE 8D 01 9F
        sty     $9F02                           ; F6C1 8C 02 9F
        jsr     LF9BF                           ; F6C4 20 BF F9
        ldy     #$0B                            ; F6C7 A0 0B
        lda     (VARAPL+35),y                   ; F6C9 B1 F3
        sta     DESALO                          ; F6CB 8D 2D 05
        iny                                     ; F6CE C8
        lda     (VARAPL+35),y                   ; F6CF B1 F3
        sta     DESALO+1                        ; F6D1 8D 2E 05
        jsr     LF9C5                           ; F6D4 20 C5 F9
        jmp     LF9CB                           ; F6D7 4C CB F9

; ----------------------------------------------------------------------------
LF6DA:
        lda     #$97                            ; F6DA A9 97
        ldy     #$FB                            ; F6DC A0 FB
        _XWSTR1                                 ; F6DE 00 15
        lda     #$01                            ; F6E0 A9 01
        sta     VARAPL+34                       ; F6E2 85 F2
LF6E4:
        lda     $0600                           ; F6E4 AD 00 06
        bne     LF6F8                           ; F6E7 D0 0F
        lda     #$39                            ; F6E9 A9 39
        ldy     #$FB                            ; F6EB A0 FB
        _XWSTR1                                 ; F6ED 00 15
LF6EF:
        lda     #$1E                            ; F6EF A9 1E
        sta     TIMEUD                          ; F6F1 85 44
LF6F3:
        lda     TIMEUD                          ; F6F3 A5 44
        bne     LF6F3                           ; F6F5 D0 FC
LF6F7:
        rts                                     ; F6F7 60

; ----------------------------------------------------------------------------
LF6F8:
        lda     VARAPL+34                       ; F6F8 A5 F2
        asl     a                               ; F6FA 0A
        tay                                     ; F6FB A8
        ldx     $05FF,y                         ; F6FC BE FF 05
        lda     $0600,y                         ; F6FF B9 00 06
        jsr     LF9DB                           ; F702 20 DB F9
        lda     #$7E                            ; F705 A9 7E
        ldy     #$FB                            ; F707 A0 FB
        _XWSTR1                                 ; F709 00 15
        ldy     #$F0                            ; F70B A0 F0
LF70D:
        lda     (ACC1M),y                       ; F70D B1 61
        _XWR1                                   ; F70F 00 11
        iny                                     ; F711 C8
        cpy     #$F7                            ; F712 C0 F7
        bne     LF70D                           ; F714 D0 F7
        lda     #$00                            ; F716 A9 00
        ldy     #$FC                            ; F718 A0 FC
        _XWSTR1                                 ; F71A 00 15
        ldy     #$00                            ; F71C A0 00
LF71E:
        lda     (ACC1M),y                       ; F71E B1 61
        _XWR1                                   ; F720 00 11
        iny                                     ; F722 C8
        cpy     #$F0                            ; F723 C0 F0
        bne     LF71E                           ; F725 D0 F7
LF727:
        jsr     LF8C0                           ; F727 20 C0 F8
        cmp     #$A5                            ; F72A C9 A5
        beq     LF6F7                           ; F72C F0 C9
        cmp     #$A7                            ; F72E C9 A7
        bne     LF746                           ; F730 D0 14
        lda     VARAPL+34                       ; F732 A5 F2
        cmp     $0600                           ; F734 CD 00 06
        bcc     LF742                           ; F737 90 09
        lda     #$69                            ; F739 A9 69
        ldy     #$FB                            ; F73B A0 FB
LF73D:
        _XWSTR1                                 ; F73D 00 15
        jmp     LF727                           ; F73F 4C 27 F7

; ----------------------------------------------------------------------------
LF742:
        inc     VARAPL+34                       ; F742 E6 F2
LF744:
        bne     LF6F8                           ; F744 D0 B2
LF746:
        cmp     #$A1                            ; F746 C9 A1
        bne     LF75B                           ; F748 D0 11
LF74A:
        lda     VARAPL+34                       ; F74A A5 F2
        cmp     #$01                            ; F74C C9 01
        bne     LF756                           ; F74E D0 06
        lda     #$4C                            ; F750 A9 4C
        ldy     #$FB                            ; F752 A0 FB
        bne     LF73D                           ; F754 D0 E7
LF756:
        dec     VARAPL+34                       ; F756 C6 F2
        jmp     LF6F8                           ; F758 4C F8 F6

; ----------------------------------------------------------------------------
LF75B:
        cmp     #$A4                            ; F75B C9 A4
        bne     LF727                           ; F75D D0 C8
        lda     VARAPL+34                       ; F75F A5 F2
        asl     a                               ; F761 0A
        tax                                     ; F762 AA
        lda     $05FF,x                         ; F763 BD FF 05
        ldy     $0600,x                         ; F766 BC 00 06
        jsr     LF92F                           ; F769 20 2F F9
        lda     VARAPL+34                       ; F76C A5 F2
        asl     a                               ; F76E 0A
        tax                                     ; F76F AA
LF770:
        lda     $0601,x                         ; F770 BD 01 06
        sta     $05FF,x                         ; F773 9D FF 05
        inx                                     ; F776 E8
        cpx     #$F6                            ; F777 E0 F6
        bne     LF770                           ; F779 D0 F5
        dec     $0600                           ; F77B CE 00 06
        jsr     LF9A1                           ; F77E 20 A1 F9
        jsr     LF9CB                           ; F781 20 CB F9
        lda     $0600                           ; F784 AD 00 06
        beq     LF795                           ; F787 F0 0C
        lda     VARAPL+34                       ; F789 A5 F2
        cmp     $0600                           ; F78B CD 00 06
        bcc     LF744                           ; F78E 90 B4
        beq     LF744                           ; F790 F0 B2
        jmp     LF74A                           ; F792 4C 4A F7

; ----------------------------------------------------------------------------
LF795:
        jmp     LF6E4                           ; F795 4C E4 F6

; ----------------------------------------------------------------------------
LF798:
        lda     #$06                            ; F798 A9 06
        ldy     #$80                            ; F79A A0 80
        sta     TR1                             ; F79C 85 0D
        sty     TR2                             ; F79E 84 0E
LF7A0:
        lda     #$C7                            ; F7A0 A9 C7
        ldy     #$FC                            ; F7A2 A0 FC
        _XWSTR1                                 ; F7A4 00 15
        lda     #$55                            ; F7A6 A9 55
        sta     TR0                             ; F7A8 85 0C
LF7AA:
        ldy     #$00                            ; F7AA A0 00
LF7AC:
        lda     (TR1),y                         ; F7AC B1 0D
        beq     LF7CC                           ; F7AE F0 1C
        _XWR1                                   ; F7B0 00 11
        iny                                     ; F7B2 C8
        cpy     #$07                            ; F7B3 C0 07
        bne     LF7AC                           ; F7B5 D0 F5
        lda     #$09                            ; F7B7 A9 09
        _XWR1                                   ; F7B9 00 11
        dec     TR0                             ; F7BB C6 0C
        beq     LF7CC                           ; F7BD F0 0D
        clc                                     ; F7BF 18
        lda     TR1                             ; F7C0 A5 0D
        adc     #$0D                            ; F7C2 69 0D
        sta     TR1                             ; F7C4 85 0D
        bcc     LF7AA                           ; F7C6 90 E2
        inc     TR2                             ; F7C8 E6 0E
        bcs     LF7AA                           ; F7CA B0 DE
LF7CC:
        jsr     LF8C0                           ; F7CC 20 C0 F8
        cmp     #$A1                            ; F7CF C9 A1
        beq     LF798                           ; F7D1 F0 C5
        cmp     #$A7                            ; F7D3 C9 A7
        beq     LF7A0                           ; F7D5 F0 C9
        cmp     #$A5                            ; F7D7 C9 A5
        bne     LF7CC                           ; F7D9 D0 F1
        rts                                     ; F7DB 60

; ----------------------------------------------------------------------------
LF7DC:
        pla                                     ; F7DC 68
        pla                                     ; F7DD 68
        jmp     LF57E                           ; F7DE 4C 7E F5

; ----------------------------------------------------------------------------
LF7E1:
        lda     BUFTXT                          ; F7E1 AD 00 80
        bpl     LF7F6                           ; F7E4 10 10
        jsr     LF875                           ; F7E6 20 75 F8
        ldx     #$04                            ; F7E9 A2 04
LF7EB:
        lda     VDTDES+38,x                     ; F7EB BD 26 9C
        cmp     BUFTXT,x                        ; F7EE DD 00 80
        bne     LF7DC                           ; F7F1 D0 E9
        dex                                     ; F7F3 CA
        bne     LF7EB                           ; F7F4 D0 F5
LF7F6:
        lda     BUFTXT+5                        ; F7F6 AD 05 80
        cmp     #$A2                            ; F7F9 C9 A2
        bcs     LF7DC                           ; F7FB B0 DF
        lda     #$1B                            ; F7FD A9 1B
        ldy     #$FA                            ; F7FF A0 FA
        _XWSTR1                                 ; F801 00 15
        jsr     LF875                           ; F803 20 75 F8
        jsr     LF965                           ; F806 20 65 F9
        sta     VDTDES+43                       ; F809 8D 2B 9C
        sty     VDTDES+44                       ; F80C 8C 2C 9C
        lda     #$00                            ; F80F A9 00
        sta     VDTDES+45                       ; F811 8D 2D 9C
        jsr     LF83A                           ; F814 20 3A F8
        ldy     #$0D                            ; F817 A0 0D
LF819:
        lda     VDTDES+32,y                     ; F819 B9 20 9C
        sta     (VARAPL+35),y                   ; F81C 91 F3
        dey                                     ; F81E 88
        bpl     LF819                           ; F81F 10 F8
        inc     BUFTXT+5                        ; F821 EE 05 80
        lda     #$00                            ; F824 A9 00
        sta     $0600                           ; F826 8D 00 06
        lda     VARAPL+35                       ; F829 A5 F3
        ldy     VARAPL+36                       ; F82B A4 F4
        sta     VARAPL+32                       ; F82D 85 F0
        sty     VARAPL+33                       ; F82F 84 F1
        jsr     LF9A1                           ; F831 20 A1 F9
        jsr     LF8EE                           ; F834 20 EE F8
        jmp     LF9CB                           ; F837 4C CB F9

; ----------------------------------------------------------------------------
LF83A:
        sec                                     ; F83A 38
        .byte   $24                             ; F83B 24
LF83C:
        clc                                     ; F83C 18
        php                                     ; F83D 08
        lda     #$06                            ; F83E A9 06
        ldy     #$80                            ; F840 A0 80
        sta     VARAPL+35                       ; F842 85 F3
        sty     VARAPL+36                       ; F844 84 F4
LF846:
        ldy     #$00                            ; F846 A0 00
        lda     (VARAPL+35),y                   ; F848 B1 F3
        beq     LF872                           ; F84A F0 26
LF84C:
        lda     (VARAPL+35),y                   ; F84C B1 F3
        cmp     VDTDES+43,y                     ; F84E D9 2B 9C
        bne     LF865                           ; F851 D0 12
        iny                                     ; F853 C8
        cpy     #$07                            ; F854 C0 07
        bne     LF84C                           ; F856 D0 F4
        plp                                     ; F858 28
        bcc     LF863                           ; F859 90 08
        lda     VARAPL+35                       ; F85B A5 F3
        ldy     VARAPL+36                       ; F85D A4 F4
        sta     VARAPL+32                       ; F85F 85 F0
        sty     VARAPL+33                       ; F861 84 F1
LF863:
        sec                                     ; F863 38
        rts                                     ; F864 60

; ----------------------------------------------------------------------------
LF865:
        clc                                     ; F865 18
        lda     VARAPL+35                       ; F866 A5 F3
        adc     #$0D                            ; F868 69 0D
        sta     VARAPL+35                       ; F86A 85 F3
        bcc     LF846                           ; F86C 90 D8
        inc     VARAPL+36                       ; F86E E6 F4
        bcs     LF846                           ; F870 B0 D4
LF872:
        plp                                     ; F872 28
        clc                                     ; F873 18
        rts                                     ; F874 60

; ----------------------------------------------------------------------------
LF875:
        lda     #$2C                            ; F875 A9 2C
        ldy     #$FA                            ; F877 A0 FA
        _XWSTR1                                 ; F879 00 15
        ldx     #$04                            ; F87B A2 04
        jsr     LF8C3                           ; F87D 20 C3 F8
        cmp     #$A0                            ; F880 C9 A0
        bne     LF899                           ; F882 D0 15
        ldx     #$03                            ; F884 A2 03
LF886:
        lda     BUFEDT,x                        ; F886 BD 90 05
        sta     VDTDES+39,x                     ; F889 9D 27 9C
        dex                                     ; F88C CA
        bpl     LF886                           ; F88D 10 F7
        rts                                     ; F88F 60

; ----------------------------------------------------------------------------
LF890:
        ldx     #$07                            ; F890 A2 07
        jsr     LF8C3                           ; F892 20 C3 F8
        cmp     #$A0                            ; F895 C9 A0
        beq     LF89C                           ; F897 F0 03
LF899:
        pla                                     ; F899 68
        pla                                     ; F89A 68
        rts                                     ; F89B 60

; ----------------------------------------------------------------------------
LF89C:
        ldx     #$06                            ; F89C A2 06
LF89E:
        lda     BUFEDT,x                        ; F89E BD 90 05
        sta     VDTDES+43,x                     ; F8A1 9D 2B 9C
        dex                                     ; F8A4 CA
        bpl     LF89E                           ; F8A5 10 F7
        rts                                     ; F8A7 60

; ----------------------------------------------------------------------------
LF8A8:
        ldx     #$07                            ; F8A8 A2 07
        jsr     LF8C3                           ; F8AA 20 C3 F8
        cmp     #$A0                            ; F8AD C9 A0
        bne     LF8BD                           ; F8AF D0 0C
        lda     BUFEDT                          ; F8B1 AD 90 05
        cmp     #$31                            ; F8B4 C9 31
        bcc     LF8BD                           ; F8B6 90 05
        cmp     #$34                            ; F8B8 C9 34
        bcs     LF8BD                           ; F8BA B0 01
        rts                                     ; F8BC 60

; ----------------------------------------------------------------------------
LF8BD:
        pla                                     ; F8BD 68
        pla                                     ; F8BE 68
        rts                                     ; F8BF 60

; ----------------------------------------------------------------------------
; Appelle la fonction XTGET de la banque 3 (Telematic)
LF8C0:
        lda     #$B9                            ; F8C0 A9 B9
        .byte   $2C                             ; F8C2 2C
; Appelle la fonction XTINPU de la banque 3 (Telematic)
LF8C3:
        lda     #$BC                            ; F8C3 A9 BC
        stx     ACC1E                           ; F8C5 86 60
        sta     VEXBNK+1                        ; F8C7 8D 15 04
        lda     #$FF                            ; F8CA A9 FF
        sta     VEXBNK+2                        ; F8CC 8D 16 04
        lda     #$03                            ; F8CF A9 03
        sta     BNKCID                          ; F8D1 8D 17 04
        jmp     EXBNK                           ; F8D4 4C 0C 04

; ----------------------------------------------------------------------------
LF8D7:
        ldx     #$04                            ; F8D7 A2 04
LF8D9:
        lda     SF90B,x                         ; F8D9 BD 0B F9
        sta     BUFNOM+8,x                      ; F8DC 9D 1F 05
        dex                                     ; F8DF CA
        bpl     LF8D9                           ; F8E0 10 F7
        ldx     #$07                            ; F8E2 A2 07
LF8E4:
        lda     PAGE,x                          ; F8E4 BD C0 9C
        sta     BUFNOM,x                        ; F8E7 9D 17 05
        dex                                     ; F8EA CA
        bne     LF8E4                           ; F8EB D0 F7
        rts                                     ; F8ED 60

; ----------------------------------------------------------------------------
LF8EE:
        jsr     LF8D7                           ; F8EE 20 D7 F8
        jsr     XDEFSA                          ; F8F1 20 65 FF
        lda     #$3F                            ; F8F4 A9 3F
        ldy     #$88                            ; F8F6 A0 88
        sta     FISALO                          ; F8F8 8D 2F 05
        sty     FISALO+1                        ; F8FB 8C 30 05
        lda     #$00                            ; F8FE A9 00
        ldy     #$80                            ; F900 A0 80
        sta     DESALO                          ; F902 8D 2D 05
        sty     DESALO+1                        ; F905 8C 2E 05
        jmp     XSAVE                           ; F908 4C 6B FF

; ----------------------------------------------------------------------------
SF90B:
        .byte   "  IDX"                         ; F90B 20 20 49 44 58
; ----------------------------------------------------------------------------
LF910:
        ldx     #$01                            ; F910 A2 01
        stx     FICNUM                          ; F912 8E 48 05
        lda     #$08                            ; F915 A9 08
        sta     FTYPE                           ; F917 8D 2C 05
        jsr     LF8D7                           ; F91A 20 D7 F8
        lda     #$50                            ; F91D A9 50
        ldy     #$F9                            ; F91F A0 F9
        ldx     #$00                            ; F921 A2 00
        stx     XFIELD                          ; F923 8E 4C 05
        sta     $054D                           ; F926 8D 4D 05
        sty     $054E                           ; F929 8C 4E 05
        jmp     XOPEN                           ; F92C 4C 1A FF

; ----------------------------------------------------------------------------
LF92F:
        sec                                     ; F92F 38
        sbc     #$01                            ; F930 E9 01
        bcs     LF935                           ; F932 B0 01
        dey                                     ; F934 88
LF935:
        sty     RES                             ; F935 84 00
        pha                                     ; F937 48
        and     #$07                            ; F938 29 07
        tay                                     ; F93A A8
        pla                                     ; F93B 68
        lsr     RES                             ; F93C 46 00
        ror     a                               ; F93E 6A
        lsr     RES                             ; F93F 46 00
        ror     a                               ; F941 6A
        lsr     RES                             ; F942 46 00
        ror     a                               ; F944 6A
        tax                                     ; F945 AA
        lda     $9D00,x                         ; F946 BD 00 9D
        ora     TF95D,y                         ; F949 19 5D F9
        sta     $9D00,x                         ; F94C 9D 00 9D
LF94F:
        rts                                     ; F94F 60

; ----------------------------------------------------------------------------
        bit     TD4                             ; F950 24 51
        bpl     LF94F                           ; F952 10 FB
        lda     ACC2M                           ; F954 A5 69
        ldy     ACC2M+1                         ; F956 A4 6A
        sta     ACC1M                           ; F958 85 61
        sty     ACC1M+1                         ; F95A 84 62
        rts                                     ; F95C 60

; ----------------------------------------------------------------------------
TF95D:
        .byte   $80,$40,$20,$10,$08,$04,$02,$01 ; F95D 80 40 20 10 08 04 02 01
; ----------------------------------------------------------------------------
LF965:
        ldx     #$00                            ; F965 A2 00
LF967:
        lda     $9D00,x                         ; F967 BD 00 9D
        bne     LF96F                           ; F96A D0 03
        inx                                     ; F96C E8
        bne     LF967                           ; F96D D0 F8
LF96F:
        ldy     #$08                            ; F96F A0 08
LF971:
        dey                                     ; F971 88
        lda     TF95D,y                         ; F972 B9 5D F9
        and     $9D00,x                         ; F975 3D 00 9D
        beq     LF971                           ; F978 F0 F7
        eor     #$FF                            ; F97A 49 FF
        and     $9D00,x                         ; F97C 3D 00 9D
        sta     $9D00,x                         ; F97F 9D 00 9D
        sty     RES+1                           ; F982 84 01
        stx     RES                             ; F984 86 00
        lda     #$00                            ; F986 A9 00
        ldy     #$05                            ; F988 A0 05
LF98A:
        lsr     RES                             ; F98A 46 00
        ror     a                               ; F98C 6A
        dey                                     ; F98D 88
        bne     LF98A                           ; F98E D0 FA
        ora     RES+1                           ; F990 05 01
        ldy     RES                             ; F992 A4 00
        clc                                     ; F994 18
        adc     #$01                            ; F995 69 01
        bcc     LF99A                           ; F997 90 01
        iny                                     ; F999 C8
LF99A:
        sta     DESALO                          ; F99A 8D 2D 05
        sty     DESALO+1                        ; F99D 8C 2E 05
        rts                                     ; F9A0 60

; ----------------------------------------------------------------------------
LF9A1:
        ldy     #$0B                            ; F9A1 A0 0B
        lda     (VARAPL+32),y                   ; F9A3 B1 F0
        sta     DESALO                          ; F9A5 8D 2D 05
        iny                                     ; F9A8 C8
        lda     (VARAPL+32),y                   ; F9A9 B1 F0
        sta     DESALO+1                        ; F9AB 8D 2E 05
        lda     #$00                            ; F9AE A9 00
        ldy     #$06                            ; F9B0 A0 06
LF9B2:
        sta     ACC2M                           ; F9B2 85 69
        sty     ACC2M+1                         ; F9B4 84 6A
        lda     #$F0                            ; F9B6 A9 F0
        sta     ACC1E                           ; F9B8 85 60
        sta     ACC1S                           ; F9BA 85 65
        jmp     XPUT                            ; F9BC 4C 23 FF

; ----------------------------------------------------------------------------
LF9BF:
        lda     #$00                            ; F9BF A9 00
        ldy     #$9E                            ; F9C1 A0 9E
        bne     LF9B2                           ; F9C3 D0 ED
LF9C5:
        lda     #$00                            ; F9C5 A9 00
        ldy     #$9F                            ; F9C7 A0 9F
        bne     LF9B2                           ; F9C9 D0 E7
LF9CB:
        lda     #$08                            ; F9CB A9 08
        ldx     #$00                            ; F9CD A2 00
        sta     DESALO                          ; F9CF 8D 2D 05
        stx     DESALO+1                        ; F9D2 8E 2E 05
        lda     #$00                            ; F9D5 A9 00
        ldy     #$9D                            ; F9D7 A0 9D
        bne     LF9B2                           ; F9D9 D0 D7
LF9DB:
        stx     DESALO                          ; F9DB 8E 2D 05
        sta     DESALO+1                        ; F9DE 8D 2E 05
        jmp     XTAKE                           ; F9E1 4C 20 FF

; ----------------------------------------------------------------------------
LF9E4:
        clc                                     ; F9E4 18
        .byte   $24                             ; F9E5 24
LF9E6:
        sec                                     ; F9E6 38
        php                                     ; F9E7 08
        lda     #$38                            ; F9E8 A9 38
        ldy     #$FA                            ; F9EA A0 FA
        _XWSTR1                                 ; F9EC 00 15
        lda     #$48                            ; F9EE A9 48
        ldy     #$FA                            ; F9F0 A0 FA
        _XWSTR1                                 ; F9F2 00 15
        lda     #$D2                            ; F9F4 A9 D2
        ldy     #$FA                            ; F9F6 A0 FA
        plp                                     ; F9F8 28
        bcc     LF9FF                           ; F9F9 90 04
        lda     #$C1                            ; F9FB A9 C1
        ldy     #$FA                            ; F9FD A0 FA
LF9FF:
        _XWSTR1                                 ; F9FF 00 15
        rts                                     ; FA01 60

; ----------------------------------------------------------------------------
; Messages pour la gestion des BAL
SFA02:
        .byte   $0D,$0A,$0A                     ; FA02 0D 0A 0A
        .byte   "Votre nom:."                   ; FA05 56 6F 74 72 65 20 6E 6F
                                                ; FA0D 6D 3A 2E
        .byte   $12                             ; FA10 12
        .byte   "F"                             ; FA11 46
        .byte   $08,$08,$08,$08,$08,$08,$08,$11 ; FA12 08 08 08 08 08 08 08 11
        .byte   $00                             ; FA1A 00
SFA1B:
        .byte   $0D,$0A,$1B                     ; FA1B 0D 0A 1B
        .byte   "GMot de passe"                 ; FA1E 47 4D 6F 74 20 64 65 20
                                                ; FA26 70 61 73 73 65
        .byte   $00                             ; FA2B 00
SFA2C:
        .byte   ":."                            ; FA2C 3A 2E
        .byte   $12                             ; FA2E 12
        .byte   "C"                             ; FA2F 43
        .byte   $08,$08,$08,$08,$11,$1B         ; FA30 08 08 08 08 11 1B
        .byte   "@"                             ; FA36 40
        .byte   $00                             ; FA37 00
SFA38:
        .byte   $0C,$0A,$0A,$1B                 ; FA38 0C 0A 0A 1B
        .byte   "T "                            ; FA3C 54 20
        .byte   $18,$1F                         ; FA3E 18 1F
        .byte   "CQ"                            ; FA40 43 51
        .byte   $1B                             ; FA42 1B
        .byte   "OBAL"                          ; FA43 4F 42 41 4C
        .byte   $00                             ; FA47 00
SFA48:
        .byte   $1F                             ; FA48 1F
        .byte   "GA"                            ; FA49 47 41
        .byte   $1B                             ; FA4B 1B
        .byte   "T "                            ; FA4C 54 20
        .byte   $18,$1F                         ; FA4E 18 1F
        .byte   "JA"                            ; FA50 4A 41
        .byte   $1B                             ; FA52 1B
        .byte   "T "                            ; FA53 54 20
        .byte   $18,$1F                         ; FA55 18 1F
        .byte   "MA"                            ; FA57 4D 41
        .byte   $1B                             ; FA59 1B
        .byte   "T "                            ; FA5A 54 20
        .byte   $18,$1F                         ; FA5C 18 1F
        .byte   "PA"                            ; FA5E 50 41
        .byte   $1B                             ; FA60 1B
        .byte   "T "                            ; FA61 54 20
        .byte   $18,$1F                         ; FA63 18 1F
        .byte   "SA"                            ; FA65 53 41
        .byte   $1B                             ; FA67 1B
        .byte   "T "                            ; FA68 54 20
        .byte   $18,$1F                         ; FA6A 18 1F
        .byte   "GE"                            ; FA6C 47 45
        .byte   $1B                             ; FA6E 1B
        .byte   "O1"                            ; FA6F 4F 31
        .byte   $1F                             ; FA71 1F
        .byte   "JE"                            ; FA72 4A 45
        .byte   $1B                             ; FA74 1B
        .byte   "O2"                            ; FA75 4F 32
        .byte   $1F                             ; FA77 1F
        .byte   "ME"                            ; FA78 4D 45
        .byte   $1B                             ; FA7A 1B
        .byte   "O3"                            ; FA7B 4F 33
        .byte   $1F                             ; FA7D 1F
        .byte   "GH"                            ; FA7E 47 48
        .byte   $1B                             ; FA80 1B
        .byte   "C"                             ; FA81 43
        .byte   $1B                             ; FA82 1B
        .byte   "NAnnuaire  "                   ; FA83 4E 41 6E 6E 75 61 69 72
                                                ; FA8B 65 20 20
        .byte   $1F                             ; FA8E 1F
        .byte   "JH"                            ; FA8F 4A 48
        .byte   $1B                             ; FA91 1B
        .byte   "C"                             ; FA92 43
        .byte   $1B                             ; FA93 1B
        .byte   "NEcrire"                       ; FA94 4E 45 63 72 69 72 65
        .byte   $1F                             ; FA9B 1F
        .byte   "PF"                            ; FA9C 50 46
        .byte   $1B                             ; FA9E 1B
        .byte   "@"                             ; FA9F 40
        .byte   $1B                             ; FAA0 1B
        .byte   "NQUITTER=SOMMAIRE"             ; FAA1 4E 51 55 49 54 54 45 52
                                                ; FAA9 3D 53 4F 4D 4D 41 49 52
                                                ; FAB1 45
        .byte   $1F                             ; FAB2 1F
        .byte   "SM"                            ; FAB3 53 4D
        .byte   $1B                             ; FAB5 1B
        .byte   "@"                             ; FAB6 40
        .byte   $1B                             ; FAB7 1B
        .byte   "N===>"                         ; FAB8 4E 3D 3D 3D 3E
        .byte   $1B                             ; FABD 1B
        .byte   "G"                             ; FABE 47
        .byte   $11,$00                         ; FABF 11 00
SFAC1:
        .byte   $1F                             ; FAC1 1F
        .byte   "MH"                            ; FAC2 4D 48
        .byte   $1B                             ; FAC4 1B
        .byte   "C"                             ; FAC5 43
        .byte   $1B                             ; FAC6 1B
        .byte   "NLire"                         ; FAC7 4E 4C 69 72 65
        .byte   $1F                             ; FACC 1F
        .byte   "SX"                            ; FACD 53 58
        .byte   $1B                             ; FACF 1B
        .byte   "@"                             ; FAD0 40
        .byte   $00                             ; FAD1 00
SFAD2:
        .byte   $1F                             ; FAD2 1F
        .byte   "MH"                            ; FAD3 4D 48
        .byte   $1B                             ; FAD5 1B
        .byte   "C"                             ; FAD6 43
        .byte   $1B                             ; FAD7 1B
        .byte   "NCreer"                        ; FAD8 4E 43 72 65 65 72
        .byte   $1F                             ; FADE 1F
        .byte   "SX"                            ; FADF 53 58
        .byte   $1B                             ; FAE1 1B
        .byte   "C"                             ; FAE2 43
        .byte   $00                             ; FAE3 00
SFAE4:
        .byte   $0D,$0A                         ; FAE4 0D 0A
        .byte   "ok. mot de passe"              ; FAE6 6F 6B 2E 20 6D 6F 74 20
                                                ; FAEE 64 65 20 70 61 73 73 65
        .byte   $00                             ; FAF6 00
SFAF7:
        .byte   $1F                             ; FAF7 1F
        .byte   "EL"                            ; FAF8 45 4C
        .byte   $1B                             ; FAFA 1B
        .byte   "Q TYPE DE LA BAL "             ; FAFB 51 20 54 59 50 45 20 44
                                                ; FB03 45 20 4C 41 20 42 41 4C
                                                ; FB0B 20
        .byte   $0D,$0A,$0A                     ; FB0C 0D 0A 0A
        .byte   "1 normal"                      ; FB0F 31 20 6E 6F 72 6D 61 6C
        .byte   $0D,$0A                         ; FB17 0D 0A
        .byte   "2 cr"                          ; FB19 32 20 63 72
        .byte   $19                             ; FB1D 19
        .byte   "Beation restreinte"            ; FB1E 42 65 61 74 69 6F 6E 20
                                                ; FB26 72 65 73 74 72 65 69 6E
                                                ; FB2E 74 65
        .byte   $0D,$0A,$0A                     ; FB30 0D 0A 0A
        .byte   "  >."                          ; FB33 20 20 3E 2E
        .byte   $08,$00                         ; FB37 08 00
SFB39:
        .byte   $07,$1F                         ; FB39 07 1F
        .byte   "UAAucun message"               ; FB3B 55 41 41 75 63 75 6E 20
                                                ; FB43 6D 65 73 73 61 67 65
        .byte   $18,$00                         ; FB4A 18 00
SFB4C:
        .byte   $07,$1F                         ; FB4C 07 1F
        .byte   "UAMessage le plus r"           ; FB4E 55 41 4D 65 73 73 61 67
                                                ; FB56 65 20 6C 65 20 70 6C 75
                                                ; FB5E 73 20 72
        .byte   $19                             ; FB61 19
        .byte   "Becen"                         ; FB62 42 65 63 65 6E
SFB67:
        .byte   "t"                             ; FB67 74
        .byte   $00,$07,$1F                     ; FB68 00 07 1F
        .byte   "UADernier message"             ; FB6B 55 41 44 65 72 6E 69 65
                                                ; FB73 72 20 6D 65 73 73 61 67
                                                ; FB7B 65
        .byte   $18,$00                         ; FB7C 18 00
SFB7E:
        .byte   $14,$1F                         ; FB7E 14 1F
        .byte   "CA"                            ; FB80 43 41
        .byte   $1B                             ; FB82 1B
        .byte   "T Message de "                 ; FB83 54 20 4D 65 73 73 61 67
                                                ; FB8B 65 20 64 65 20
        .byte   $18,$00                         ; FB90 18 00
SFB92:
        .byte   $1F                             ; FB92 1F
        .byte   "UA"                            ; FB93 55 41
        .byte   $18,$00                         ; FB95 18 00
SFB97:
        .byte   $0C,$1F                         ; FB97 0C 1F
        .byte   "GA"                            ; FB99 47 41
        .byte   $0E                             ; FB9B 0E
        .byte   ","                             ; FB9C 2C
        .byte   $12                             ; FB9D 12
        .byte   "g"                             ; FB9E 67
        .byte   $1F                             ; FB9F 1F
        .byte   "NA"                            ; FBA0 4E 41
        .byte   $0E                             ; FBA2 0E
        .byte   ","                             ; FBA3 2C
        .byte   $12                             ; FBA4 12
        .byte   "g"                             ; FBA5 67
        .byte   $1F                             ; FBA6 1F
        .byte   "QA"                            ; FBA7 51 41
        .byte   $1B                             ; FBA9 1B
        .byte   "Q Autres messages SUITE / RETOU"; FBAA 51 20 41 75 74 72 65 73
                                                ; FBB2 20 6D 65 73 73 61 67 65
                                                ; FBBA 73 20 53 55 49 54 45 20
                                                ; FBC2 2F 20 52 45 54 4F 55
        .byte   "R"                             ; FBC9 52
        .byte   $18,$0D,$0A,$1B                 ; FBCA 18 0D 0A 1B
        .byte   "U D"                           ; FBCE 55 20 44
        .byte   $19                             ; FBD1 19
        .byte   "Betruire "                     ; FBD2 42 65 74 72 75 69 72 65
                                                ; FBDA 20
        .byte   $12                             ; FBDB 12
        .byte   "GANNULATION"                   ; FBDC 47 41 4E 4E 55 4C 41 54
                                                ; FBE4 49 4F 4E
        .byte   $18,$0D,$0A,$1B                 ; FBE7 18 0D 0A 1B
        .byte   "R Sortir "                     ; FBEB 52 20 53 6F 72 74 69 72
                                                ; FBF3 20
        .byte   $12                             ; FBF4 12
        .byte   "ISOMMAIRE"                     ; FBF5 49 53 4F 4D 4D 41 49 52
                                                ; FBFD 45
        .byte   $18,$00                         ; FBFE 18 00
SFC00:
        .byte   $1F                             ; FC00 1F
        .byte   "HA"                            ; FC01 48 41
        .byte   $00                             ; FC03 00
SFC04:
        .byte   $0C,$0A,$0A                     ; FC04 0C 0A 0A
        .byte   "Vous "                         ; FC07 56 6F 75 73 20
        .byte   $19                             ; FC0C 19
        .byte   "Becrivez "                     ; FC0D 42 65 63 72 69 76 65 7A
                                                ; FC15 20
        .byte   $19                             ; FC16 19
        .byte   "Aa "                           ; FC17 41 61 20
        .byte   $1B                             ; FC1A 1B
        .byte   "Q "                            ; FC1B 51 20
        .byte   $12                             ; FC1D 12
        .byte   "H"                             ; FC1E 48
        .byte   $08,$08,$08,$08,$08,$08,$08,$08 ; FC1F 08 08 08 08 08 08 08 08
        .byte   $00                             ; FC27 00
SFC28:
        .byte   $1F                             ; FC28 1F
        .byte   "DABal inconnue"                ; FC29 44 41 42 61 6C 20 69 6E
                                                ; FC31 63 6F 6E 6E 75 65
        .byte   $07,$00                         ; FC37 07 00
SFC39:
        .byte   $1F                             ; FC39 1F
        .byte   "EA"                            ; FC3A 45 41
        .byte   $0E                             ; FC3C 0E
        .byte   ","                             ; FC3D 2C
        .byte   $12                             ; FC3E 12
        .byte   "g"                             ; FC3F 67
        .byte   $1F                             ; FC40 1F
        .byte   "LA"                            ; FC41 4C 41
        .byte   $0E                             ; FC43 0E
        .byte   ","                             ; FC44 2C
        .byte   $12                             ; FC45 12
        .byte   "g"                             ; FC46 67
        .byte   $1F                             ; FC47 1F
        .byte   "NR"                            ; FC48 4E 52
        .byte   $1B                             ; FC4A 1B
        .byte   "BRETOUR"                       ; FC4B 42 52 45 54 4F 55 52
        .byte   $1F                             ; FC52 1F
        .byte   "OT"                            ; FC53 4F 54
        .byte   $1B                             ; FC55 1B
        .byte   "B"                             ; FC56 42
        .byte   $19                             ; FC57 19
        .byte   "-"                             ; FC58 2D
        .byte   $1F                             ; FC59 1F
        .byte   "PG"                            ; FC5A 50 47
        .byte   $1B                             ; FC5C 1B
        .byte   "BCORRECTION "                  ; FC5D 42 43 4F 52 52 45 43 54
                                                ; FC65 49 4F 4E 20
        .byte   $19                             ; FC69 19
        .byte   ",   "                          ; FC6A 2C 20 20 20
        .byte   $19                             ; FC6E 19
        .byte   ". ANNULATION"                  ; FC6F 2E 20 41 4E 4E 55 4C 41
                                                ; FC77 54 49 4F 4E
        .byte   $1F                             ; FC7B 1F
        .byte   "QT"                            ; FC7C 51 54
        .byte   $1B                             ; FC7E 1B
        .byte   "B"                             ; FC7F 42
        .byte   $19                             ; FC80 19
        .byte   "/"                             ; FC81 2F
        .byte   $1F                             ; FC82 1F
        .byte   "RR"                            ; FC83 52 52
        .byte   $1B                             ; FC85 1B
        .byte   "BSUITE"                        ; FC86 42 53 55 49 54 45
        .byte   $1F                             ; FC8C 1F
        .byte   "TAValidation "                 ; FC8D 54 41 56 61 6C 69 64 61
                                                ; FC95 74 69 6F 6E 20
        .byte   $1B                             ; FC9A 1B
        .byte   "H"                             ; FC9B 48
        .byte   $1B                             ; FC9C 1B
        .byte   "Q  ENVOI   "                   ; FC9D 51 20 20 45 4E 56 4F 49
                                                ; FCA5 20 20 20
        .byte   $1F                             ; FCA8 1F
        .byte   "UAAbandonner "                 ; FCA9 55 41 41 62 61 6E 64 6F
                                                ; FCB1 6E 6E 65 72 20
        .byte   $1B                             ; FCB6 1B
        .byte   "U SOMMAIRE "                   ; FCB7 55 20 53 4F 4D 4D 41 49
                                                ; FCBF 52 45 20
        .byte   $1F                             ; FCC2 1F
        .byte   "FA"                            ; FCC3 46 41
        .byte   $11,$00                         ; FCC5 11 00
SFCC7:
        .byte   $0C,$0A,$1B                     ; FCC7 0C 0A 1B
        .byte   "O"                             ; FCCA 4F
        .byte   $1B                             ; FCCB 1B
        .byte   "R   LISTE DES BALS"            ; FCCC 52 20 20 20 4C 49 53 54
                                                ; FCD4 45 20 44 45 53 20 42 41
                                                ; FCDC 4C 53
        .byte   $18,$1F                         ; FCDE 18 1F
        .byte   "CA"                            ; FCE0 43 41
        .byte   $1B                             ; FCE2 1B
        .byte   "T "                            ; FCE3 54 20
        .byte   $18,$1F                         ; FCE5 18 1F
        .byte   "UA"                            ; FCE7 55 41
        .byte   $1B                             ; FCE9 1B
        .byte   "T "                            ; FCEA 54 20
        .byte   $12                             ; FCEC 12
        .byte   "g"                             ; FCED 67
        .byte   $1B                             ; FCEE 1B
        .byte   "R "                            ; FCEF 52 20
        .byte   $12                             ; FCF1 12
        .byte   "g"                             ; FCF2 67
        .byte   $1B                             ; FCF3 1B
        .byte   "T "                            ; FCF4 54 20
        .byte   $18,$1F                         ; FCF6 18 1F
        .byte   "VBAutres bals : SUITE/RETOUR ou"; FCF8 56 42 41 75 74 72 65 73
                                                ; FD00 20 62 61 6C 73 20 3A 20
                                                ; FD08 53 55 49 54 45 2F 52 45
                                                ; FD10 54 4F 55 52 20 6F 75
        .byte   " SOMMAIRE"                     ; FD17 20 53 4F 4D 4D 41 49 52
                                                ; FD1F 45
        .byte   $1F                             ; FD20 1F
        .byte   "DA"                            ; FD21 44 41
        .byte   $1B                             ; FD23 1B
        .byte   "C"                             ; FD24 43
        .byte   $00                             ; FD25 00
; ----------------------------------------------------------------------------
; Ecrire (cartouche TELEMATIC)
_XCTECRI:
        jsr     LFE5F                           ; FD26 20 5F FE
        jsr     XDEFSA                          ; FD29 20 65 FF
        jsr     XSAVE                           ; FD2C 20 6B FF
        jmp     LFDD0                           ; FD2F 4C D0 FD

; ----------------------------------------------------------------------------
; Lire (cartouche TELEMATIC)
_XCTLIRE:
        jsr     LFE5F                           ; FD32 20 5F FE
        jsr     XDEFLO                          ; FD35 20 68 FF
        jmp     XLOAD                           ; FD38 4C 62 FF

; ----------------------------------------------------------------------------
; Initialiser (cartouche TELEMATIC)
_XCTINIT:
        jsr     LFE5F                           ; FD3B 20 5F FE
        lda     #$00                            ; FD3E A9 00
        sta     FISALO                          ; FD40 8D 2F 05
        sta     FISALO+1                        ; FD43 8D 30 05
        jsr     XINITI                          ; FD46 20 5C FF
        jmp     LFDD0                           ; FD49 4C D0 FD

; ----------------------------------------------------------------------------
; Détruire (cartouche TELEMATIC)
_XCTDETR:
        jsr     LFE5F                           ; FD4C 20 5F FE
        jmp     XDELN                           ; FD4F 4C 4D FF

; ----------------------------------------------------------------------------
; Récupérer (cartouche TELEMATIC)
_XCTRECU:
        jsr     LFE5F                           ; FD52 20 5F FE
        ldx     #$02                            ; FD55 A2 02
LFD57:
        lda     BUFNOM+10,x                     ; FD57 BD 21 05
        pha                                     ; FD5A 48
        lda     SFD88,x                         ; FD5B BD 88 FD
        sta     BUFNOM+10,x                     ; FD5E 9D 21 05
        dex                                     ; FD61 CA
        bpl     LFD57                           ; FD62 10 F3
        jsr     XTRVNM                          ; FD64 20 7D FF
        beq     LFD72                           ; FD67 F0 09
        jsr     XDEFLO                          ; FD69 20 68 FF
        jsr     XLOAD                           ; FD6C 20 62 FF
        ldy     #$00                            ; FD6F A0 00
        .byte   $2C                             ; FD71 2C
LFD72:
        ldy     #$01                            ; FD72 A0 01
        ldx     #$00                            ; FD74 A2 00
LFD76:
        pla                                     ; FD76 68
        sta     BUFNOM+10,x                     ; FD77 9D 21 05
        inx                                     ; FD7A E8
        cpx     #$03                            ; FD7B E0 03
        bne     LFD76                           ; FD7D D0 F7
        tya                                     ; FD7F 98
        bne     LFD83                           ; FD80 D0 01
        rts                                     ; FD82 60

; ----------------------------------------------------------------------------
LFD83:
        ldx     #$01                            ; FD83 A2 01
        jmp     XERREU                          ; FD85 4C 5F FF

; ----------------------------------------------------------------------------
SFD88:
        .byte   "BAK"                           ; FD88 42 41 4B
; ----------------------------------------------------------------------------
; Menage (cartouche TELEMATIC)
_XCTMENA:
        jsr     LFE5F                           ; FD8B 20 5F FE
        ldx     #$0B                            ; FD8E A2 0B
LFD90:
        lda     BUFNOM+1,x                      ; FD90 BD 18 05
        pha                                     ; FD93 48
        dex                                     ; FD94 CA
        bpl     LFD90                           ; FD95 10 F9
        jsr     XDELBK                          ; FD97 20 4A FF
        ldx     #$00                            ; FD9A A2 00
LFD9C:
        pla                                     ; FD9C 68
        sta     BUFNOM+1,x                      ; FD9D 9D 18 05
        inx                                     ; FDA0 E8
        cpx     #$0C                            ; FDA1 E0 0C
        bne     LFD9C                           ; FDA3 D0 F7
        rts                                     ; FDA5 60

; ----------------------------------------------------------------------------
; Dupliquer (cartouche TELEMATIC)
_XCTDUPL:
        jsr     LFE5F                           ; FDA6 20 5F FE
        lda     DRVDEF                          ; FDA9 AD 0C 02
        sta     BUFNOM                          ; FDAC 8D 17 05
        ldy     TABDRV+1                        ; FDAF AC 09 02
        beq     LFDB6                           ; FDB2 F0 02
        lda     #$01                            ; FDB4 A9 01
LFDB6:
        sta     BUFNOM+1                        ; FDB6 8D 18 05
        jmp     XBKP                            ; FDB9 4C 59 FF

; ----------------------------------------------------------------------------
SFDBC:
        .byte   "aucun fichier !"               ; FDBC 61 75 63 75 6E 20 66 69
                                                ; FDC4 63 68 69 65 72 20 21
        .byte   $00,$00                         ; FDCB 00 00
; ----------------------------------------------------------------------------
; Sélection Lecteur (cartouche TELEMATIC)
_XCTSELL:
        jsr     LFE5F                           ; FDCD 20 5F FE
LFDD0:
        ldx     #$06                            ; FDD0 A2 06
LFDD2:
        lda     BUFNOM+1,x                      ; FDD2 BD 18 05
        pha                                     ; FDD5 48
        dex                                     ; FDD6 CA
        bpl     LFDD2                           ; FDD7 10 F9
        lda     #$00                            ; FDD9 A9 00
        ldy     #$35                            ; FDDB A0 35
        sta     RESB                            ; FDDD 85 02
        sty     RESB+1                          ; FDDF 84 03
        ldx     #$10                            ; FDE1 A2 10
LFDE3:
        lda     SFDBC,x                         ; FDE3 BD BC FD
        sta     $3500,x                         ; FDE6 9D 00 35
        dex                                     ; FDE9 CA
        bpl     LFDE3                           ; FDEA 10 F7
        lda     #$3F                            ; FDEC A9 3F
        ldx     #$06                            ; FDEE A2 06
LFDF0:
        sta     BUFNOM+1,x                      ; FDF0 9D 18 05
        dex                                     ; FDF3 CA
        bpl     LFDF0                           ; FDF4 10 FA
        php                                     ; FDF6 08
        sei                                     ; FDF7 78
        jsr     XTRVNM                          ; FDF8 20 7D FF
        beq     LFE47                           ; FDFB F0 4A
        bne     LFE02                           ; FDFD D0 03
LFDFF:
        jsr     XTRVNX                          ; FDFF 20 80 FF
LFE02:
        beq     LFE42                           ; FE02 F0 3E
        lda     #$08                            ; FE04 A9 08
        sta     TR7                             ; FE06 85 13
LFE08:
        lda     BUF3,x                          ; FE08 BD 00 C4
        jsr     LFE54                           ; FE0B 20 54 FE
        inx                                     ; FE0E E8
        dec     TR7                             ; FE0F C6 13
        bne     LFE08                           ; FE11 D0 F5
        lda     #$20                            ; FE13 A9 20
        sta     DEFAFF                          ; FE15 85 14
        lda     RESB                            ; FE17 A5 02
        ldy     RESB+1                          ; FE19 A4 03
        sta     TR5                             ; FE1B 85 11
        sty     TR6                             ; FE1D 84 12
        ldx     POSNMX                          ; FE1F AE 16 05
        lda     BUF3+15,x                       ; FE22 BD 0F C4
        and     #$0F                            ; FE25 29 0F
        tay                                     ; FE27 A8
        lda     BUF3+14,x                       ; FE28 BD 0E C4
        ldx     #$01                            ; FE2B A2 01
        _XBINDX                                 ; FE2D 00 28
        clc                                     ; FE2F 18
        lda     RESB                            ; FE30 A5 02
        adc     #$03                            ; FE32 69 03
        sta     RESB                            ; FE34 85 02
        bcc     LFE3A                           ; FE36 90 02
        inc     RESB+1                          ; FE38 E6 03
LFE3A:
        lda     #$00                            ; FE3A A9 00
        jsr     LFE54                           ; FE3C 20 54 FE
        jmp     LFDFF                           ; FE3F 4C FF FD

; ----------------------------------------------------------------------------
LFE42:
        lda     #$00                            ; FE42 A9 00
        jsr     LFE54                           ; FE44 20 54 FE
LFE47:
        plp                                     ; FE47 28
        ldx     #$00                            ; FE48 A2 00
LFE4A:
        pla                                     ; FE4A 68
        sta     BUFNOM+1,x                      ; FE4B 9D 18 05
        inx                                     ; FE4E E8
        cpx     #$07                            ; FE4F E0 07
        bne     LFE4A                           ; FE51 D0 F7
        rts                                     ; FE53 60

; ----------------------------------------------------------------------------
LFE54:
        ldy     #$00                            ; FE54 A0 00
        sta     (RESB),y                        ; FE56 91 02
        inc     RESB                            ; FE58 E6 02
        bne     LFE5E                           ; FE5A D0 02
        inc     RESB+1                          ; FE5C E6 03
LFE5E:
        rts                                     ; FE5E 60

; ----------------------------------------------------------------------------
LFE5F:
        ror     ERRFLG                          ; FE5F 6E 0F 05
        lda     #$76                            ; FE62 A9 76
        ldy     #$FE                            ; FE64 A0 FE
        sta     ERRVEC                          ; FE66 8D 10 05
        sty     ERRVEC+1                        ; FE69 8C 11 05
        tsx                                     ; FE6C BA
        stx     SAVES                           ; FE6D 8E 13 05
        lda     #$00                            ; FE70 A9 00
        sta     ERRNB                           ; FE72 8D 12 05
        rts                                     ; FE75 60

; ----------------------------------------------------------------------------
        cli                                     ; FE76 58
        bit     ERRFLG                          ; FE77 2C 0F 05
        bmi     LFE98                           ; FE7A 30 1C
        lda     #$9F                            ; FE7C A9 9F
        ldy     #$FE                            ; FE7E A0 FE
        _XWSTR0                                 ; FE80 00 14
        lda     ERRNB                           ; FE82 AD 12 05
        asl     a                               ; FE85 0A
        tax                                     ; FE86 AA
        lda     LFEFB,x                         ; FE87 BD FB FE
        tay                                     ; FE8A A8
        lda     LFEFA,x                         ; FE8B BD FA FE
        _XWSTR0                                 ; FE8E 00 14
        _XRDW0                                  ; FE90 00 0C
        lda     #$F7                            ; FE92 A9 F7
        ldy     #$FE                            ; FE94 A0 FE
        _XWSTR0                                 ; FE96 00 14
LFE98:
        ldx     SAVES                           ; FE98 AE 13 05
        inx                                     ; FE9B E8
        inx                                     ; FE9C E8
        txs                                     ; FE9D 9A
        rts                                     ; FE9E 60

; ----------------------------------------------------------------------------
; Place le curseur en ligne 0 colonne 1
SFE9F:
        .byte   $1F                             ; FE9F 1F
        .byte   "@A"                            ; FEA0 40 41
        .byte   $00                             ; FEA2 00
SFEA3:
        .byte   "fichier inexistant"            ; FEA3 66 69 63 68 69 65 72 20
                                                ; FEAB 69 6E 65 78 69 73 74 61
                                                ; FEB3 6E 74
        .byte   $00                             ; FEB5 00
SFEB6:
        .byte   "plus assez de place"           ; FEB6 70 6C 75 73 20 61 73 73
                                                ; FEBE 65 7A 20 64 65 20 70 6C
                                                ; FEC6 61 63 65
        .byte   $00                             ; FEC9 00
SFECA:
        .byte   "erreur de type"                ; FECA 65 72 72 65 75 72 20 64
                                                ; FED2 65 20 74 79 70 65
        .byte   $00                             ; FED8 00
SFED9:
        .byte   "format inconnu"                ; FED9 66 6F 72 6D 61 74 20 69
                                                ; FEE1 6E 63 6F 6E 6E 75
        .byte   $00                             ; FEE7 00
SFEE8:
        .byte   "lecteur absent"                ; FEE8 6C 65 63 74 65 75 72 20
                                                ; FEF0 61 62 73 65 6E 74
        .byte   $00                             ; FEF6 00
; ----------------------------------------------------------------------------
; Place le curseur en ligne 0 colonne 1 et efface la ligne
SFEF7:
        .byte   $1F,$40,$41                     ; FEF7 1F 40 41
LFEFA:
        .byte   $18                             ; FEFA 18
LFEFB:
        .byte   $00                             ; FEFB 00
; ----------------------------------------------------------------------------
; Table pour les messages d'erreurs
TFEFC:
        .addr   SFEA3                           ; FEFC A3 FE
        .addr   SFE9F+3                         ; FEFE A2 FE
        .addr   SFE9F+3                         ; FF00 A2 FE
        .addr   SFEB6                           ; FF02 B6 FE
        .addr   SFE9F+3                         ; FF04 A2 FE
        .addr   SFECA                           ; FF06 CA FE
        .addr   SFED9                           ; FF08 D9 FE
        .addr   SFE9F+3                         ; FF0A A2 FE
        .addr   SFEE8                           ; FF0C E8 FE
; ----------------------------------------------------------------------------
; Merge (Hyperbasic)
XMERGE:
        jmp     _XMERGE                         ; FF0E 4C 0A F3

; ----------------------------------------------------------------------------
; Prendre les infos delon FICNUM
XFST:
        jmp     _XFST                           ; FF11 4C A1 EE

; ----------------------------------------------------------------------------
; Ecrire (séquentiel)
XSPUT:
        jmp     _XSPUT                          ; FF14 4C 1C F0

; ----------------------------------------------------------------------------
; Lire (séquentiel)
XSTAKE:
        jmp     _XSTAKE                         ; FF17 4C 82 F0

; ----------------------------------------------------------------------------
; Ouvre fichier (nom BUFNOM, numméro FICNUM)
XOPEN:
        jmp     _XOPEN                          ; FF1A 4C DD EE

; ----------------------------------------------------------------------------
; Ferme fichier de numéro FICNUM
XCLOSE:
        jmp     _XCLOSE                         ; FF1D 4C E9 EF

; ----------------------------------------------------------------------------
; Prendre enregistrement (fichier FICNUM)
XTAKE:
        jmp     _XTAKE                          ; FF20 4C 4E F1

; ----------------------------------------------------------------------------
; Ecrire enregistrement (fichier FICNUM)
XPUT:
        jmp     _XPUT                           ; FF23 4C 4C F1

; ----------------------------------------------------------------------------
; Placer index séquentiel  FICNUM en fin de fichier
XAPPEN:
        jmp     _XAPPEN                         ; FF26 4C 86 F0

; ----------------------------------------------------------------------------
; Placer index séquentiel FICNUM au début du fichier
XREWIN:
        jmp     _XREWIN                         ; FF29 4C 38 F1

; ----------------------------------------------------------------------------
; Sauter enregistrement (fichier FICNUM)
XJUMP:
        jmp     _XJUMP                          ; FF2C 4C 8A F0

; ----------------------------------------------------------------------------
; Calcule lg tampon fichiers (FICNUM)
XLGBUF:
        jmp     _XLGBUF                         ; FF2F 4C 59 EC

; ----------------------------------------------------------------------------
; Restaure le vecteur d'erreur
XERVEC:
        jmp     _XERVEC                         ; FF32 4C 95 D9

; ----------------------------------------------------------------------------
; Sauve l'écran TEXT ou HIRES (selon FLGTEL)
XESAVE:
        jmp     _XESAVE                         ; FF35 4C 35 DB

; ----------------------------------------------------------------------------
; Copie de fichiers
XCOPY:
        jmp     _XCOPY                          ; FF38 4C BF E6

; ----------------------------------------------------------------------------
; Change le nom de la disquette
XDNAME:
        jmp     _XDNAME                         ; FF3B 4C 37 E1

; ----------------------------------------------------------------------------
; Non implémenté dans STRATSED 2.0x
XSTATU:
        jmp     SE161                           ; FF3E 4C 61 E1

; ----------------------------------------------------------------------------
; Recopie le DOS en mémoire
XUPDAT:
        jmp     _XUPDAT                         ; FF41 4C 10 E3

; ----------------------------------------------------------------------------
; Formatte la disquette
XFORMA:
        jmp     _XFORMA                         ; FF44 4C 51 E3

; ----------------------------------------------------------------------------
; Renomme un fichier
XREN:
        jmp     _XREN                           ; FF47 4C 27 E0

; ----------------------------------------------------------------------------
; DELBAK
XDELBK:
        jmp     _XDELBK                         ; FF4A 4C 33 DF

; ----------------------------------------------------------------------------
; DEL
XDELN:
        jmp     _XDELN                          ; FF4D 4C 40 DF

; ----------------------------------------------------------------------------
; PROT
XPROT:
        jmp     _XPROT                          ; FF50 4C E5 E0

; ----------------------------------------------------------------------------
; UNPROT
XUNPROT:
        jmp     _XUNPROT                        ; FF53 4C E8 E0

; ----------------------------------------------------------------------------
; DIR
XDIRN:
        jmp     _XDIRN                          ; FF56 4C 72 DA

; ----------------------------------------------------------------------------
; Backup du lecteur BUFNOM vers le lecteur BUFNOM+1
XBKP:
        jmp     _XBKP                           ; FF59 4C 54 EA

; ----------------------------------------------------------------------------
; INIT
XINITI:
        jmp     _XINIT                          ; FF5C 4C 04 E2

; ----------------------------------------------------------------------------
; Génère une erreur
XERREU:
        jmp     _XERREU                         ; FF5F 4C 12 D6

; ----------------------------------------------------------------------------
; LOAD
XLOAD:
        jmp     _XLOAD                          ; FF62 4C CB DC

; ----------------------------------------------------------------------------
; Valeurs par défaut SAVE
XDEFSA:
        jmp     _XDEFSA                         ; FF65 4C 22 DB

; ----------------------------------------------------------------------------
; Valeurs par défaut LOAD
XDEFLO:
        jmp     _XDEFLO                         ; FF68 4C B6 DC

; ----------------------------------------------------------------------------
; SAVE
XSAVE:
        jmp     _XSAVE                          ; FF6B 4C 57 DB

; ----------------------------------------------------------------------------
; Detruit un fichier
XNOMDE:
        jmp     _XNOMDE                         ; FF6E 4C 4F DE

; ----------------------------------------------------------------------------
; Créé une table P/S de AY secteurs
XCREAY:
        jmp     _XCREAY                         ; FF71 4C 23 D9

; ----------------------------------------------------------------------------
; Marque le sesteur Y piste A comme occupé
XDETSE:
        jmp     _XDETSE                         ; FF74 4C 0B D9

; ----------------------------------------------------------------------------
; Marque le secteur Y piste A comme libre
XLIBSE:
        jmp     _XLIBSE                         ; FF77 4C 56 D8

; ----------------------------------------------------------------------------
XTRVCA:
        jmp     _XTRVCA                         ; FF7A 4C 53 D7

; ----------------------------------------------------------------------------
; Cherche un fichier
XTRVNM:
        jmp     _XTRVNM                         ; FF7D 4C 27 D7

; ----------------------------------------------------------------------------
; Cherche le fichier suivant
XTRVNX:
        jmp     _XTRVNX                         ; FF80 4C 3B D7

; ----------------------------------------------------------------------------
; Transfert catalogue -> BUFNOM
XCABU:
        jmp     _XCABU                          ; FF83 4C 01 D7

; ----------------------------------------------------------------------------
; Transfert BUFNOM -> catalogue
XBUCA:
        jmp     _XBUCA                          ; FF86 4C E8 D6

; ----------------------------------------------------------------------------
; Rempli BUF1 avec des 0
XVBUF1:
        jmp     _XBUF1                          ; FF89 4C C8 D6

; ----------------------------------------------------------------------------
; Ecrit un secteur
XSVSEC:
        jmp     _XSVSEC                         ; FF8C 4C 9A D6

; ----------------------------------------------------------------------------
; Ecrit le secteur Y piste A
XSAY:
        jmp     _XSAY                           ; FF8F 4C 94 D6

; ----------------------------------------------------------------------------
; Ecrit BUF1 dans le secteur Y piste A
XSBUF1:
        jmp     _XSBUF1                         ; FF92 4C 87 D6

; ----------------------------------------------------------------------------
; Ecrit BUF2 dans le secteur Y piste A
XSBUF2:
        jmp     _XSBUF2                         ; FF95 4C 84 D6

; ----------------------------------------------------------------------------
; Ecrit BUF3 dans le secteur Y piste A
XSBUF3:
        jmp     _XSBUF3                         ; FF98 4C 8A D6

; ----------------------------------------------------------------------------
; Ecrit le secteur catalogue
XSCAT:
        jmp     _XSCAT                          ; FF9B 4C 66 D6

; ----------------------------------------------------------------------------
        jmp     LD66E                           ; FF9E 4C 6E D6

; ----------------------------------------------------------------------------
; Lit un secteur
XPRSEC:
        jmp     _XPRSEC                         ; FFA1 4C 56 D6

; ----------------------------------------------------------------------------
; Lit le secteur Y piste A dans BUF1
XPBUF1:
        jmp     _XPBUF1                         ; FFA4 4C 3D D6

; ----------------------------------------------------------------------------
; Lit le secteur de BITMAP
XPMAP:
        jmp     _XPMAP                          ; FFA7 4C 21 D6

; ----------------------------------------------------------------------------
; Envoie la commande X au FDC
XWRTS:
        jmp     RWTS                            ; FFAA 4C 4F 05

; ----------------------------------------------------------------------------
; Menage (cartouche TELEMATIC)
XCTMENA:
        jmp     _XCTMENA                        ; FFAD 4C 8B FD

; ----------------------------------------------------------------------------
; Dupliquer (cartouche TELEMATIC)
XCTDUPL:
        jmp     _XCTDUPL                        ; FFB0 4C A6 FD

; ----------------------------------------------------------------------------
; Récupérer (cartouche TELEMATIC)
XCTRECU:
        jmp     _XCTRECU                        ; FFB3 4C 52 FD

; ----------------------------------------------------------------------------
; Détruire (cartouche TELEMATIC)
XCTDETR:
        jmp     _XCTDETR                        ; FFB6 4C 4C FD

; ----------------------------------------------------------------------------
; Emission (cartouche TELEMATIC)
XCTEMET:
        jmp     _XCTEMET                        ; FFB9 4C A5 F4

; ----------------------------------------------------------------------------
; Selection Lecteur (cartouche TELEMATIC)
XCTSELL:
        jmp     _XCTSELL                        ; FFBC 4C CD FD

; ----------------------------------------------------------------------------
; Initialiser (cartouche TELEMATIC)
XCTINIT:
        jmp     _XCTINIT                        ; FFBF 4C 3B FD

; ----------------------------------------------------------------------------
; Ecrire (cartouche TELEMATIC)
XCTECRI:
        jmp     _XCTECRI                        ; FFC2 4C 26 FD

; ----------------------------------------------------------------------------
; Lire (cartouche TELEMATIC)
XCTLIRE:
        jmp     _XCTLIRE                        ; FFC5 4C 32 FD

; ----------------------------------------------------------------------------
ROMSIG:
        .byte   "STRATSED V2.0E"                ; FFC8 53 54 52 41 54 53 45 44
                                                ; FFD0 20 56 32 2E 30 45
        .byte   $0A,$0D                         ; FFD6 0A 0D
        .byte   "(c) 1986 ORIC International"   ; FFD8 28 63 29 20 31 39 38 36
                                                ; FFE0 20 4F 52 49 43 20 49 6E
                                                ; FFE8 74 65 72 6E 61 74 69 6F
                                                ; FFF0 6E 61 6C
        .byte   $0A,$0D,$00,$00,$00             ; FFF3 0A 0D 00 00 00
; ----------------------------------------------------------------------------
SIG_vector:
        .addr   ROMSIG                          ; FFF8 C8 FF
NMI_vector:
        .addr   BUFTXT+32                       ; FFFA 20 80
RST_vector:
        .addr   RES                             ; FFFC 00 00
IRQ_vector:
        .addr   LD58A                           ; FFFE 8A D5
