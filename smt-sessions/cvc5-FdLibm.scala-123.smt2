; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1007 () Bool)

(assert start!1007)

(declare-fun b!4848 () Bool)

(declare-fun e!2389 () Bool)

(declare-fun lt!3041 () (_ BitVec 32))

(declare-fun jz!53 () (_ BitVec 32))

(assert (=> b!4848 (= e!2389 (and (bvsge lt!3041 (bvsub jz!53 #b00000000000000000000000000000001)) (bvsle #b00000000000000000000000000000000 lt!3041) (not (= (bvand jz!53 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!53 #b10000000000000000000000000000000) (bvand (bvsub jz!53 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun i!252 () (_ BitVec 32))

(assert (=> b!4848 (= lt!3041 (bvadd i!252 #b00000000000000000000000000000001))))

(declare-fun res!3758 () Bool)

(declare-fun e!2388 () Bool)

(assert (=> start!1007 (=> (not res!3758) (not e!2388))))

(assert (=> start!1007 (= res!3758 (and (bvsle #b00000000000000000000000000000010 jz!53) (bvslt jz!53 #b00000000000000000000000000010011)))))

(assert (=> start!1007 e!2388))

(assert (=> start!1007 true))

(declare-datatypes ((array!312 0))(
  ( (array!313 (arr!135 (Array (_ BitVec 32) (_ BitVec 32))) (size!135 (_ BitVec 32))) )
))
(declare-fun iq!165 () array!312)

(declare-fun array_inv!85 (array!312) Bool)

(assert (=> start!1007 (array_inv!85 iq!165)))

(declare-datatypes ((array!314 0))(
  ( (array!315 (arr!136 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!136 (_ BitVec 32))) )
))
(declare-fun q!85 () array!314)

(declare-fun array_inv!86 (array!314) Bool)

(assert (=> start!1007 (array_inv!86 q!85)))

(declare-fun b!4849 () Bool)

(declare-fun res!3757 () Bool)

(assert (=> b!4849 (=> (not res!3757) (not e!2389))))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!4849 (= res!3757 (QInt!0 (select (arr!135 iq!165) i!252)))))

(declare-fun lt!3042 () (_ FloatingPoint 11 53))

(declare-datatypes ((Unit!378 0))(
  ( (Unit!379) )
))
(declare-datatypes ((tuple4!186 0))(
  ( (tuple4!187 (_1!148 Unit!378) (_2!148 array!312) (_3!136 (_ BitVec 32)) (_4!93 (_ FloatingPoint 11 53))) )
))
(declare-fun e!2391 () tuple4!186)

(declare-fun b!4850 () Bool)

(declare-fun lt!3039 () array!312)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!314 array!312 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!186)

(assert (=> b!4850 (= e!2391 (computeModuloWhile!0 jz!53 q!85 lt!3039 jz!53 lt!3042))))

(declare-fun b!4851 () Bool)

(assert (=> b!4851 (= e!2388 e!2389)))

(declare-fun res!3761 () Bool)

(assert (=> b!4851 (=> (not res!3761) (not e!2389))))

(declare-fun lt!3040 () tuple4!186)

(declare-fun lt!3043 () (_ FloatingPoint 11 53))

(assert (=> b!4851 (= res!3761 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!3043) (fp.lt lt!3043 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!135 (_2!148 lt!3040)) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!252) (bvsle i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!4851 (= lt!3043 (fp.sub roundNearestTiesToEven (_4!93 lt!3040) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!93 lt!3040) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!93 lt!3040) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!93 lt!3040) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!93 lt!3040) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!4851 (= lt!3040 e!2391)))

(declare-fun c!752 () Bool)

(assert (=> b!4851 (= c!752 (bvsgt jz!53 #b00000000000000000000000000000000))))

(assert (=> b!4851 (= lt!3042 (select (arr!136 q!85) jz!53))))

(assert (=> b!4851 (= lt!3039 (array!313 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!4852 () Bool)

(declare-fun res!3760 () Bool)

(assert (=> b!4852 (=> (not res!3760) (not e!2388))))

(declare-fun qInv!0 (array!314) Bool)

(assert (=> b!4852 (= res!3760 (qInv!0 q!85))))

(declare-fun b!4853 () Bool)

(declare-fun Unit!380 () Unit!378)

(assert (=> b!4853 (= e!2391 (tuple4!187 Unit!380 lt!3039 jz!53 lt!3042))))

(declare-fun b!4854 () Bool)

(declare-fun res!3759 () Bool)

(assert (=> b!4854 (=> (not res!3759) (not e!2389))))

(declare-fun iqInv!0 (array!312) Bool)

(assert (=> b!4854 (= res!3759 (iqInv!0 iq!165))))

(declare-fun b!4855 () Bool)

(declare-fun res!3762 () Bool)

(assert (=> b!4855 (=> (not res!3762) (not e!2389))))

(declare-fun carry!58 () (_ BitVec 32))

(assert (=> b!4855 (= res!3762 (and (bvsge (select (arr!135 iq!165) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!58 #b00000000000000000000000000000000) (= carry!58 #b00000000000000000000000000000001)) (bvslt i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (= (and start!1007 res!3758) b!4852))

(assert (= (and b!4852 res!3760) b!4851))

(assert (= (and b!4851 c!752) b!4850))

(assert (= (and b!4851 (not c!752)) b!4853))

(assert (= (and b!4851 res!3761) b!4854))

(assert (= (and b!4854 res!3759) b!4855))

(assert (= (and b!4855 res!3762) b!4849))

(assert (= (and b!4849 res!3757) b!4848))

(declare-fun m!7467 () Bool)

(assert (=> b!4851 m!7467))

(declare-fun m!7469 () Bool)

(assert (=> b!4851 m!7469))

(declare-fun m!7471 () Bool)

(assert (=> b!4849 m!7471))

(assert (=> b!4849 m!7471))

(declare-fun m!7473 () Bool)

(assert (=> b!4849 m!7473))

(declare-fun m!7475 () Bool)

(assert (=> b!4855 m!7475))

(declare-fun m!7477 () Bool)

(assert (=> b!4854 m!7477))

(declare-fun m!7479 () Bool)

(assert (=> b!4852 m!7479))

(declare-fun m!7481 () Bool)

(assert (=> start!1007 m!7481))

(declare-fun m!7483 () Bool)

(assert (=> start!1007 m!7483))

(declare-fun m!7485 () Bool)

(assert (=> b!4850 m!7485))

(push 1)

(assert (not b!4854))

(assert (not b!4852))

(assert (not b!4850))

(assert (not b!4849))

(assert (not start!1007))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

