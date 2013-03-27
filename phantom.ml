module Length : sig
  type 'a t
  val meters : float -> [`Meters] t
  val feet : float -> [`Feet] t
  val (+.) : 'a t -> 'a t -> 'a t
  val to_float : 'a t -> float
end = struct
  type 'a t = float
  external meters : float -> [`Meters] t = "%identity"
  external feet : float -> [`Feet] t = "%identity"
  let (+.) = (+.)
  external to_float : 'a t -> float = "%identity"
end
