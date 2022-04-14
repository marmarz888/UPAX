# UPAX

Se construyo una tabla con una celda con un textfield. Se Pide el nombre del usuario solo permitiendo caracteres alfabeticos. Agregue un boton para verificar que solo caracteres alfabeticos se usaron.  
La segunada celda se selecciona para permitir al usuario que se tome un selfie.  
La tercera celda abre unas graphicas con la informacion derivada de la API proporcionada.  

El ciclo de vida de un view controller es lo siguiente: loadView() -> viewDidLoad() -> viewWillAppear() -> viewDidAppear() -> loadView() -> viewDidLoad() -> viewWillDisapear() -> viewWillAppear() -> viewdidAppear() -> viewDidDisappear()  

El cicle de vida de una applicacion es lo siguiente: En el foreground es que la app esta inactiva o activa. Si se pone inactiva se transfiere al modo background. Si bastante tiempo pasa en el background, la app se suspende. De alli, la applicacion se va a modo no corriendo hasta que la app se activa de nuevo.  

Una referencia weak es una referencia que no es tomada en cuenta en el ARC. Es decir que el ARC puede liberar esa referienca cuando se acabe de ocupar porque no esta disponible en otra parte del codigo. Unowned es lo mismo que weak pero con una condicion de que no puede tener un valor nil. Es decir que unowned tiene que tener un valor a fuerzas para que compile el programa. Una referiencia strong es una referiencia que no se puede liberar al momento que se ocupe la referencia porque se esta ocupando en otra parte del programa.  

ARC es Automatic Reference Counting que cuenta weak referencias con 0 y strong con 1. Si la variable tiene un valor de 0, significa que esa referencia se puede liberar. Si es valor de 1, significa que es refernecia fuerta y ARC no liberara la informacion hasta que la referencia se ocupe completamente en el programa.  

Bonus: El background sera rojo porque viewDidLoad() se ejecutara despues de que la applicacion DidFinishLaunchingWithOptions. Primero se ejecuta DidFinishLaunching y despues viewDidLoad().
