; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!931 () Bool)

(assert start!931)

(declare-fun b!4210 () Bool)

(declare-fun e!2059 () Bool)

(declare-fun e!2057 () Bool)

(assert (=> b!4210 (= e!2059 e!2057)))

(declare-fun res!3258 () Bool)

(assert (=> b!4210 (=> (not res!3258) (not e!2057))))

(declare-fun lt!2685 () (_ FloatingPoint 11 53))

(declare-fun jz!53 () (_ BitVec 32))

(declare-datatypes ((Unit!331 0))(
  ( (Unit!332) )
))
(declare-datatypes ((array!264 0))(
  ( (array!265 (arr!115 (Array (_ BitVec 32) (_ BitVec 32))) (size!115 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!154 0))(
  ( (tuple4!155 (_1!132 Unit!331) (_2!132 array!264) (_3!120 (_ BitVec 32)) (_4!77 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!2684 () tuple4!154)

(declare-fun i!252 () (_ BitVec 32))

(assert (=> b!4210 (= res!3258 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2685) (fp.lt lt!2685 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!115 (_2!132 lt!2684)) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!252) (bvsle i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!4210 (= lt!2685 (fp.sub roundNearestTiesToEven (_4!77 lt!2684) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!77 lt!2684) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!77 lt!2684) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!77 lt!2684) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!77 lt!2684) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(declare-fun e!2058 () tuple4!154)

(assert (=> b!4210 (= lt!2684 e!2058)))

(declare-fun c!683 () Bool)

(assert (=> b!4210 (= c!683 (bvsgt jz!53 #b00000000000000000000000000000000))))

(declare-fun lt!2686 () (_ FloatingPoint 11 53))

(declare-datatypes ((array!266 0))(
  ( (array!267 (arr!116 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!116 (_ BitVec 32))) )
))
(declare-fun q!85 () array!266)

(assert (=> b!4210 (= lt!2686 (select (arr!116 q!85) jz!53))))

(declare-fun lt!2687 () array!264)

(assert (=> b!4210 (= lt!2687 (array!265 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!4211 () Bool)

(declare-fun Unit!333 () Unit!331)

(assert (=> b!4211 (= e!2058 (tuple4!155 Unit!333 lt!2687 jz!53 lt!2686))))

(declare-fun b!4212 () Bool)

(declare-fun res!3257 () Bool)

(assert (=> b!4212 (=> (not res!3257) (not e!2057))))

(declare-fun iq!165 () array!264)

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!4212 (= res!3257 (QInt!0 (select (arr!115 iq!165) i!252)))))

(declare-fun b!4213 () Bool)

(declare-fun res!3262 () Bool)

(assert (=> b!4213 (=> (not res!3262) (not e!2059))))

(declare-fun qInv!0 (array!266) Bool)

(assert (=> b!4213 (= res!3262 (qInv!0 q!85))))

(declare-fun b!4214 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!266 array!264 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!154)

(assert (=> b!4214 (= e!2058 (computeModuloWhile!0 jz!53 q!85 lt!2687 jz!53 lt!2686))))

(declare-fun b!4215 () Bool)

(assert (=> b!4215 (= e!2057 (or (bvslt i!252 #b00000000000000000000000000000000) (bvsge i!252 (size!115 iq!165))))))

(declare-fun res!3261 () Bool)

(assert (=> start!931 (=> (not res!3261) (not e!2059))))

(assert (=> start!931 (= res!3261 (and (bvsle #b00000000000000000000000000000010 jz!53) (bvslt jz!53 #b00000000000000000000000000010011)))))

(assert (=> start!931 e!2059))

(assert (=> start!931 true))

(declare-fun array_inv!65 (array!264) Bool)

(assert (=> start!931 (array_inv!65 iq!165)))

(declare-fun array_inv!66 (array!266) Bool)

(assert (=> start!931 (array_inv!66 q!85)))

(declare-fun b!4216 () Bool)

(declare-fun res!3260 () Bool)

(assert (=> b!4216 (=> (not res!3260) (not e!2057))))

(declare-fun iqInv!0 (array!264) Bool)

(assert (=> b!4216 (= res!3260 (iqInv!0 iq!165))))

(declare-fun b!4217 () Bool)

(declare-fun res!3259 () Bool)

(assert (=> b!4217 (=> (not res!3259) (not e!2057))))

(declare-fun carry!58 () (_ BitVec 32))

(assert (=> b!4217 (= res!3259 (and (bvsge (select (arr!115 iq!165) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!58 #b00000000000000000000000000000000) (= carry!58 #b00000000000000000000000000000001)) (bvslt i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (= (and start!931 res!3261) b!4213))

(assert (= (and b!4213 res!3262) b!4210))

(assert (= (and b!4210 c!683) b!4214))

(assert (= (and b!4210 (not c!683)) b!4211))

(assert (= (and b!4210 res!3258) b!4216))

(assert (= (and b!4216 res!3260) b!4217))

(assert (= (and b!4217 res!3259) b!4212))

(assert (= (and b!4212 res!3257) b!4215))

(declare-fun m!6331 () Bool)

(assert (=> start!931 m!6331))

(declare-fun m!6333 () Bool)

(assert (=> start!931 m!6333))

(declare-fun m!6335 () Bool)

(assert (=> b!4210 m!6335))

(declare-fun m!6337 () Bool)

(assert (=> b!4210 m!6337))

(declare-fun m!6339 () Bool)

(assert (=> b!4212 m!6339))

(assert (=> b!4212 m!6339))

(declare-fun m!6341 () Bool)

(assert (=> b!4212 m!6341))

(declare-fun m!6343 () Bool)

(assert (=> b!4214 m!6343))

(declare-fun m!6345 () Bool)

(assert (=> b!4217 m!6345))

(declare-fun m!6347 () Bool)

(assert (=> b!4213 m!6347))

(declare-fun m!6349 () Bool)

(assert (=> b!4216 m!6349))

(check-sat (not b!4216) (not start!931) (not b!4212) (not b!4214) (not b!4213))
(check-sat)
(get-model)

(declare-fun d!2427 () Bool)

(declare-fun res!3265 () Bool)

(declare-fun e!2062 () Bool)

(assert (=> d!2427 (=> (not res!3265) (not e!2062))))

(assert (=> d!2427 (= res!3265 (= (size!115 iq!165) #b00000000000000000000000000010100))))

(assert (=> d!2427 (= (iqInv!0 iq!165) e!2062)))

(declare-fun b!4220 () Bool)

(declare-fun lambda!181 () Int)

(declare-fun all20Int!0 (array!264 Int) Bool)

(assert (=> b!4220 (= e!2062 (all20Int!0 iq!165 lambda!181))))

(assert (= (and d!2427 res!3265) b!4220))

(declare-fun m!6351 () Bool)

(assert (=> b!4220 m!6351))

(assert (=> b!4216 d!2427))

(declare-fun d!2429 () Bool)

(assert (=> d!2429 (= (QInt!0 (select (arr!115 iq!165) i!252)) (and (bvsle #b00000000000000000000000000000000 (select (arr!115 iq!165) i!252)) (bvsle (select (arr!115 iq!165) i!252) #b00000000111111111111111111111111)))))

(assert (=> b!4212 d!2429))

(declare-fun d!2431 () Bool)

(declare-fun res!3268 () Bool)

(declare-fun e!2065 () Bool)

(assert (=> d!2431 (=> (not res!3268) (not e!2065))))

(assert (=> d!2431 (= res!3268 (= (size!116 q!85) #b00000000000000000000000000010100))))

(assert (=> d!2431 (= (qInv!0 q!85) e!2065)))

(declare-fun b!4223 () Bool)

(declare-fun lambda!184 () Int)

(declare-fun all20!0 (array!266 Int) Bool)

(assert (=> b!4223 (= e!2065 (all20!0 q!85 lambda!184))))

(assert (= (and d!2431 res!3268) b!4223))

(declare-fun m!6353 () Bool)

(assert (=> b!4223 m!6353))

(assert (=> b!4213 d!2431))

(declare-fun b!4236 () Bool)

(declare-fun e!2074 () Bool)

(declare-fun lt!2698 () tuple4!154)

(assert (=> b!4236 (= e!2074 (bvsle (_3!120 lt!2698) #b00000000000000000000000000000000))))

(declare-fun b!4237 () Bool)

(declare-fun res!3279 () Bool)

(assert (=> b!4237 (=> (not res!3279) (not e!2074))))

(assert (=> b!4237 (= res!3279 (iqInv!0 (_2!132 lt!2698)))))

(declare-fun d!2433 () Bool)

(assert (=> d!2433 e!2074))

(declare-fun res!3278 () Bool)

(assert (=> d!2433 (=> (not res!3278) (not e!2074))))

(assert (=> d!2433 (= res!3278 (and true true (bvsle #b00000000000000000000000000000000 (_3!120 lt!2698)) (bvsle (_3!120 lt!2698) jz!53) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (_4!77 lt!2698)) (fp.leq (_4!77 lt!2698) (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(declare-fun e!2073 () tuple4!154)

(assert (=> d!2433 (= lt!2698 e!2073)))

(declare-fun c!686 () Bool)

(declare-fun lt!2700 () (_ BitVec 32))

(assert (=> d!2433 (= c!686 (bvsgt lt!2700 #b00000000000000000000000000000000))))

(assert (=> d!2433 (= lt!2700 (bvsub jz!53 #b00000000000000000000000000000001))))

(declare-fun lt!2701 () (_ FloatingPoint 11 53))

(declare-fun lt!2699 () (_ FloatingPoint 11 53))

(assert (=> d!2433 (= lt!2701 (fp.add roundNearestTiesToEven (select (arr!116 q!85) (bvsub jz!53 #b00000000000000000000000000000001)) lt!2699))))

(declare-fun lt!2702 () array!264)

(assert (=> d!2433 (= lt!2702 (array!265 (store (arr!115 lt!2687) (bvsub jz!53 jz!53) (ite (fp.isNaN (fp.sub roundNearestTiesToEven lt!2686 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!2699))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven lt!2686 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!2699)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven lt!2686 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!2699)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven lt!2686 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!2699))))))) (size!115 lt!2687)))))

(assert (=> d!2433 (= lt!2699 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!2686)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!2686) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!2686) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!2686)))))))))

(declare-fun e!2072 () Bool)

(assert (=> d!2433 e!2072))

(declare-fun res!3280 () Bool)

(assert (=> d!2433 (=> (not res!3280) (not e!2072))))

(assert (=> d!2433 (= res!3280 (and (bvsle #b00000000000000000000000000000000 jz!53) (bvsle jz!53 jz!53) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2686) (fp.leq lt!2686 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!2433 (= (computeModuloWhile!0 jz!53 q!85 lt!2687 jz!53 lt!2686) lt!2698)))

(declare-fun b!4238 () Bool)

(declare-fun res!3277 () Bool)

(assert (=> b!4238 (=> (not res!3277) (not e!2072))))

(assert (=> b!4238 (= res!3277 (iqInv!0 lt!2687))))

(declare-fun b!4239 () Bool)

(assert (=> b!4239 (= e!2073 (computeModuloWhile!0 jz!53 q!85 lt!2702 lt!2700 lt!2701))))

(declare-fun b!4240 () Bool)

(assert (=> b!4240 (= e!2072 (bvsgt jz!53 #b00000000000000000000000000000000))))

(declare-fun b!4241 () Bool)

(declare-fun Unit!334 () Unit!331)

(assert (=> b!4241 (= e!2073 (tuple4!155 Unit!334 lt!2702 lt!2700 lt!2701))))

(assert (= (and d!2433 res!3280) b!4238))

(assert (= (and b!4238 res!3277) b!4240))

(assert (= (and d!2433 c!686) b!4239))

(assert (= (and d!2433 (not c!686)) b!4241))

(assert (= (and d!2433 res!3278) b!4237))

(assert (= (and b!4237 res!3279) b!4236))

(declare-fun m!6355 () Bool)

(assert (=> b!4237 m!6355))

(declare-fun m!6357 () Bool)

(assert (=> d!2433 m!6357))

(declare-fun m!6359 () Bool)

(assert (=> d!2433 m!6359))

(declare-fun m!6361 () Bool)

(assert (=> b!4238 m!6361))

(declare-fun m!6363 () Bool)

(assert (=> b!4239 m!6363))

(assert (=> b!4214 d!2433))

(declare-fun d!2435 () Bool)

(assert (=> d!2435 (= (array_inv!65 iq!165) (bvsge (size!115 iq!165) #b00000000000000000000000000000000))))

(assert (=> start!931 d!2435))

(declare-fun d!2437 () Bool)

(assert (=> d!2437 (= (array_inv!66 q!85) (bvsge (size!116 q!85) #b00000000000000000000000000000000))))

(assert (=> start!931 d!2437))

(check-sat (not b!4237) (not b!4223) (not b!4239) (not b!4220) (not b!4238))
(check-sat)
