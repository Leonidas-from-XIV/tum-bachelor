CAMLprim value ost_version_number(value unit)
{
    int version_number = archive_version_number();
    return Val_int(version_number);
}
