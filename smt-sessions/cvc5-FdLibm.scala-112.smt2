; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!919 () Bool)

(assert start!919)

(declare-fun b!4318 () Bool)

(declare-fun res!3369 () Bool)

(declare-fun e!2057 () Bool)

(assert (=> b!4318 (=> (not res!3369) (not e!2057))))

(declare-datatypes ((array!258 0))(
  ( (array!259 (arr!113 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!113 (_ BitVec 32))) )
))
(declare-fun q!85 () array!258)

(declare-fun qInv!0 (array!258) Bool)

(assert (=> b!4318 (= res!3369 (qInv!0 q!85))))

(declare-fun b!4319 () Bool)

(declare-fun jz!53 () (_ BitVec 32))

(declare-datatypes ((Unit!333 0))(
  ( (Unit!334) )
))
(declare-datatypes ((array!260 0))(
  ( (array!261 (arr!114 (Array (_ BitVec 32) (_ BitVec 32))) (size!114 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!152 0))(
  ( (tuple4!153 (_1!131 Unit!333) (_2!131 array!260) (_3!119 (_ BitVec 32)) (_4!76 (_ FloatingPoint 11 53))) )
))
(declare-fun e!2054 () tuple4!152)

(declare-fun lt!2685 () array!260)

(declare-fun lt!2688 () (_ FloatingPoint 11 53))

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!258 array!260 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!152)

(assert (=> b!4319 (= e!2054 (computeModuloWhile!0 jz!53 q!85 lt!2685 jz!53 lt!2688))))

(declare-fun b!4320 () Bool)

(declare-fun e!2058 () Bool)

(assert (=> b!4320 (= e!2057 e!2058)))

(declare-fun res!3370 () Bool)

(assert (=> b!4320 (=> (not res!3370) (not e!2058))))

(declare-fun lt!2689 () (_ FloatingPoint 11 53))

(declare-fun lt!2686 () tuple4!152)

(declare-fun i!252 () (_ BitVec 32))

(assert (=> b!4320 (= res!3370 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2689) (fp.lt lt!2689 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!114 (_2!131 lt!2686)) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!252) (bvsle i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!4320 (= lt!2689 (fp.sub roundNearestTiesToEven (_4!76 lt!2686) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!76 lt!2686) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!76 lt!2686) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!76 lt!2686) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!76 lt!2686) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!4320 (= lt!2686 e!2054)))

(declare-fun c!683 () Bool)

(assert (=> b!4320 (= c!683 (bvsgt jz!53 #b00000000000000000000000000000000))))

(assert (=> b!4320 (= lt!2688 (select (arr!113 q!85) jz!53))))

(assert (=> b!4320 (= lt!2685 (array!261 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!4321 () Bool)

(declare-fun e!2059 () Bool)

(assert (=> b!4321 (= e!2058 e!2059)))

(declare-fun res!3366 () Bool)

(assert (=> b!4321 (=> (not res!3366) (not e!2059))))

(declare-fun lt!2687 () (_ BitVec 32))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!4321 (= res!3366 (QInt!0 lt!2687))))

(declare-fun iq!165 () array!260)

(assert (=> b!4321 (= lt!2687 (select (arr!114 iq!165) i!252))))

(declare-fun b!4322 () Bool)

(declare-fun Unit!335 () Unit!333)

(assert (=> b!4322 (= e!2054 (tuple4!153 Unit!335 lt!2685 jz!53 lt!2688))))

(declare-fun b!4323 () Bool)

(declare-fun res!3368 () Bool)

(assert (=> b!4323 (=> (not res!3368) (not e!2058))))

(declare-fun carry!58 () (_ BitVec 32))

(assert (=> b!4323 (= res!3368 (and (bvsge (select (arr!114 iq!165) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!58 #b00000000000000000000000000000000) (= carry!58 #b00000000000000000000000000000001)) (bvslt i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(declare-fun res!3367 () Bool)

(assert (=> start!919 (=> (not res!3367) (not e!2057))))

(assert (=> start!919 (= res!3367 (and (bvsle #b00000000000000000000000000000010 jz!53) (bvslt jz!53 #b00000000000000000000000000010011)))))

(assert (=> start!919 e!2057))

(assert (=> start!919 true))

(declare-fun array_inv!63 (array!260) Bool)

(assert (=> start!919 (array_inv!63 iq!165)))

(declare-fun array_inv!64 (array!258) Bool)

(assert (=> start!919 (array_inv!64 q!85)))

(declare-fun b!4324 () Bool)

(declare-fun res!3365 () Bool)

(assert (=> b!4324 (=> (not res!3365) (not e!2058))))

(declare-fun iqInv!0 (array!260) Bool)

(assert (=> b!4324 (= res!3365 (iqInv!0 iq!165))))

(declare-fun b!4325 () Bool)

(assert (=> b!4325 (= e!2059 (and (not (= carry!58 #b00000000000000000000000000000000)) (not (= #b00000000000000000000000000000000 (bvand lt!2687 #b10000000000000000000000000000000))) (not (= #b00000000000000000000000000000000 (bvand (bvsub #b00000000111111111111111111111111 lt!2687) #b10000000000000000000000000000000)))))))

(assert (= (and start!919 res!3367) b!4318))

(assert (= (and b!4318 res!3369) b!4320))

(assert (= (and b!4320 c!683) b!4319))

(assert (= (and b!4320 (not c!683)) b!4322))

(assert (= (and b!4320 res!3370) b!4324))

(assert (= (and b!4324 res!3365) b!4323))

(assert (= (and b!4323 res!3368) b!4321))

(assert (= (and b!4321 res!3366) b!4325))

(declare-fun m!7087 () Bool)

(assert (=> b!4321 m!7087))

(declare-fun m!7089 () Bool)

(assert (=> b!4321 m!7089))

(declare-fun m!7091 () Bool)

(assert (=> b!4319 m!7091))

(declare-fun m!7093 () Bool)

(assert (=> b!4320 m!7093))

(declare-fun m!7095 () Bool)

(assert (=> b!4320 m!7095))

(declare-fun m!7097 () Bool)

(assert (=> start!919 m!7097))

(declare-fun m!7099 () Bool)

(assert (=> start!919 m!7099))

(declare-fun m!7101 () Bool)

(assert (=> b!4324 m!7101))

(declare-fun m!7103 () Bool)

(assert (=> b!4318 m!7103))

(declare-fun m!7105 () Bool)

(assert (=> b!4323 m!7105))

(push 1)

(assert (not start!919))

(assert (not b!4319))

(assert (not b!4324))

(assert (not b!4318))

(assert (not b!4321))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2966 () Bool)

(declare-fun res!3373 () Bool)

(declare-fun e!2062 () Bool)

(assert (=> d!2966 (=> (not res!3373) (not e!2062))))

(assert (=> d!2966 (= res!3373 (= (size!114 iq!165) #b00000000000000000000000000010100))))

(assert (=> d!2966 (= (iqInv!0 iq!165) e!2062)))

(declare-fun b!4328 () Bool)

(declare-fun lambda!183 () Int)

(declare-fun all20Int!0 (array!260 Int) Bool)

(assert (=> b!4328 (= e!2062 (all20Int!0 iq!165 lambda!183))))

(assert (= (and d!2966 res!3373) b!4328))

(declare-fun m!7107 () Bool)

(assert (=> b!4328 m!7107))

(assert (=> b!4324 d!2966))

(declare-fun b!4341 () Bool)

(declare-fun res!3385 () Bool)

(declare-fun e!2069 () Bool)

(assert (=> b!4341 (=> (not res!3385) (not e!2069))))

(assert (=> b!4341 (= res!3385 (iqInv!0 lt!2685))))

(declare-fun lt!2703 () (_ FloatingPoint 11 53))

(declare-fun e!2070 () tuple4!152)

(declare-fun lt!2704 () (_ BitVec 32))

(declare-fun b!4342 () Bool)

(declare-fun lt!2700 () array!260)

(declare-fun Unit!336 () Unit!333)

(assert (=> b!4342 (= e!2070 (tuple4!153 Unit!336 lt!2700 lt!2704 lt!2703))))

(declare-fun b!4343 () Bool)

(assert (=> b!4343 (= e!2069 (bvsgt jz!53 #b00000000000000000000000000000000))))

(declare-fun b!4344 () Bool)

(declare-fun e!2071 () Bool)

(declare-fun lt!2702 () tuple4!152)

(assert (=> b!4344 (= e!2071 (bvsle (_3!119 lt!2702) #b00000000000000000000000000000000))))

(declare-fun d!2968 () Bool)

(assert (=> d!2968 e!2071))

(declare-fun res!3384 () Bool)

(assert (=> d!2968 (=> (not res!3384) (not e!2071))))

(assert (=> d!2968 (= res!3384 (and true true (bvsle #b00000000000000000000000000000000 (_3!119 lt!2702)) (bvsle (_3!119 lt!2702) jz!53) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (_4!76 lt!2702)) (fp.leq (_4!76 lt!2702) (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!2968 (= lt!2702 e!2070)))

(declare-fun c!686 () Bool)

(assert (=> d!2968 (= c!686 (bvsgt lt!2704 #b00000000000000000000000000000000))))

(assert (=> d!2968 (= lt!2704 (bvsub jz!53 #b00000000000000000000000000000001))))

(declare-fun lt!2701 () (_ FloatingPoint 11 53))

(assert (=> d!2968 (= lt!2703 (fp.add roundNearestTiesToEven (select (arr!113 q!85) (bvsub jz!53 #b00000000000000000000000000000001)) lt!2701))))

(assert (=> d!2968 (= lt!2700 (array!261 (store (arr!114 lt!2685) (bvsub jz!53 jz!53) (ite (fp.isNaN (fp.sub roundNearestTiesToEven lt!2688 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!2701))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven lt!2688 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!2701)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven lt!2688 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!2701)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven lt!2688 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!2701))))))) (size!114 lt!2685)))))

(assert (=> d!2968 (= lt!2701 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!2688)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!2688) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!2688) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!2688)))))))))

(assert (=> d!2968 e!2069))

(declare-fun res!3383 () Bool)

(assert (=> d!2968 (=> (not res!3383) (not e!2069))))

(assert (=> d!2968 (= res!3383 (and (bvsle #b00000000000000000000000000000000 jz!53) (bvsle jz!53 jz!53) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2688) (fp.leq lt!2688 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!2968 (= (computeModuloWhile!0 jz!53 q!85 lt!2685 jz!53 lt!2688) lt!2702)))

(declare-fun b!4345 () Bool)

(declare-fun res!3382 () Bool)

(assert (=> b!4345 (=> (not res!3382) (not e!2071))))

(assert (=> b!4345 (= res!3382 (iqInv!0 (_2!131 lt!2702)))))

(declare-fun b!4346 () Bool)

(assert (=> b!4346 (= e!2070 (computeModuloWhile!0 jz!53 q!85 lt!2700 lt!2704 lt!2703))))

(assert (= (and d!2968 res!3383) b!4341))

(assert (= (and b!4341 res!3385) b!4343))

(assert (= (and d!2968 c!686) b!4346))

(assert (= (and d!2968 (not c!686)) b!4342))

(assert (= (and d!2968 res!3384) b!4345))

(assert (= (and b!4345 res!3382) b!4344))

(declare-fun m!7109 () Bool)

(assert (=> b!4341 m!7109))

(declare-fun m!7111 () Bool)

(assert (=> d!2968 m!7111))

(declare-fun m!7113 () Bool)

(assert (=> d!2968 m!7113))

(declare-fun m!7115 () Bool)

(assert (=> b!4345 m!7115))

(declare-fun m!7117 () Bool)

(assert (=> b!4346 m!7117))

(assert (=> b!4319 d!2968))

(declare-fun d!2970 () Bool)

(assert (=> d!2970 (= (QInt!0 lt!2687) (and (bvsle #b00000000000000000000000000000000 lt!2687) (bvsle lt!2687 #b00000000111111111111111111111111)))))

(assert (=> b!4321 d!2970))

(declare-fun d!2972 () Bool)

(assert (=> d!2972 (= (array_inv!63 iq!165) (bvsge (size!114 iq!165) #b00000000000000000000000000000000))))

(assert (=> start!919 d!2972))

(declare-fun d!2974 () Bool)

(assert (=> d!2974 (= (array_inv!64 q!85) (bvsge (size!113 q!85) #b00000000000000000000000000000000))))

(assert (=> start!919 d!2974))

(declare-fun d!2976 () Bool)

(declare-fun res!3388 () Bool)

(declare-fun e!2074 () Bool)

(assert (=> d!2976 (=> (not res!3388) (not e!2074))))

(assert (=> d!2976 (= res!3388 (= (size!113 q!85) #b00000000000000000000000000010100))))

(assert (=> d!2976 (= (qInv!0 q!85) e!2074)))

(declare-fun b!4349 () Bool)

(declare-fun lambda!186 () Int)

(declare-fun all20!0 (array!258 Int) Bool)

(assert (=> b!4349 (= e!2074 (all20!0 q!85 lambda!186))))

(assert (= (and d!2976 res!3388) b!4349))

(declare-fun m!7119 () Bool)

(assert (=> b!4349 m!7119))

(assert (=> b!4318 d!2976))

(push 1)

(assert (not b!4346))

(assert (not b!4328))

(assert (not b!4349))

(assert (not b!4341))

(assert (not b!4345))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

