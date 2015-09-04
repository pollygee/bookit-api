This is a Rails API for a food pantry appointment making app.  The front end is built in Angular and can be see at:
[meta helper](http://fish-book.herokuapp.com/)




Enpoints for the API are:
``` /appointmens.json ```
  returns all appointments as a json object
  
``` /clients.json ```
  returns all clients and their information as a json object
  
``` /pantry_days.json ```
  returns all Pantry Days
  
``` /voicemails.json ```
  returns all appointments and their associated notes with date/time created
  
``` /clients/:id.json ```
  returns all info pertaining to a client with given id
 
**Create a client**

POST to ```/clients ``` with parameters as an object ``` client: { first_name:, last_name:, address:, zip:, display_phone:, county:, family_size:, account_number:, email: } ```

**Edit a client**

PATCH to ```/clients/:id ``` with parameters as an object  whatever needs to be changed

**Create an appointment**

POST to ``` /appointments ``` with parameters as an object ``` appointment: { pantry_day_id:, client_id:  }```  if client has asked for utilities assistance pass parameter ` utilities: "true" `

**Edit an appointment**

PATCH to ``` /appointments/:id ``` with parameters as an object ``` appointment: {showed: "true"} ``` or whatever needs to be edited

We will not delete appointments, if an appointment gets cancelled - we will change showed to "False"

**Create Pantry Day**

POST to ``` /pantry_days ``` with parameters as an object ``` pantry_day: { date_time:, num_volunteers:, max_num_clients: } ```

**Edit a Pantry Day**

PATCH to ```/pantry_days/:id ``` with parameters as an object ```pantry_day: { num_volunteers: } ``` or whatever needs to be changed

**Create a Voicemail**

POST to ``` /voicemails ``` with parameters as an object ``` voicemail: { client_id: } ```

**Edit a Voicemail**

PATCH to  ``` /voicemails/:id ``` with parameters that need to be changed as parameters ```voicemail: { resolved:, out_of_area: } ```

**Create a Note**

POST to ```voicemails/:voicemail_id/notes``` with parameters ```note: {info:} ```

**Edit a Note**

PATCH to ```/voicemails/:voicemail_id/notes``` with parameters that need to be changed
