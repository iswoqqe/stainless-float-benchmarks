; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1001 () Bool)

(assert start!1001)

(declare-fun b!4382 () Bool)

(declare-fun res!3328 () Bool)

(declare-fun e!2327 () Bool)

(assert (=> b!4382 (=> (not res!3328) (not e!2327))))

(declare-fun carry!58 () (_ BitVec 32))

(declare-fun i!252 () (_ BitVec 32))

(declare-datatypes ((array!320 0))(
  ( (array!321 (arr!139 (Array (_ BitVec 32) (_ BitVec 32))) (size!139 (_ BitVec 32))) )
))
(declare-fun iq!165 () array!320)

(declare-fun jz!53 () (_ BitVec 32))

(assert (=> b!4382 (= res!3328 (and (bvsge (select (arr!139 iq!165) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!58 #b00000000000000000000000000000000) (= carry!58 #b00000000000000000000000000000001)) (bvslt i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(declare-fun b!4383 () Bool)

(declare-fun res!3325 () Bool)

(assert (=> b!4383 (=> (not res!3325) (not e!2327))))

(declare-fun iqInv!0 (array!320) Bool)

(assert (=> b!4383 (= res!3325 (iqInv!0 iq!165))))

(declare-fun res!3327 () Bool)

(declare-fun e!2326 () Bool)

(assert (=> start!1001 (=> (not res!3327) (not e!2326))))

(assert (=> start!1001 (= res!3327 (and (bvsle #b00000000000000000000000000000010 jz!53) (bvslt jz!53 #b00000000000000000000000000010011)))))

(assert (=> start!1001 e!2326))

(assert (=> start!1001 true))

(declare-fun array_inv!89 (array!320) Bool)

(assert (=> start!1001 (array_inv!89 iq!165)))

(declare-datatypes ((array!322 0))(
  ( (array!323 (arr!140 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!140 (_ BitVec 32))) )
))
(declare-fun q!85 () array!322)

(declare-fun array_inv!90 (array!322) Bool)

(assert (=> start!1001 (array_inv!90 q!85)))

(declare-fun lt!2979 () array!320)

(declare-fun lt!2981 () (_ FloatingPoint 11 53))

(declare-datatypes ((Unit!363 0))(
  ( (Unit!364) )
))
(declare-datatypes ((tuple4!190 0))(
  ( (tuple4!191 (_1!150 Unit!363) (_2!150 array!320) (_3!138 (_ BitVec 32)) (_4!95 (_ FloatingPoint 11 53))) )
))
(declare-fun e!2330 () tuple4!190)

(declare-fun b!4384 () Bool)

(declare-fun Unit!365 () Unit!363)

(assert (=> b!4384 (= e!2330 (tuple4!191 Unit!365 lt!2979 jz!53 lt!2981))))

(declare-fun b!4385 () Bool)

(declare-fun res!3324 () Bool)

(declare-fun e!2329 () Bool)

(assert (=> b!4385 (=> (not res!3324) (not e!2329))))

(declare-fun lt!2980 () (_ BitVec 32))

(assert (=> b!4385 (= res!3324 (iqInv!0 (array!321 (store (arr!139 iq!165) i!252 (ite (= carry!58 #b00000000000000000000000000000000) (ite (not (= lt!2980 #b00000000000000000000000000000000)) (bvsub #b00000001000000000000000000000000 lt!2980) #b00000000000000000000000000000000) (bvsub #b00000000111111111111111111111111 lt!2980))) (size!139 iq!165))))))

(declare-fun b!4386 () Bool)

(declare-fun lt!2977 () (_ BitVec 32))

(assert (=> b!4386 (= e!2329 (or (bvslt lt!2977 #b00000000000000000000000000000000) (bvsge lt!2977 (size!139 iq!165))))))

(assert (=> b!4386 (= lt!2977 (bvsub jz!53 #b00000000000000000000000000000001))))

(declare-fun b!4387 () Bool)

(assert (=> b!4387 (= e!2326 e!2327)))

(declare-fun res!3323 () Bool)

(assert (=> b!4387 (=> (not res!3323) (not e!2327))))

(declare-fun lt!2976 () tuple4!190)

(declare-fun lt!2975 () (_ FloatingPoint 11 53))

(assert (=> b!4387 (= res!3323 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2975) (fp.lt lt!2975 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!139 (_2!150 lt!2976)) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!252) (bvsle i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!4387 (= lt!2975 (fp.sub roundNearestTiesToEven (_4!95 lt!2976) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!95 lt!2976) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!95 lt!2976) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!95 lt!2976) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!95 lt!2976) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!4387 (= lt!2976 e!2330)))

(declare-fun c!737 () Bool)

(assert (=> b!4387 (= c!737 (bvsgt jz!53 #b00000000000000000000000000000000))))

(assert (=> b!4387 (= lt!2981 (select (arr!140 q!85) jz!53))))

(assert (=> b!4387 (= lt!2979 (array!321 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!4388 () Bool)

(declare-fun e!2332 () Bool)

(assert (=> b!4388 (= e!2327 e!2332)))

(declare-fun res!3322 () Bool)

(assert (=> b!4388 (=> (not res!3322) (not e!2332))))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!4388 (= res!3322 (QInt!0 lt!2980))))

(assert (=> b!4388 (= lt!2980 (select (arr!139 iq!165) i!252))))

(declare-fun b!4389 () Bool)

(declare-fun res!3321 () Bool)

(assert (=> b!4389 (=> (not res!3321) (not e!2326))))

(declare-fun qInv!0 (array!322) Bool)

(assert (=> b!4389 (= res!3321 (qInv!0 q!85))))

(declare-fun b!4390 () Bool)

(assert (=> b!4390 (= e!2332 e!2329)))

(declare-fun res!3326 () Bool)

(assert (=> b!4390 (=> (not res!3326) (not e!2329))))

(declare-fun lt!2978 () (_ BitVec 32))

(assert (=> b!4390 (= res!3326 (and (bvsge lt!2978 (bvsub jz!53 #b00000000000000000000000000000001)) (bvsle #b00000000000000000000000000000000 lt!2978) (bvsle lt!2978 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!4390 (= lt!2978 (bvadd i!252 #b00000000000000000000000000000001))))

(declare-fun b!4391 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!322 array!320 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!190)

(assert (=> b!4391 (= e!2330 (computeModuloWhile!0 jz!53 q!85 lt!2979 jz!53 lt!2981))))

(assert (= (and start!1001 res!3327) b!4389))

(assert (= (and b!4389 res!3321) b!4387))

(assert (= (and b!4387 c!737) b!4391))

(assert (= (and b!4387 (not c!737)) b!4384))

(assert (= (and b!4387 res!3323) b!4383))

(assert (= (and b!4383 res!3325) b!4382))

(assert (= (and b!4382 res!3328) b!4388))

(assert (= (and b!4388 res!3322) b!4390))

(assert (= (and b!4390 res!3326) b!4385))

(assert (= (and b!4385 res!3324) b!4386))

(declare-fun m!5113 () Bool)

(assert (=> b!4391 m!5113))

(declare-fun m!5115 () Bool)

(assert (=> b!4385 m!5115))

(declare-fun m!5117 () Bool)

(assert (=> b!4385 m!5117))

(declare-fun m!5119 () Bool)

(assert (=> b!4387 m!5119))

(declare-fun m!5121 () Bool)

(assert (=> b!4387 m!5121))

(declare-fun m!5123 () Bool)

(assert (=> b!4383 m!5123))

(declare-fun m!5125 () Bool)

(assert (=> start!1001 m!5125))

(declare-fun m!5127 () Bool)

(assert (=> start!1001 m!5127))

(declare-fun m!5129 () Bool)

(assert (=> b!4389 m!5129))

(declare-fun m!5131 () Bool)

(assert (=> b!4382 m!5131))

(declare-fun m!5133 () Bool)

(assert (=> b!4388 m!5133))

(declare-fun m!5135 () Bool)

(assert (=> b!4388 m!5135))

(check-sat (not b!4391) (not b!4383) (not b!4388) (not start!1001) (not b!4389) (not b!4385))
(check-sat)
(get-model)

(declare-fun d!1801 () Bool)

(declare-fun res!3331 () Bool)

(declare-fun e!2335 () Bool)

(assert (=> d!1801 (=> (not res!3331) (not e!2335))))

(assert (=> d!1801 (= res!3331 (= (size!140 q!85) #b00000000000000000000000000010100))))

(assert (=> d!1801 (= (qInv!0 q!85) e!2335)))

(declare-fun b!4394 () Bool)

(declare-fun lambda!189 () Int)

(declare-fun all20!0 (array!322 Int) Bool)

(assert (=> b!4394 (= e!2335 (all20!0 q!85 lambda!189))))

(assert (= (and d!1801 res!3331) b!4394))

(declare-fun m!5137 () Bool)

(assert (=> b!4394 m!5137))

(assert (=> b!4389 d!1801))

(declare-fun e!2344 () tuple4!190)

(declare-fun b!4407 () Bool)

(declare-fun lt!2994 () array!320)

(declare-fun lt!2993 () (_ BitVec 32))

(declare-fun lt!2995 () (_ FloatingPoint 11 53))

(assert (=> b!4407 (= e!2344 (computeModuloWhile!0 jz!53 q!85 lt!2994 lt!2993 lt!2995))))

(declare-fun b!4408 () Bool)

(declare-fun e!2343 () Bool)

(declare-fun lt!2996 () tuple4!190)

(assert (=> b!4408 (= e!2343 (bvsle (_3!138 lt!2996) #b00000000000000000000000000000000))))

(declare-fun b!4409 () Bool)

(declare-fun Unit!366 () Unit!363)

(assert (=> b!4409 (= e!2344 (tuple4!191 Unit!366 lt!2994 lt!2993 lt!2995))))

(declare-fun b!4410 () Bool)

(declare-fun e!2342 () Bool)

(assert (=> b!4410 (= e!2342 (bvsgt jz!53 #b00000000000000000000000000000000))))

(declare-fun d!1803 () Bool)

(assert (=> d!1803 e!2343))

(declare-fun res!3342 () Bool)

(assert (=> d!1803 (=> (not res!3342) (not e!2343))))

(assert (=> d!1803 (= res!3342 (and true true (bvsle #b00000000000000000000000000000000 (_3!138 lt!2996)) (bvsle (_3!138 lt!2996) jz!53) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (_4!95 lt!2996)) (fp.leq (_4!95 lt!2996) (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!1803 (= lt!2996 e!2344)))

(declare-fun c!740 () Bool)

(assert (=> d!1803 (= c!740 (bvsgt lt!2993 #b00000000000000000000000000000000))))

(assert (=> d!1803 (= lt!2993 (bvsub jz!53 #b00000000000000000000000000000001))))

(declare-fun lt!2992 () (_ FloatingPoint 11 53))

(assert (=> d!1803 (= lt!2995 (fp.add roundNearestTiesToEven (select (arr!140 q!85) (bvsub jz!53 #b00000000000000000000000000000001)) lt!2992))))

(assert (=> d!1803 (= lt!2994 (array!321 (store (arr!139 lt!2979) (bvsub jz!53 jz!53) (ite (fp.isNaN (fp.sub roundNearestTiesToEven lt!2981 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!2992))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven lt!2981 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!2992)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven lt!2981 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!2992)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven lt!2981 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!2992))))))) (size!139 lt!2979)))))

(assert (=> d!1803 (= lt!2992 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!2981)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!2981) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!2981) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!2981)))))))))

(assert (=> d!1803 e!2342))

(declare-fun res!3343 () Bool)

(assert (=> d!1803 (=> (not res!3343) (not e!2342))))

(assert (=> d!1803 (= res!3343 (and (bvsle #b00000000000000000000000000000000 jz!53) (bvsle jz!53 jz!53) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2981) (fp.leq lt!2981 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!1803 (= (computeModuloWhile!0 jz!53 q!85 lt!2979 jz!53 lt!2981) lt!2996)))

(declare-fun b!4411 () Bool)

(declare-fun res!3340 () Bool)

(assert (=> b!4411 (=> (not res!3340) (not e!2343))))

(assert (=> b!4411 (= res!3340 (iqInv!0 (_2!150 lt!2996)))))

(declare-fun b!4412 () Bool)

(declare-fun res!3341 () Bool)

(assert (=> b!4412 (=> (not res!3341) (not e!2342))))

(assert (=> b!4412 (= res!3341 (iqInv!0 lt!2979))))

(assert (= (and d!1803 res!3343) b!4412))

(assert (= (and b!4412 res!3341) b!4410))

(assert (= (and d!1803 c!740) b!4407))

(assert (= (and d!1803 (not c!740)) b!4409))

(assert (= (and d!1803 res!3342) b!4411))

(assert (= (and b!4411 res!3340) b!4408))

(declare-fun m!5139 () Bool)

(assert (=> b!4407 m!5139))

(declare-fun m!5141 () Bool)

(assert (=> d!1803 m!5141))

(declare-fun m!5143 () Bool)

(assert (=> d!1803 m!5143))

(declare-fun m!5145 () Bool)

(assert (=> b!4411 m!5145))

(declare-fun m!5147 () Bool)

(assert (=> b!4412 m!5147))

(assert (=> b!4391 d!1803))

(declare-fun d!1805 () Bool)

(declare-fun res!3346 () Bool)

(declare-fun e!2347 () Bool)

(assert (=> d!1805 (=> (not res!3346) (not e!2347))))

(assert (=> d!1805 (= res!3346 (= (size!139 (array!321 (store (arr!139 iq!165) i!252 (ite (= carry!58 #b00000000000000000000000000000000) (ite (not (= lt!2980 #b00000000000000000000000000000000)) (bvsub #b00000001000000000000000000000000 lt!2980) #b00000000000000000000000000000000) (bvsub #b00000000111111111111111111111111 lt!2980))) (size!139 iq!165))) #b00000000000000000000000000010100))))

(assert (=> d!1805 (= (iqInv!0 (array!321 (store (arr!139 iq!165) i!252 (ite (= carry!58 #b00000000000000000000000000000000) (ite (not (= lt!2980 #b00000000000000000000000000000000)) (bvsub #b00000001000000000000000000000000 lt!2980) #b00000000000000000000000000000000) (bvsub #b00000000111111111111111111111111 lt!2980))) (size!139 iq!165))) e!2347)))

(declare-fun lambda!192 () Int)

(declare-fun b!4415 () Bool)

(declare-fun all20Int!0 (array!320 Int) Bool)

(assert (=> b!4415 (= e!2347 (all20Int!0 (array!321 (store (arr!139 iq!165) i!252 (ite (= carry!58 #b00000000000000000000000000000000) (ite (not (= lt!2980 #b00000000000000000000000000000000)) (bvsub #b00000001000000000000000000000000 lt!2980) #b00000000000000000000000000000000) (bvsub #b00000000111111111111111111111111 lt!2980))) (size!139 iq!165)) lambda!192))))

(assert (= (and d!1805 res!3346) b!4415))

(declare-fun m!5149 () Bool)

(assert (=> b!4415 m!5149))

(assert (=> b!4385 d!1805))

(declare-fun bs!697 () Bool)

(declare-fun b!4416 () Bool)

(assert (= bs!697 (and b!4416 b!4415)))

(declare-fun lambda!193 () Int)

(assert (=> bs!697 (= lambda!193 lambda!192)))

(declare-fun d!1807 () Bool)

(declare-fun res!3347 () Bool)

(declare-fun e!2348 () Bool)

(assert (=> d!1807 (=> (not res!3347) (not e!2348))))

(assert (=> d!1807 (= res!3347 (= (size!139 iq!165) #b00000000000000000000000000010100))))

(assert (=> d!1807 (= (iqInv!0 iq!165) e!2348)))

(assert (=> b!4416 (= e!2348 (all20Int!0 iq!165 lambda!193))))

(assert (= (and d!1807 res!3347) b!4416))

(declare-fun m!5151 () Bool)

(assert (=> b!4416 m!5151))

(assert (=> b!4383 d!1807))

(declare-fun d!1809 () Bool)

(assert (=> d!1809 (= (array_inv!89 iq!165) (bvsge (size!139 iq!165) #b00000000000000000000000000000000))))

(assert (=> start!1001 d!1809))

(declare-fun d!1811 () Bool)

(assert (=> d!1811 (= (array_inv!90 q!85) (bvsge (size!140 q!85) #b00000000000000000000000000000000))))

(assert (=> start!1001 d!1811))

(declare-fun d!1813 () Bool)

(assert (=> d!1813 (= (QInt!0 lt!2980) (and (bvsle #b00000000000000000000000000000000 lt!2980) (bvsle lt!2980 #b00000000111111111111111111111111)))))

(assert (=> b!4388 d!1813))

(check-sat (not b!4416) (not b!4394) (not b!4415) (not b!4411) (not b!4412) (not b!4407))
(check-sat)
