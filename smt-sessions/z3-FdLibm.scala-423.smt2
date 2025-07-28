; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2311 () Bool)

(assert start!2311)

(declare-fun b!12055 () Bool)

(declare-fun res!9494 () Bool)

(declare-fun e!6842 () Bool)

(assert (=> b!12055 (=> (not res!9494) (not e!6842))))

(declare-datatypes ((array!888 0))(
  ( (array!889 (arr!389 (Array (_ BitVec 32) (_ BitVec 32))) (size!389 (_ BitVec 32))) )
))
(declare-fun iq!194 () array!888)

(declare-fun iqInv!0 (array!888) Bool)

(assert (=> b!12055 (= res!9494 (iqInv!0 iq!194))))

(declare-fun b!12056 () Bool)

(declare-fun res!9489 () Bool)

(assert (=> b!12056 (=> (not res!9489) (not e!6842))))

(declare-datatypes ((array!890 0))(
  ( (array!891 (arr!390 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!390 (_ BitVec 32))) )
))
(declare-fun qq!48 () array!890)

(declare-fun qqInv!0 (array!890) Bool)

(assert (=> b!12056 (= res!9489 (qqInv!0 qq!48))))

(declare-datatypes ((Unit!1343 0))(
  ( (Unit!1344) )
))
(declare-datatypes ((tuple4!260 0))(
  ( (tuple4!261 (_1!303 Unit!1343) (_2!303 (_ BitVec 32)) (_3!240 array!888) (_4!130 (_ BitVec 32))) )
))
(declare-fun e!6845 () tuple4!260)

(declare-fun b!12057 () Bool)

(declare-fun q!93 () array!890)

(declare-fun jz!59 () (_ BitVec 32))

(declare-fun lt!6255 () (_ BitVec 32))

(declare-fun lt!6258 () (_ BitVec 32))

(declare-datatypes ((tuple4!262 0))(
  ( (tuple4!263 (_1!304 Unit!1343) (_2!304 array!888) (_3!241 (_ BitVec 32)) (_4!131 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!6262 () tuple4!262)

(declare-fun computeModuloWhile!3 ((_ BitVec 32) array!890 (_ BitVec 32) array!888 (_ BitVec 32)) tuple4!260)

(assert (=> b!12057 (= e!6845 (computeModuloWhile!3 jz!59 q!93 lt!6258 (_2!304 lt!6262) lt!6255))))

(declare-fun b!12058 () Bool)

(declare-fun lt!6259 () (_ FloatingPoint 11 53))

(declare-fun e!6840 () tuple4!262)

(declare-fun lt!6260 () array!888)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!890 array!888 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!262)

(assert (=> b!12058 (= e!6840 (computeModuloWhile!0 jz!59 q!93 lt!6260 jz!59 lt!6259))))

(declare-fun b!12059 () Bool)

(declare-fun e!6844 () Bool)

(declare-fun e!6843 () Bool)

(assert (=> b!12059 (= e!6844 e!6843)))

(declare-fun res!9492 () Bool)

(assert (=> b!12059 (=> (not res!9492) (not e!6843))))

(declare-fun lt!6261 () (_ FloatingPoint 11 53))

(assert (=> b!12059 (= res!9492 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!6261) (fp.lt lt!6261 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> b!12059 (= lt!6261 (fp.sub roundNearestTiesToEven (_4!131 lt!6262) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!131 lt!6262) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!131 lt!6262) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!131 lt!6262) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!131 lt!6262) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!12059 (= lt!6262 e!6840)))

(declare-fun c!1496 () Bool)

(assert (=> b!12059 (= c!1496 (bvsgt jz!59 #b00000000000000000000000000000000))))

(assert (=> b!12059 (= lt!6259 (select (arr!390 q!93) jz!59))))

(assert (=> b!12059 (= lt!6260 (array!889 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun res!9495 () Bool)

(assert (=> start!2311 (=> (not res!9495) (not e!6844))))

(assert (=> start!2311 (= res!9495 (and (bvsle #b00000000000000000000000000000010 jz!59) (bvslt jz!59 #b00000000000000000000000000010011)))))

(assert (=> start!2311 e!6844))

(assert (=> start!2311 true))

(declare-fun array_inv!338 (array!888) Bool)

(assert (=> start!2311 (array_inv!338 iq!194)))

(declare-fun array_inv!339 (array!890) Bool)

(assert (=> start!2311 (array_inv!339 qq!48)))

(assert (=> start!2311 (array_inv!339 q!93)))

(declare-fun b!12060 () Bool)

(declare-fun Unit!1345 () Unit!1343)

(assert (=> b!12060 (= e!6845 (tuple4!261 Unit!1345 lt!6258 (_2!304 lt!6262) lt!6255))))

(declare-fun b!12061 () Bool)

(assert (=> b!12061 (= e!6843 e!6842)))

(declare-fun res!9491 () Bool)

(assert (=> b!12061 (=> (not res!9491) (not e!6842))))

(declare-datatypes ((tuple3!220 0))(
  ( (tuple3!221 (_1!305 Unit!1343) (_2!305 array!888) (_3!242 (_ BitVec 32))) )
))
(declare-fun lt!6263 () tuple3!220)

(declare-fun i!271 () (_ BitVec 32))

(declare-fun lt!6264 () Bool)

(assert (=> b!12061 (= res!9491 (and (bvsle #b00000000000000000000000000000000 (select (arr!389 (_2!305 lt!6263)) (bvsub jz!59 #b00000000000000000000000000000001))) (bvsle (select (arr!389 (_2!305 lt!6263)) (bvsub jz!59 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (not lt!6264) (not (= (_3!242 lt!6263) #b00000000000000000000000000000000)) (not (= (select (arr!389 (_2!305 lt!6263)) (bvsub jz!59 #b00000000000000000000000000000001)) #b00000000100000000000000000000000))) (bvsle (select (arr!389 (_2!305 lt!6263)) (bvsub jz!59 #b00000000000000000000000000000001)) #b00000000011111111111111111111111) (bvsle #b00000000000000000000000000000000 i!271) (bvsle i!271 jz!59)))))

(declare-fun e!6847 () tuple3!220)

(assert (=> b!12061 (= lt!6263 e!6847)))

(declare-fun c!1495 () Bool)

(assert (=> b!12061 (= c!1495 lt!6264)))

(assert (=> b!12061 (= lt!6255 #b00000000000000000000000000000000)))

(assert (=> b!12061 (= lt!6264 (bvsge (select (arr!389 (_2!304 lt!6262)) (bvsub jz!59 #b00000000000000000000000000000001)) #b00000000100000000000000000000000))))

(declare-fun b!12062 () Bool)

(declare-fun Unit!1346 () Unit!1343)

(assert (=> b!12062 (= e!6847 (tuple3!221 Unit!1346 (_2!304 lt!6262) lt!6255))))

(declare-fun b!12063 () Bool)

(declare-fun lt!6256 () (_ BitVec 32))

(declare-fun lt!6257 () tuple4!260)

(declare-fun Unit!1347 () Unit!1343)

(assert (=> b!12063 (= e!6847 (tuple3!221 Unit!1347 (array!889 (store (arr!389 (_3!240 lt!6257)) (bvsub jz!59 #b00000000000000000000000000000001) (ite (= (_4!130 lt!6257) #b00000000000000000000000000000000) (bvsub #b00000001000000000000000000000000 lt!6256) (bvsub #b00000000111111111111111111111111 lt!6256))) (size!389 (_3!240 lt!6257))) (_4!130 lt!6257)))))

(assert (=> b!12063 (= lt!6258 #b00000000000000000000000000000000)))

(declare-fun c!1494 () Bool)

(assert (=> b!12063 (= c!1494 (bvslt lt!6258 (bvsub jz!59 #b00000000000000000000000000000001)))))

(assert (=> b!12063 (= lt!6257 e!6845)))

(assert (=> b!12063 (= lt!6256 (select (arr!389 (_3!240 lt!6257)) (bvsub jz!59 #b00000000000000000000000000000001)))))

(declare-fun b!12064 () Bool)

(declare-fun res!9493 () Bool)

(assert (=> b!12064 (=> (not res!9493) (not e!6844))))

(declare-fun qInv!0 (array!890) Bool)

(assert (=> b!12064 (= res!9493 (qInv!0 q!93))))

(declare-fun b!12065 () Bool)

(assert (=> b!12065 (= e!6842 (and (bvslt i!271 jz!59) (let ((lhs!118 (bvsub jz!59 #b00000000000000000000000000000001))) (and (not (= (bvand lhs!118 #b10000000000000000000000000000000) (bvand i!271 #b10000000000000000000000000000000))) (not (= (bvand lhs!118 #b10000000000000000000000000000000) (bvand (bvsub lhs!118 i!271) #b10000000000000000000000000000000)))))))))

(declare-fun b!12066 () Bool)

(declare-fun Unit!1348 () Unit!1343)

(assert (=> b!12066 (= e!6840 (tuple4!263 Unit!1348 lt!6260 jz!59 lt!6259))))

(declare-fun b!12067 () Bool)

(declare-fun res!9490 () Bool)

(assert (=> b!12067 (=> (not res!9490) (not e!6842))))

(assert (=> b!12067 (= res!9490 (and (bvsle (select (arr!389 iq!194) (bvsub jz!59 #b00000000000000000000000000000001)) #b00000000011111111111111111111111) (= (size!390 qq!48) #b00000000000000000000000000010100)))))

(assert (= (and start!2311 res!9495) b!12064))

(assert (= (and b!12064 res!9493) b!12059))

(assert (= (and b!12059 c!1496) b!12058))

(assert (= (and b!12059 (not c!1496)) b!12066))

(assert (= (and b!12059 res!9492) b!12061))

(assert (= (and b!12061 c!1495) b!12063))

(assert (= (and b!12061 (not c!1495)) b!12062))

(assert (= (and b!12063 c!1494) b!12057))

(assert (= (and b!12063 (not c!1494)) b!12060))

(assert (= (and b!12061 res!9491) b!12055))

(assert (= (and b!12055 res!9494) b!12067))

(assert (= (and b!12067 res!9490) b!12056))

(assert (= (and b!12056 res!9489) b!12065))

(declare-fun m!18091 () Bool)

(assert (=> b!12056 m!18091))

(declare-fun m!18093 () Bool)

(assert (=> start!2311 m!18093))

(declare-fun m!18095 () Bool)

(assert (=> start!2311 m!18095))

(declare-fun m!18097 () Bool)

(assert (=> start!2311 m!18097))

(declare-fun m!18099 () Bool)

(assert (=> b!12057 m!18099))

(declare-fun m!18101 () Bool)

(assert (=> b!12067 m!18101))

(declare-fun m!18103 () Bool)

(assert (=> b!12059 m!18103))

(declare-fun m!18105 () Bool)

(assert (=> b!12061 m!18105))

(declare-fun m!18107 () Bool)

(assert (=> b!12061 m!18107))

(declare-fun m!18109 () Bool)

(assert (=> b!12064 m!18109))

(declare-fun m!18111 () Bool)

(assert (=> b!12063 m!18111))

(declare-fun m!18113 () Bool)

(assert (=> b!12063 m!18113))

(declare-fun m!18115 () Bool)

(assert (=> b!12058 m!18115))

(declare-fun m!18117 () Bool)

(assert (=> b!12055 m!18117))

(check-sat (not b!12056) (not b!12057) (not b!12058) (not start!2311) (not b!12055) (not b!12064))
(check-sat)
