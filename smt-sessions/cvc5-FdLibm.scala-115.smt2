; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!949 () Bool)

(assert start!949)

(declare-fun b!4438 () Bool)

(declare-fun e!2133 () Bool)

(declare-fun jz!53 () (_ BitVec 32))

(assert (=> b!4438 (= e!2133 (and (not (= (bvand jz!53 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!53 #b10000000000000000000000000000000) (bvand (bvsub jz!53 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun b!4439 () Bool)

(declare-fun res!3456 () Bool)

(assert (=> b!4439 (=> (not res!3456) (not e!2133))))

(declare-fun carry!58 () (_ BitVec 32))

(declare-fun i!252 () (_ BitVec 32))

(declare-datatypes ((array!274 0))(
  ( (array!275 (arr!119 (Array (_ BitVec 32) (_ BitVec 32))) (size!119 (_ BitVec 32))) )
))
(declare-fun iq!165 () array!274)

(assert (=> b!4439 (= res!3456 (and (bvsge (select (arr!119 iq!165) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!58 #b00000000000000000000000000000000) (= carry!58 #b00000000000000000000000000000001)) (bvslt i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(declare-fun b!4440 () Bool)

(declare-fun res!3458 () Bool)

(assert (=> b!4440 (=> (not res!3458) (not e!2133))))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!4440 (= res!3458 (QInt!0 (select (arr!119 iq!165) i!252)))))

(declare-fun b!4441 () Bool)

(declare-fun e!2130 () Bool)

(assert (=> b!4441 (= e!2130 e!2133)))

(declare-fun res!3455 () Bool)

(assert (=> b!4441 (=> (not res!3455) (not e!2133))))

(declare-fun lt!2752 () (_ FloatingPoint 11 53))

(declare-datatypes ((Unit!344 0))(
  ( (Unit!345) )
))
(declare-datatypes ((tuple4!158 0))(
  ( (tuple4!159 (_1!134 Unit!344) (_2!134 array!274) (_3!122 (_ BitVec 32)) (_4!79 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!2753 () tuple4!158)

(assert (=> b!4441 (= res!3455 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2752) (fp.lt lt!2752 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!119 (_2!134 lt!2753)) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!252) (bvsle i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!4441 (= lt!2752 (fp.sub roundNearestTiesToEven (_4!79 lt!2753) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!79 lt!2753) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!79 lt!2753) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!79 lt!2753) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!79 lt!2753) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(declare-fun e!2132 () tuple4!158)

(assert (=> b!4441 (= lt!2753 e!2132)))

(declare-fun c!698 () Bool)

(assert (=> b!4441 (= c!698 (bvsgt jz!53 #b00000000000000000000000000000000))))

(declare-fun lt!2754 () (_ FloatingPoint 11 53))

(declare-datatypes ((array!276 0))(
  ( (array!277 (arr!120 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!120 (_ BitVec 32))) )
))
(declare-fun q!85 () array!276)

(assert (=> b!4441 (= lt!2754 (select (arr!120 q!85) jz!53))))

(declare-fun lt!2755 () array!274)

(assert (=> b!4441 (= lt!2755 (array!275 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun res!3457 () Bool)

(assert (=> start!949 (=> (not res!3457) (not e!2130))))

(assert (=> start!949 (= res!3457 (and (bvsle #b00000000000000000000000000000010 jz!53) (bvslt jz!53 #b00000000000000000000000000010011)))))

(assert (=> start!949 e!2130))

(assert (=> start!949 true))

(declare-fun array_inv!69 (array!274) Bool)

(assert (=> start!949 (array_inv!69 iq!165)))

(declare-fun array_inv!70 (array!276) Bool)

(assert (=> start!949 (array_inv!70 q!85)))

(declare-fun b!4442 () Bool)

(declare-fun Unit!346 () Unit!344)

(assert (=> b!4442 (= e!2132 (tuple4!159 Unit!346 lt!2755 jz!53 lt!2754))))

(declare-fun b!4443 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!276 array!274 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!158)

(assert (=> b!4443 (= e!2132 (computeModuloWhile!0 jz!53 q!85 lt!2755 jz!53 lt!2754))))

(declare-fun b!4444 () Bool)

(declare-fun res!3459 () Bool)

(assert (=> b!4444 (=> (not res!3459) (not e!2130))))

(declare-fun qInv!0 (array!276) Bool)

(assert (=> b!4444 (= res!3459 (qInv!0 q!85))))

(declare-fun b!4445 () Bool)

(declare-fun res!3460 () Bool)

(assert (=> b!4445 (=> (not res!3460) (not e!2133))))

(declare-fun iqInv!0 (array!274) Bool)

(assert (=> b!4445 (= res!3460 (iqInv!0 iq!165))))

(assert (= (and start!949 res!3457) b!4444))

(assert (= (and b!4444 res!3459) b!4441))

(assert (= (and b!4441 c!698) b!4443))

(assert (= (and b!4441 (not c!698)) b!4442))

(assert (= (and b!4441 res!3455) b!4445))

(assert (= (and b!4445 res!3460) b!4439))

(assert (= (and b!4439 res!3456) b!4440))

(assert (= (and b!4440 res!3458) b!4438))

(declare-fun m!7175 () Bool)

(assert (=> b!4443 m!7175))

(declare-fun m!7177 () Bool)

(assert (=> start!949 m!7177))

(declare-fun m!7179 () Bool)

(assert (=> start!949 m!7179))

(declare-fun m!7181 () Bool)

(assert (=> b!4440 m!7181))

(assert (=> b!4440 m!7181))

(declare-fun m!7183 () Bool)

(assert (=> b!4440 m!7183))

(declare-fun m!7185 () Bool)

(assert (=> b!4439 m!7185))

(declare-fun m!7187 () Bool)

(assert (=> b!4445 m!7187))

(declare-fun m!7189 () Bool)

(assert (=> b!4441 m!7189))

(declare-fun m!7191 () Bool)

(assert (=> b!4441 m!7191))

(declare-fun m!7193 () Bool)

(assert (=> b!4444 m!7193))

(push 1)

(assert (not b!4444))

(assert (not b!4440))

(assert (not b!4443))

(assert (not start!949))

(assert (not b!4445))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

