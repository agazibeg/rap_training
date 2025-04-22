CLASS zrap_cl_data DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zrap_cl_data IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

*    data(ls_department) = value zrap_db_depart( dep_id = 2 dep_name = 'Java' is_active = '' ).
*    insert zrap_db_depart from @ls_department.

     data(ls_employee) = value zrap_db_empl( emp_id = 1 first_name = 'John' last_name = 'Doe' dep_id = 1 salary = '2500.00').
     insert zrap_db_empl from @ls_employee.

  ENDMETHOD.
ENDCLASS.
