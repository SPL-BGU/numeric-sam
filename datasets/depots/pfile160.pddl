(define (problem depotprob42) (:domain depot)
(:objects
	depot0 depot1 depot2 - depot
	distributor0 distributor1 distributor2 - distributor
	truck0 truck1 - truck
	pallet0 pallet1 pallet2 pallet3 pallet4 pallet5 pallet6 pallet7 pallet8 pallet9 pallet10 pallet11 pallet12 pallet13 - pallet
	crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 crate8 crate9 - crate
	hoist0 hoist1 hoist2 hoist3 hoist4 hoist5 hoist6 hoist7 hoist8 hoist9 hoist10 hoist11 hoist12 - hoist)
(:init
	(at pallet0 depot0)
	(clear pallet0)
	(at pallet1 depot1)
	(clear pallet1)
	(at pallet2 depot2)
	(clear pallet2)
	(at pallet3 distributor0)
	(clear pallet3)
	(at pallet4 distributor1)
	(clear crate7)
	(at pallet5 distributor2)
	(clear pallet5)
	(at pallet6 depot1)
	(clear pallet6)
	(at pallet7 distributor0)
	(clear crate2)
	(at pallet8 distributor0)
	(clear crate5)
	(at pallet9 depot1)
	(clear pallet9)
	(at pallet10 depot1)
	(clear crate9)
	(at pallet11 distributor0)
	(clear crate4)
	(at pallet12 distributor1)
	(clear crate8)
	(at pallet13 depot2)
	(clear pallet13)
	(at truck0 depot1)
	(= (current_load truck0) 0)
	(= (load_limit truck0) 469)
	(at truck1 distributor0)
	(= (current_load truck1) 0)
	(= (load_limit truck1) 383)
	(at hoist0 depot0)
	(available hoist0)
	(at hoist1 depot1)
	(available hoist1)
	(at hoist2 depot2)
	(available hoist2)
	(at hoist3 distributor0)
	(available hoist3)
	(at hoist4 distributor1)
	(available hoist4)
	(at hoist5 distributor2)
	(available hoist5)
	(at hoist6 depot2)
	(available hoist6)
	(at hoist7 depot1)
	(available hoist7)
	(at hoist8 distributor2)
	(available hoist8)
	(at hoist9 distributor1)
	(available hoist9)
	(at hoist10 distributor2)
	(available hoist10)
	(at hoist11 depot1)
	(available hoist11)
	(at hoist12 distributor1)
	(available hoist12)
	(at crate0 distributor0)
	(on crate0 pallet7)
	(= (weight crate0) 49)
	(at crate1 distributor1)
	(on crate1 pallet12)
	(= (weight crate1) 25)
	(at crate2 distributor0)
	(on crate2 crate0)
	(= (weight crate2) 91)
	(at crate3 distributor1)
	(on crate3 crate1)
	(= (weight crate3) 10)
	(at crate4 distributor0)
	(on crate4 pallet11)
	(= (weight crate4) 68)
	(at crate5 distributor0)
	(on crate5 pallet8)
	(= (weight crate5) 14)
	(at crate6 distributor1)
	(on crate6 pallet4)
	(= (weight crate6) 52)
	(at crate7 distributor1)
	(on crate7 crate6)
	(= (weight crate7) 82)
	(at crate8 distributor1)
	(on crate8 crate3)
	(= (weight crate8) 79)
	(at crate9 depot1)
	(on crate9 pallet10)
	(= (weight crate9) 8)
	(= (fuel-cost) 0)
)

(:goal (and
		(on crate0 pallet13)
		(on crate1 pallet11)
		(on crate2 crate6)
		(on crate3 crate5)
		(on crate4 pallet9)
		(on crate5 pallet4)
		(on crate6 crate4)
		(on crate7 pallet3)
		(on crate9 pallet2)
	)
)

(:metric minimize (total-time)))
