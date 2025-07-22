; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!905 () Bool)

(assert start!905)

(declare-fun b!4270 () Bool)

(declare-fun res!3334 () Bool)

(declare-fun e!2022 () Bool)

(assert (=> b!4270 (=> (not res!3334) (not e!2022))))

(declare-datatypes ((array!252 0))(
  ( (array!253 (arr!111 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!111 (_ BitVec 32))) )
))
(declare-fun q!85 () array!252)

(declare-fun qInv!0 (array!252) Bool)

(assert (=> b!4270 (= res!3334 (qInv!0 q!85))))

(declare-fun b!4271 () Bool)

(declare-fun res!3332 () Bool)

(declare-fun e!2025 () Bool)

(assert (=> b!4271 (=> (not res!3332) (not e!2025))))

(declare-datatypes ((array!254 0))(
  ( (array!255 (arr!112 (Array (_ BitVec 32) (_ BitVec 32))) (size!112 (_ BitVec 32))) )
))
(declare-fun iq!165 () array!254)

(declare-fun iqInv!0 (array!254) Bool)

(assert (=> b!4271 (= res!3332 (iqInv!0 iq!165))))

(declare-datatypes ((Unit!329 0))(
  ( (Unit!330) )
))
(declare-datatypes ((tuple4!150 0))(
  ( (tuple4!151 (_1!130 Unit!329) (_2!130 array!254) (_3!118 (_ BitVec 32)) (_4!75 (_ FloatingPoint 11 53))) )
))
(declare-fun e!2026 () tuple4!150)

(declare-fun jz!53 () (_ BitVec 32))

(declare-fun b!4272 () Bool)

(declare-fun lt!2659 () array!254)

(declare-fun lt!2655 () (_ FloatingPoint 11 53))

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!252 array!254 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!150)

(assert (=> b!4272 (= e!2026 (computeModuloWhile!0 jz!53 q!85 lt!2659 jz!53 lt!2655))))

(declare-fun b!4273 () Bool)

(declare-fun e!2024 () Bool)

(assert (=> b!4273 (= e!2025 e!2024)))

(declare-fun res!3331 () Bool)

(assert (=> b!4273 (=> (not res!3331) (not e!2024))))

(declare-fun lt!2656 () (_ BitVec 32))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!4273 (= res!3331 (QInt!0 lt!2656))))

(declare-fun i!252 () (_ BitVec 32))

(assert (=> b!4273 (= lt!2656 (select (arr!112 iq!165) i!252))))

(declare-fun b!4274 () Bool)

(declare-fun carry!58 () (_ BitVec 32))

(assert (=> b!4274 (= e!2024 (and (= carry!58 #b00000000000000000000000000000000) (not (= lt!2656 #b00000000000000000000000000000000)) (not (= #b00000000000000000000000000000000 (bvand lt!2656 #b10000000000000000000000000000000))) (not (= #b00000000000000000000000000000000 (bvand (bvsub #b00000001000000000000000000000000 lt!2656) #b10000000000000000000000000000000)))))))

(declare-fun b!4275 () Bool)

(declare-fun Unit!331 () Unit!329)

(assert (=> b!4275 (= e!2026 (tuple4!151 Unit!331 lt!2659 jz!53 lt!2655))))

(declare-fun res!3333 () Bool)

(assert (=> start!905 (=> (not res!3333) (not e!2022))))

(assert (=> start!905 (= res!3333 (and (bvsle #b00000000000000000000000000000010 jz!53) (bvslt jz!53 #b00000000000000000000000000010011)))))

(assert (=> start!905 e!2022))

(assert (=> start!905 true))

(declare-fun array_inv!61 (array!254) Bool)

(assert (=> start!905 (array_inv!61 iq!165)))

(declare-fun array_inv!62 (array!252) Bool)

(assert (=> start!905 (array_inv!62 q!85)))

(declare-fun b!4276 () Bool)

(assert (=> b!4276 (= e!2022 e!2025)))

(declare-fun res!3329 () Bool)

(assert (=> b!4276 (=> (not res!3329) (not e!2025))))

(declare-fun lt!2658 () (_ FloatingPoint 11 53))

(declare-fun lt!2657 () tuple4!150)

(assert (=> b!4276 (= res!3329 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2658) (fp.lt lt!2658 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!112 (_2!130 lt!2657)) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!252) (bvsle i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!4276 (= lt!2658 (fp.sub roundNearestTiesToEven (_4!75 lt!2657) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!75 lt!2657) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!75 lt!2657) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!75 lt!2657) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!75 lt!2657) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!4276 (= lt!2657 e!2026)))

(declare-fun c!677 () Bool)

(assert (=> b!4276 (= c!677 (bvsgt jz!53 #b00000000000000000000000000000000))))

(assert (=> b!4276 (= lt!2655 (select (arr!111 q!85) jz!53))))

(assert (=> b!4276 (= lt!2659 (array!255 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!4277 () Bool)

(declare-fun res!3330 () Bool)

(assert (=> b!4277 (=> (not res!3330) (not e!2025))))

(assert (=> b!4277 (= res!3330 (and (bvsge (select (arr!112 iq!165) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!58 #b00000000000000000000000000000000) (= carry!58 #b00000000000000000000000000000001)) (bvslt i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (= (and start!905 res!3333) b!4270))

(assert (= (and b!4270 res!3334) b!4276))

(assert (= (and b!4276 c!677) b!4272))

(assert (= (and b!4276 (not c!677)) b!4275))

(assert (= (and b!4276 res!3329) b!4271))

(assert (= (and b!4271 res!3332) b!4277))

(assert (= (and b!4277 res!3330) b!4273))

(assert (= (and b!4273 res!3331) b!4274))

(declare-fun m!7053 () Bool)

(assert (=> b!4277 m!7053))

(declare-fun m!7055 () Bool)

(assert (=> b!4272 m!7055))

(declare-fun m!7057 () Bool)

(assert (=> start!905 m!7057))

(declare-fun m!7059 () Bool)

(assert (=> start!905 m!7059))

(declare-fun m!7061 () Bool)

(assert (=> b!4273 m!7061))

(declare-fun m!7063 () Bool)

(assert (=> b!4273 m!7063))

(declare-fun m!7065 () Bool)

(assert (=> b!4270 m!7065))

(declare-fun m!7067 () Bool)

(assert (=> b!4271 m!7067))

(declare-fun m!7069 () Bool)

(assert (=> b!4276 m!7069))

(declare-fun m!7071 () Bool)

(assert (=> b!4276 m!7071))

(push 1)

(assert (not b!4272))

(assert (not b!4270))

(assert (not start!905))

(assert (not b!4273))

(assert (not b!4271))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2953 () Bool)

(declare-fun res!3337 () Bool)

(declare-fun e!2029 () Bool)

(assert (=> d!2953 (=> (not res!3337) (not e!2029))))

(assert (=> d!2953 (= res!3337 (= (size!111 q!85) #b00000000000000000000000000010100))))

(assert (=> d!2953 (= (qInv!0 q!85) e!2029)))

(declare-fun b!4280 () Bool)

(declare-fun lambda!177 () Int)

(declare-fun all20!0 (array!252 Int) Bool)

(assert (=> b!4280 (= e!2029 (all20!0 q!85 lambda!177))))

(assert (= (and d!2953 res!3337) b!4280))

(declare-fun m!7073 () Bool)

(assert (=> b!4280 m!7073))

(assert (=> b!4270 d!2953))

(declare-fun d!2955 () Bool)

(declare-fun res!3340 () Bool)

(declare-fun e!2032 () Bool)

(assert (=> d!2955 (=> (not res!3340) (not e!2032))))

(assert (=> d!2955 (= res!3340 (= (size!112 iq!165) #b00000000000000000000000000010100))))

(assert (=> d!2955 (= (iqInv!0 iq!165) e!2032)))

(declare-fun b!4283 () Bool)

(declare-fun lambda!180 () Int)

(declare-fun all20Int!0 (array!254 Int) Bool)

(assert (=> b!4283 (= e!2032 (all20Int!0 iq!165 lambda!180))))

(assert (= (and d!2955 res!3340) b!4283))

(declare-fun m!7075 () Bool)

(assert (=> b!4283 m!7075))

(assert (=> b!4271 d!2955))

(declare-fun b!4296 () Bool)

(declare-fun res!3351 () Bool)

(declare-fun e!2039 () Bool)

(assert (=> b!4296 (=> (not res!3351) (not e!2039))))

(assert (=> b!4296 (= res!3351 (iqInv!0 lt!2659))))

(declare-fun b!4297 () Bool)

(declare-fun e!2040 () Bool)

(declare-fun lt!2674 () tuple4!150)

(assert (=> b!4297 (= e!2040 (bvsle (_3!118 lt!2674) #b00000000000000000000000000000000))))

(declare-fun b!4298 () Bool)

(assert (=> b!4298 (= e!2039 (bvsgt jz!53 #b00000000000000000000000000000000))))

(declare-fun lt!2670 () array!254)

(declare-fun b!4299 () Bool)

(declare-fun e!2041 () tuple4!150)

(declare-fun lt!2671 () (_ FloatingPoint 11 53))

(declare-fun lt!2673 () (_ BitVec 32))

(declare-fun Unit!332 () Unit!329)

(assert (=> b!4299 (= e!2041 (tuple4!151 Unit!332 lt!2670 lt!2673 lt!2671))))

(declare-fun d!2957 () Bool)

(assert (=> d!2957 e!2040))

(declare-fun res!3350 () Bool)

(assert (=> d!2957 (=> (not res!3350) (not e!2040))))

(assert (=> d!2957 (= res!3350 (and true true (bvsle #b00000000000000000000000000000000 (_3!118 lt!2674)) (bvsle (_3!118 lt!2674) jz!53) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (_4!75 lt!2674)) (fp.leq (_4!75 lt!2674) (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!2957 (= lt!2674 e!2041)))

(declare-fun c!680 () Bool)

(assert (=> d!2957 (= c!680 (bvsgt lt!2673 #b00000000000000000000000000000000))))

(assert (=> d!2957 (= lt!2673 (bvsub jz!53 #b00000000000000000000000000000001))))

(declare-fun lt!2672 () (_ FloatingPoint 11 53))

(assert (=> d!2957 (= lt!2671 (fp.add roundNearestTiesToEven (select (arr!111 q!85) (bvsub jz!53 #b00000000000000000000000000000001)) lt!2672))))

(assert (=> d!2957 (= lt!2670 (array!255 (store (arr!112 lt!2659) (bvsub jz!53 jz!53) (ite (fp.isNaN (fp.sub roundNearestTiesToEven lt!2655 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!2672))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven lt!2655 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!2672)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven lt!2655 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!2672)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven lt!2655 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!2672))))))) (size!112 lt!2659)))))

(assert (=> d!2957 (= lt!2672 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!2655)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!2655) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!2655) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!2655)))))))))

(assert (=> d!2957 e!2039))

(declare-fun res!3352 () Bool)

(assert (=> d!2957 (=> (not res!3352) (not e!2039))))

(assert (=> d!2957 (= res!3352 (and (bvsle #b00000000000000000000000000000000 jz!53) (bvsle jz!53 jz!53) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2655) (fp.leq lt!2655 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!2957 (= (computeModuloWhile!0 jz!53 q!85 lt!2659 jz!53 lt!2655) lt!2674)))

(declare-fun b!4300 () Bool)

(assert (=> b!4300 (= e!2041 (computeModuloWhile!0 jz!53 q!85 lt!2670 lt!2673 lt!2671))))

(declare-fun b!4301 () Bool)

(declare-fun res!3349 () Bool)

(assert (=> b!4301 (=> (not res!3349) (not e!2040))))

(assert (=> b!4301 (= res!3349 (iqInv!0 (_2!130 lt!2674)))))

(assert (= (and d!2957 res!3352) b!4296))

(assert (= (and b!4296 res!3351) b!4298))

(assert (= (and d!2957 c!680) b!4300))

(assert (= (and d!2957 (not c!680)) b!4299))

(assert (= (and d!2957 res!3350) b!4301))

(assert (= (and b!4301 res!3349) b!4297))

(declare-fun m!7077 () Bool)

(assert (=> b!4296 m!7077))

(declare-fun m!7079 () Bool)

(assert (=> d!2957 m!7079))

(declare-fun m!7081 () Bool)

(assert (=> d!2957 m!7081))

(declare-fun m!7083 () Bool)

(assert (=> b!4300 m!7083))

(declare-fun m!7085 () Bool)

(assert (=> b!4301 m!7085))

(assert (=> b!4272 d!2957))

(declare-fun d!2959 () Bool)

(assert (=> d!2959 (= (QInt!0 lt!2656) (and (bvsle #b00000000000000000000000000000000 lt!2656) (bvsle lt!2656 #b00000000111111111111111111111111)))))

(assert (=> b!4273 d!2959))

(declare-fun d!2961 () Bool)

(assert (=> d!2961 (= (array_inv!61 iq!165) (bvsge (size!112 iq!165) #b00000000000000000000000000000000))))

(assert (=> start!905 d!2961))

(declare-fun d!2963 () Bool)

(assert (=> d!2963 (= (array_inv!62 q!85) (bvsge (size!111 q!85) #b00000000000000000000000000000000))))

(assert (=> start!905 d!2963))

(push 1)

(assert (not b!4300))

(assert (not b!4296))

(assert (not b!4283))

(assert (not b!4301))

(assert (not b!4280))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

