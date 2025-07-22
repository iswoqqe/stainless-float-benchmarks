; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!887 () Bool)

(assert start!887)

(declare-fun b!4171 () Bool)

(declare-fun res!3259 () Bool)

(declare-fun e!1948 () Bool)

(assert (=> b!4171 (=> (not res!3259) (not e!1948))))

(declare-datatypes ((array!234 0))(
  ( (array!235 (arr!103 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!103 (_ BitVec 32))) )
))
(declare-fun q!85 () array!234)

(declare-fun qInv!0 (array!234) Bool)

(assert (=> b!4171 (= res!3259 (qInv!0 q!85))))

(declare-fun b!4172 () Bool)

(declare-fun e!1945 () Bool)

(assert (=> b!4172 (= e!1948 e!1945)))

(declare-fun res!3262 () Bool)

(assert (=> b!4172 (=> (not res!3262) (not e!1945))))

(declare-fun i!252 () (_ BitVec 32))

(declare-datatypes ((Unit!316 0))(
  ( (Unit!317) )
))
(declare-datatypes ((array!236 0))(
  ( (array!237 (arr!104 (Array (_ BitVec 32) (_ BitVec 32))) (size!104 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!142 0))(
  ( (tuple4!143 (_1!126 Unit!316) (_2!126 array!236) (_3!114 (_ BitVec 32)) (_4!71 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!2591 () tuple4!142)

(declare-fun lt!2593 () (_ FloatingPoint 11 53))

(declare-fun jz!53 () (_ BitVec 32))

(assert (=> b!4172 (= res!3262 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2593) (fp.lt lt!2593 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!104 (_2!126 lt!2591)) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!252) (bvsle i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!4172 (= lt!2593 (fp.sub roundNearestTiesToEven (_4!71 lt!2591) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!71 lt!2591) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!71 lt!2591) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!71 lt!2591) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!71 lt!2591) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(declare-fun e!1944 () tuple4!142)

(assert (=> b!4172 (= lt!2591 e!1944)))

(declare-fun c!662 () Bool)

(assert (=> b!4172 (= c!662 (bvsgt jz!53 #b00000000000000000000000000000000))))

(declare-fun lt!2590 () (_ FloatingPoint 11 53))

(assert (=> b!4172 (= lt!2590 (select (arr!103 q!85) jz!53))))

(declare-fun lt!2592 () array!236)

(assert (=> b!4172 (= lt!2592 (array!237 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!4173 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!234 array!236 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!142)

(assert (=> b!4173 (= e!1944 (computeModuloWhile!0 jz!53 q!85 lt!2592 jz!53 lt!2590))))

(declare-fun res!3261 () Bool)

(assert (=> start!887 (=> (not res!3261) (not e!1948))))

(assert (=> start!887 (= res!3261 (and (bvsle #b00000000000000000000000000000010 jz!53) (bvslt jz!53 #b00000000000000000000000000010011)))))

(assert (=> start!887 e!1948))

(assert (=> start!887 true))

(declare-fun iq!165 () array!236)

(declare-fun array_inv!53 (array!236) Bool)

(assert (=> start!887 (array_inv!53 iq!165)))

(declare-fun array_inv!54 (array!234) Bool)

(assert (=> start!887 (array_inv!54 q!85)))

(declare-fun b!4170 () Bool)

(declare-fun carry!58 () (_ BitVec 32))

(assert (=> b!4170 (= e!1945 (and (bvsge (select (arr!104 iq!165) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!58 #b00000000000000000000000000000000) (= carry!58 #b00000000000000000000000000000001)) (not (= (bvand jz!53 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!53 #b10000000000000000000000000000000) (bvand (bvsub jz!53 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun b!4174 () Bool)

(declare-fun Unit!318 () Unit!316)

(assert (=> b!4174 (= e!1944 (tuple4!143 Unit!318 lt!2592 jz!53 lt!2590))))

(declare-fun b!4175 () Bool)

(declare-fun res!3260 () Bool)

(assert (=> b!4175 (=> (not res!3260) (not e!1945))))

(declare-fun iqInv!0 (array!236) Bool)

(assert (=> b!4175 (= res!3260 (iqInv!0 iq!165))))

(assert (= (and start!887 res!3261) b!4171))

(assert (= (and b!4171 res!3259) b!4172))

(assert (= (and b!4172 c!662) b!4173))

(assert (= (and b!4172 (not c!662)) b!4174))

(assert (= (and b!4172 res!3262) b!4175))

(assert (= (and b!4175 res!3260) b!4170))

(declare-fun m!6975 () Bool)

(assert (=> b!4172 m!6975))

(declare-fun m!6977 () Bool)

(assert (=> b!4172 m!6977))

(declare-fun m!6979 () Bool)

(assert (=> b!4170 m!6979))

(declare-fun m!6981 () Bool)

(assert (=> b!4175 m!6981))

(declare-fun m!6983 () Bool)

(assert (=> b!4173 m!6983))

(declare-fun m!6985 () Bool)

(assert (=> b!4171 m!6985))

(declare-fun m!6987 () Bool)

(assert (=> start!887 m!6987))

(declare-fun m!6989 () Bool)

(assert (=> start!887 m!6989))

(push 1)

(assert (not b!4173))

(assert (not start!887))

(assert (not b!4175))

(assert (not b!4171))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

