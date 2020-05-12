public aspect getAllAlert {
    pointcut getall() : call(* *.getAll());

    before() : getall() {
        System.out.println("Se pretende obtener todos los datos de una tabla");
    }
}