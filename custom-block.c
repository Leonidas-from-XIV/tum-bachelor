static struct custom_operations archive_ops = {
    identifier: "archive",
    finalize: ost_archive_free,
    compare: custom_compare_default,
    hash: custom_hash_default,
    serialize: custom_serialize_default,
    deserialize: custom_deserialize_default
};
