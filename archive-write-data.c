static ssize_t
archive_write_raw_data(struct archive_write *a, const void *buff, size_t s)
{
	int ret = __archive_write_output(a, buff, s);
	if (ret >= 0)
		return (s);
	else
		return (ret);
}
