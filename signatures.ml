val read_new_configured: read_format list -> read_filter list -> [`Empty] r
val feed_data: [`Empty] r -> string -> [`Populated] r
val extract_all: [`Populated] r -> ost_entry list ErrorMonad.t
val write_new_configured: write_format -> write_filter list -> [`Closed] w
val write_open_memory: [`Closed] w -> [`Open] w
val write_entry: [`Open] w -> ost_entry -> [`Open] w
val write_close: [`Open] w -> string ErrorMonad.t
