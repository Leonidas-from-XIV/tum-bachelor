CAMLprim value ost_version_number(value unit)
{
    CAMLparam1(unit);
    CAMLlocal1(r);
    int version_number = archive_version_number();
    r = Val_int(version_number);
    CAMLreturn(r);
}
