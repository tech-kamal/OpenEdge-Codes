&ANALYZE-SUSPEND _VERSION-NUMBER AB_v10r12 GUI
&ANALYZE-RESUME
/* Connected Databases 
          sports2025       PROGRESS
*/
&Scoped-define WINDOW-NAME newCust
&ANALYZE-SUSPEND _UIB-CODE-BLOCK _CUSTOM _DEFINITIONS newCust 
/*------------------------------------------------------------------------

  File: 

  Description: 

  Input Parameters:
      <none>

  Output Parameters:
      <none>

  Author: 

  Created: 

------------------------------------------------------------------------*/
/*          This .W file was created with the Progress AppBuilder.      */
/*----------------------------------------------------------------------*/

/* Create an unnamed pool to store all the widgets created 
     by this procedure. This is a good default which assures
     that this procedure's triggers and internal procedures 
     will execute in this procedure's storage, and that proper
     cleanup will occur on deletion of the procedure. */

CREATE WIDGET-POOL.

/* ***************************  Definitions  ************************** */
DEFINE VARIABLE Serial-No AS INTEGER     NO-UNDO.
DEFINE VARIABLE Row-count AS INT64       NO-UNDO.

/* Parameters Definitions ---                                           */

/* Local Variable Definitions ---                                       */

/* _UIB-CODE-BLOCK-END */
&ANALYZE-RESUME


&ANALYZE-SUSPEND _UIB-PREPROCESSOR-BLOCK 

/* ********************  Preprocessor Definitions  ******************** */

&Scoped-define PROCEDURE-TYPE Window
&Scoped-define DB-AWARE no

/* Name of designated FRAME-NAME and/or first browse and/or first query */
&Scoped-define FRAME-NAME new-cust
&Scoped-define BROWSE-NAME new-user

/* Internal Tables (found by Frame, Query & Browse Queries)             */
&Scoped-define INTERNAL-TABLES customer

/* Definitions for BROWSE new-user                                      */
&Scoped-define FIELDS-IN-QUERY-new-user Serial-No customer.custnum customer.NAME customer.address customer.city   
&Scoped-define ENABLED-FIELDS-IN-QUERY-new-user customer.NAME ~
customer.address ~
customer.city   
&Scoped-define ENABLED-TABLES-IN-QUERY-new-user customer
&Scoped-define FIRST-ENABLED-TABLE-IN-QUERY-new-user customer
&Scoped-define SELF-NAME new-user
&Scoped-define QUERY-STRING-new-user FOR EACH customer
&Scoped-define OPEN-QUERY-new-user OPEN QUERY new-user FOR EACH customer.
&Scoped-define TABLES-IN-QUERY-new-user customer
&Scoped-define FIRST-TABLE-IN-QUERY-new-user customer


/* Definitions for FRAME new-cust                                       */

/* Standard List Definitions                                            */
&Scoped-Define ENABLED-OBJECTS new-user btnLoad 

/* Custom List Definitions                                              */
/* List-1,List-2,List-3,List-4,List-5,List-6                            */

/* _UIB-PREPROCESSOR-BLOCK-END */
&ANALYZE-RESUME



/* ***********************  Control Definitions  ********************** */

/* Define the widget handle for the window                              */
DEFINE VARIABLE newCust AS WIDGET-HANDLE NO-UNDO.

/* Definitions of the field level widgets                               */
DEFINE BUTTON btnLoad 
     LABEL "Load" 
     SIZE 38 BY 1.43.

/* Query definitions                                                    */
&ANALYZE-SUSPEND
DEFINE QUERY new-user FOR 
      customer SCROLLING.
&ANALYZE-RESUME

/* Browse definitions                                                   */
DEFINE BROWSE new-user
&ANALYZE-SUSPEND _UIB-CODE-BLOCK _DISPLAY-FIELDS new-user newCust _FREEFORM
  QUERY new-user DISPLAY
      Serial-No        COLUMN-LABEL "Serial-No."
customer.custnum COLUMN-LABEL "Customer No."
customer.NAME    COLUMN-LABEL "Customer Name."
customer.address COLUMN-LABEL "Address."
customer.city    COLUMN-LABEL "City."


ENABLE
       customer.NAME
       customer.address
       customer.city
/* _UIB-CODE-BLOCK-END */
&ANALYZE-RESUME
    WITH NO-ROW-MARKERS SEPARATORS SIZE 108 BY 10.71 FIT-LAST-COLUMN.


/* ************************  Frame Definitions  *********************** */

DEFINE FRAME new-cust
     new-user AT ROW 1.95 COL 4 WIDGET-ID 200
     btnLoad AT ROW 14.1 COL 38 WIDGET-ID 2
    WITH 1 DOWN NO-BOX KEEP-TAB-ORDER OVERLAY 
         SIDE-LABELS NO-UNDERLINE THREE-D 
         AT COLUMN 1 ROW 1
         SIZE 115.2 BY 16 WIDGET-ID 100.


/* *********************** Procedure Settings ************************ */

&ANALYZE-SUSPEND _PROCEDURE-SETTINGS
/* Settings for THIS-PROCEDURE
   Type: Window
   Allow: Basic,Browse,DB-Fields,Window,Query
   Other Settings: COMPILE
 */
&ANALYZE-RESUME _END-PROCEDURE-SETTINGS

/* *************************  Create Window  ************************** */

&ANALYZE-SUSPEND _CREATE-WINDOW
IF SESSION:DISPLAY-TYPE = "GUI":U THEN
  CREATE WINDOW newCust ASSIGN
         HIDDEN             = YES
         TITLE              = "Customer Details"
         HEIGHT             = 16
         WIDTH              = 115.2
         MAX-HEIGHT         = 16
         MAX-WIDTH          = 115.2
         VIRTUAL-HEIGHT     = 16
         VIRTUAL-WIDTH      = 115.2
         RESIZE             = yes
         SCROLL-BARS        = no
         STATUS-AREA        = no
         BGCOLOR            = ?
         FGCOLOR            = ?
         KEEP-FRAME-Z-ORDER = yes
         THREE-D            = yes
         MESSAGE-AREA       = no
         SENSITIVE          = yes.
ELSE {&WINDOW-NAME} = CURRENT-WINDOW.
/* END WINDOW DEFINITION                                                */
&ANALYZE-RESUME



/* ***********  Runtime Attributes and AppBuilder Settings  *********** */

&ANALYZE-SUSPEND _RUN-TIME-ATTRIBUTES
/* SETTINGS FOR WINDOW newCust
  VISIBLE,,RUN-PERSISTENT                                               */
/* SETTINGS FOR FRAME new-cust
   FRAME-NAME                                                           */
/* BROWSE-TAB new-user 1 new-cust */
IF SESSION:DISPLAY-TYPE = "GUI":U AND VALID-HANDLE(newCust)
THEN newCust:HIDDEN = no.

/* _RUN-TIME-ATTRIBUTES-END */
&ANALYZE-RESUME


/* Setting information for Queries and Browse Widgets fields            */

&ANALYZE-SUSPEND _QUERY-BLOCK BROWSE new-user
/* Query rebuild information for BROWSE new-user
     _START_FREEFORM
OPEN QUERY new-user FOR EACH customer.
     _END_FREEFORM
     _Query            is NOT OPENED
*/  /* BROWSE new-user */
&ANALYZE-RESUME

 



/* ************************  Control Triggers  ************************ */

&Scoped-define SELF-NAME newCust
&ANALYZE-SUSPEND _UIB-CODE-BLOCK _CONTROL newCust newCust
ON END-ERROR OF newCust /* Customer Details */
OR ENDKEY OF {&WINDOW-NAME} ANYWHERE DO:
  /* This case occurs when the user presses the "Esc" key.
     In a persistently run window, just ignore this.  If we did not, the
     application would exit. */
  IF THIS-PROCEDURE:PERSISTENT THEN RETURN NO-APPLY.
END.

/* _UIB-CODE-BLOCK-END */
&ANALYZE-RESUME


&ANALYZE-SUSPEND _UIB-CODE-BLOCK _CONTROL newCust newCust
ON WINDOW-CLOSE OF newCust /* Customer Details */
DO:
  /* This event will close the window and terminate the procedure.  */
  APPLY "CLOSE":U TO THIS-PROCEDURE.
  RETURN NO-APPLY.
END.

/* _UIB-CODE-BLOCK-END */
&ANALYZE-RESUME


&Scoped-define SELF-NAME btnLoad
&ANALYZE-SUSPEND _UIB-CODE-BLOCK _CONTROL btnLoad newCust
ON CHOOSE OF btnLoad IN FRAME new-cust /* Load */
DO:
  RUN p_load.
END.

/* _UIB-CODE-BLOCK-END */
&ANALYZE-RESUME


&Scoped-define BROWSE-NAME new-user
&Scoped-define SELF-NAME new-user
&ANALYZE-SUSPEND _UIB-CODE-BLOCK _CONTROL new-user newCust
ON ROW-DISPLAY OF new-user IN FRAME new-cust
DO:
   ASSIGN Serial-No  = Serial-No + 1.
END.

/* _UIB-CODE-BLOCK-END */
&ANALYZE-RESUME


&ANALYZE-SUSPEND _UIB-CODE-BLOCK _CONTROL new-user newCust
ON VALUE-CHANGED OF new-user IN FRAME new-cust
DO:
   RUN p_Display.
END.

/* _UIB-CODE-BLOCK-END */
&ANALYZE-RESUME


&UNDEFINE SELF-NAME

&ANALYZE-SUSPEND _UIB-CODE-BLOCK _CUSTOM _MAIN-BLOCK newCust 


/* ***************************  Main Block  *************************** */

/* Set CURRENT-WINDOW: this will parent dialog-boxes and frames.        */
ASSIGN CURRENT-WINDOW                = {&WINDOW-NAME} 
       THIS-PROCEDURE:CURRENT-WINDOW = {&WINDOW-NAME}.

/* The CLOSE event can be used from inside or outside the procedure to  */
/* terminate it.                                                        */
ON CLOSE OF THIS-PROCEDURE 
   RUN disable_UI.

/* Best default for GUI applications is...                              */
PAUSE 0 BEFORE-HIDE.

/* Now enable the interface and wait for the exit condition.            */
/* (NOTE: handle ERROR and END-KEY so cleanup code will always fire.    */
MAIN-BLOCK:
DO ON ERROR   UNDO MAIN-BLOCK, LEAVE MAIN-BLOCK
   ON END-KEY UNDO MAIN-BLOCK, LEAVE MAIN-BLOCK:
  RUN enable_UI.
  
  ASSIGN Serial-No = 0
         Row-count = 1.
  IF NOT THIS-PROCEDURE:PERSISTENT THEN
    WAIT-FOR CLOSE OF THIS-PROCEDURE.
END.

/* _UIB-CODE-BLOCK-END */
&ANALYZE-RESUME


/* **********************  Internal Procedures  *********************** */

&ANALYZE-SUSPEND _UIB-CODE-BLOCK _PROCEDURE disable_UI newCust  _DEFAULT-DISABLE
PROCEDURE disable_UI :
/*------------------------------------------------------------------------------
  Purpose:     DISABLE the User Interface
  Parameters:  <none>
  Notes:       Here we clean-up the user-interface by deleting
               dynamic widgets we have created and/or hide 
               frames.  This procedure is usually called when
               we are ready to "clean-up" after running.
------------------------------------------------------------------------------*/
  /* Delete the WINDOW we created */
  IF SESSION:DISPLAY-TYPE = "GUI":U AND VALID-HANDLE(newCust)
  THEN DELETE WIDGET newCust.
  IF THIS-PROCEDURE:PERSISTENT THEN DELETE PROCEDURE THIS-PROCEDURE.
END PROCEDURE.

/* _UIB-CODE-BLOCK-END */
&ANALYZE-RESUME

&ANALYZE-SUSPEND _UIB-CODE-BLOCK _PROCEDURE enable_UI newCust  _DEFAULT-ENABLE
PROCEDURE enable_UI :
/*------------------------------------------------------------------------------
  Purpose:     ENABLE the User Interface
  Parameters:  <none>
  Notes:       Here we display/view/enable the widgets in the
               user-interface.  In addition, OPEN all queries
               associated with each FRAME and BROWSE.
               These statements here are based on the "Other 
               Settings" section of the widget Property Sheets.
------------------------------------------------------------------------------*/
  ENABLE new-user btnLoad 
      WITH FRAME new-cust IN WINDOW newCust.
  {&OPEN-BROWSERS-IN-QUERY-new-cust}
  VIEW newCust.
END PROCEDURE.

/* _UIB-CODE-BLOCK-END */
&ANALYZE-RESUME

&ANALYZE-SUSPEND _UIB-CODE-BLOCK _PROCEDURE p_Display newCust 
PROCEDURE p_Display :
/*------------------------------------------------------------------------------
  Purpose:     
  Parameters:  <none>
  Notes:       
------------------------------------------------------------------------------*/
     MESSAGE "p_Display Count: " Row-count 
         VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
         Row-count = Row-count + 1.
         
      IF Row-count > 10 THEN
      DO:
          QUIT.
      END.
END PROCEDURE.

/* _UIB-CODE-BLOCK-END */
&ANALYZE-RESUME

&ANALYZE-SUSPEND _UIB-CODE-BLOCK _PROCEDURE p_load newCust 
PROCEDURE p_load :
/*------------------------------------------------------------------------------
  Purpose:     
  Parameters:  <none>
  Notes:       
------------------------------------------------------------------------------*/
   {&open-query-new-user}
END PROCEDURE.

/* _UIB-CODE-BLOCK-END */
&ANALYZE-RESUME

