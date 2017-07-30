## INITIALIZE SCREEN

    initscr();             //initialize screen
		
    printw("Hello World"); //print string
    refresh();             //refresh and flush
		
    endwin();              //end window

## CURSOR FUNCTIONS

    move(unsigned int iRows,unsigned int iSymbols);
>*move carriage*

    mvprintw(unsigned int iRows,unsigned int iSymbols,"text");
>*move()+printw()*

    curs_set(0);
>*invisible cursor*

    curs_set(1);
>*normal visibility terminal-based settings cursor*

    curs_set(2);
>*high visibility terminal-based settings cursor*

### INTERACTION WITH USER
    echo();
>*enable to show user entered symbols*

    noecho();
>*disable to show user entered symbol*

	raw();
>*enable terminal raw mode*

	noraw();
>*disable terminal raw mode*

        cbreak();
>*like raw(), but Ctrl+* keypad sequences will be tranformed to signals*

        nocbreak();
>*disable cbreak() and halfdelay() mode*

        halfdelay(1...255);
>*like cbreak, but if user will not type a characters during 1...255 tenth of second, return error code*

        keypad(stdsrc,TRUE);
>*Enables reading F1,F2,...,F12 keys,arrows reading* 

	getmaxyx(stdscr,int y,int x);
>*get screen resolution in symbols stdscr - standart (current) screen, if we work on one screenorg*

        KEY_F(1...12);
>*Functions that returns code of F1...F12 keys in keypad(); mode*

### PRINT

        addch(char cSymbol);
>*print char*

        mvaddch(unsigned int iRow,unsigned int iCol,char cSymbol);
>*move and print char*

       waddch(WINDOW * win1,char cSymbol);
>*print char in window*

        mvwaddch(WINDOW * win1,unsigned int iRow,unsigned int iCol,char cSymbol);
>*move and print char in window*


       mvprintw(unsigned int iRows,unsigned int iSymbols,string);
>*move()+printw()*

	wprintw();
>*window printw()*

	mvprintw(unsigned int iRows,unsigned int iSymbols,string);
>*move() + printw()*

	mvwprintw(WINDOW * win,unsigned int iRows,unsigned int iSymbols,stringg);
>*move() + printw() in window*



#### Some special symbols arguments of addch():

        printw("Upper left corner           "); addch(ACS_ULCORNER); printw("\n"); 
        printw("Lower left corner           "); addch(ACS_LLCORNER); printw("\n");
        printw("Lower right corner          "); addch(ACS_LRCORNER); printw("\n");
        printw("Tee pointing right          "); addch(ACS_LTEE); printw("\n");
        printw("Tee pointing left           "); addch(ACS_RTEE); printw("\n");
        printw("Tee pointing up             "); addch(ACS_BTEE); printw("\n");
        printw("Tee pointing down           "); addch(ACS_TTEE); printw("\n");
        printw("Horizontal line             "); addch(ACS_HLINE); printw("\n");
        printw("Vertical line               "); addch(ACS_VLINE); printw("\n");
        printw("Large Plus or cross over    "); addch(ACS_PLUS); printw("\n");
        printw("Scan Line 1                 "); addch(ACS_S1); printw("\n");
        printw("Scan Line 3                 "); addch(ACS_S3); printw("\n");
        printw("Scan Line 7                 "); addch(ACS_S7); printw("\n");
        printw("Scan Line 9                 "); addch(ACS_S9); printw("\n");
        printw("Diamond                     "); addch(ACS_DIAMOND); printw("\n");
        printw("Checker board (stipple)     "); addch(ACS_CKBOARD); printw("\n");
        printw("Degree Symbol               "); addch(ACS_DEGREE); printw("\n");
        printw("Plus/Minus Symbol           "); addch(ACS_PLMINUS); printw("\n");
        printw("Bullet                      "); addch(ACS_BULLET); printw("\n");
        printw("Arrow Pointing Left         "); addch(ACS_LARROW); printw("\n");
        printw("Arrow Pointing Right        "); addch(ACS_RARROW); printw("\n");
        printw("Arrow Pointing Down         "); addch(ACS_DARROW); printw("\n");
        printw("Arrow Pointing Up           "); addch(ACS_UARROW); printw("\n");
        printw("Board of squares            "); addch(ACS_BOARD); printw("\n");
        printw("Lantern Symbol              "); addch(ACS_LANTERN); printw("\n");
        printw("Solid Square Block          "); addch(ACS_BLOCK); printw("\n");
        printw("Less/Equal sign             "); addch(ACS_LEQUAL); printw("\n");
        printw("Greater/Equal sign          "); addch(ACS_GEQUAL); printw("\n");
        printw("Pi                          "); addch(ACS_PI); printw("\n");
        printw("Not equal                   "); addch(ACS_NEQUAL); printw("\n");
        printw("UK pound sign               "); addch(ACS_STERLING); printw("\n");


### ATTRIBUTES

	attron(int attrs);
>*set ON attribute*

	attroff(int attrs);
>*set OFF attribute*
	
### TEXT COLORING

	int start_color();
>*initialize coloring*

	int init_pair(short ColorPairName, short foreground, short background);

*  foreground - characters, 
*   background - wall, 
*   ColorPairName - name for using color pair by attron/attroff*

	attron(COLOR_PAIR(ColorPairName));
>*set up color scheme

	attroff(COLOR_PAIR(color_pair_name));
>*set down color scheme*

### WINODOWS

        WINDOW* win = newwin(unsigned int iHeight, unsigned int iWidth, unsigned int y, unsigned int x); //WINDOW type size - 100 bytes

	wprintw(win,"Hello word from window");                 //print in window
	mvwprintw(win,y,x,"move and print inside the window"); //window mvprintw analog 
	wrefresh(win);                                         //refresh window
		
	delwin(win);                                           //delete window
	