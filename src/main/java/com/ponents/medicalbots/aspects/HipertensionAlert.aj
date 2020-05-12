public aspect HipertensionAlert {
    pointcut setdescription(com.ponents.medicalbots.model.MedicalRecord mr, String description) :
        call(public void com.ponents.medicalbots.model.MedicalRecord.setDescription(String)) && target(mr) && args(description);

    after(com.ponents.medicalbots.model.MedicalRecord mr, String description) : setdescription(mr, description) {
        if(description.contains("hipertens")) {
            System.out.println("Alerta: Se ha agregado una historia médica de un paciente con hipertensión");
        }
    }
}
