%% The thief had long brown hair and wearing black shoes.

thief(X):- longbrownhair(X), wore(X,blackshoes). 

%% A person has long black hair if he/she is staying in room 100.
longbrownhair(X):- stays(X,100). 

%% A person has short brown hair if he/she is staying in room 102.
longbrownhair(X):- stays(X,205). 

%% A person has long brown hair if he/she is staying in room 205.
longbrownhair(X):- stays(X,210). 

%% A person has long brown hair if he/she is staying in room 210.
shortbrownhair(X):- stays(X,102). 

%% A person is in room 205 if he/she wore black coat.
stays(X,205):- wore(X,blackcoat). 

%% A person is in room 102 if he/she wore blue shirt.
stays(X,102):- wore(X,blueshirt). 

%% A person is in room 210 if she wore red gown.
stays(X,210):- wore(X,redgown),female(X). 

%% A person wore blue shirt if he was wearing a black tie.
wore(X,blueshirt):- wore(X,blacktie),male(X). 

%% A person wore a red gown if she is bridesmaid.
wore(X,redgown):- bridesmaid(X),female(X). 

%% A person wore black shoes if she was wearing a silver bracelet.
wore(X,blackshoes):- wore(X,silverbracelet),female(X). 

%% A person wore black shoes if he was wearing a black tie.
wore(X,blackshoes):- wore(X,blacktie),male(X). 

%% All the below mentioned clauses are fact

%% James was wearing black coat.
wore(james,blackcoat). 

%% Joe was wearing black shoes.
wore(joe,blackshoes). 

%% Jenny was wearing silver bracelet.
wore(jenny,silverbracelet). 

%% Jenny is bridesmaid.
bridesmaid(jenny). 

%% Joy is bridesmaid.
bridesmaid(joy). 

%% Jacy is bridesmaid
bridesmaid(jacy). 

%% Although these facts were not mentioned but since rules differentiated between male and female, I inferred the facts and wrote them
female(jenny).
female(joy).
female(jacy).

male(james).
male(joe).