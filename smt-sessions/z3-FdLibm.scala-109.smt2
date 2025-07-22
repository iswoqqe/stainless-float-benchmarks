; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!881 () Bool)

(assert start!881)

(declare-datatypes ((array!242 0))(
  ( (array!243 (arr!107 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!107 (_ BitVec 32))) )
))
(declare-fun q!85 () array!242)

(declare-fun lt!2513 () (_ FloatingPoint 11 53))

(declare-fun jz!53 () (_ BitVec 32))

(declare-fun b!3682 () Bool)

(declare-datatypes ((Unit!301 0))(
  ( (Unit!302) )
))
(declare-datatypes ((array!244 0))(
  ( (array!245 (arr!108 (Array (_ BitVec 32) (_ BitVec 32))) (size!108 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!146 0))(
  ( (tuple4!147 (_1!128 Unit!301) (_2!128 array!244) (_3!116 (_ BitVec 32)) (_4!73 (_ FloatingPoint 11 53))) )
))
(declare-fun e!1877 () tuple4!146)

(declare-fun lt!2515 () array!244)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!242 array!244 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!146)

(assert (=> b!3682 (= e!1877 (computeModuloWhile!0 jz!53 q!85 lt!2515 jz!53 lt!2513))))

(declare-fun i!252 () (_ BitVec 32))

(declare-fun carry!58 () (_ BitVec 32))

(declare-fun b!3683 () Bool)

(declare-fun e!1875 () Bool)

(declare-fun iq!165 () array!244)

(assert (=> b!3683 (= e!1875 (and (bvsge (select (arr!108 iq!165) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!58 #b00000000000000000000000000000000) (= carry!58 #b00000000000000000000000000000001)) (bvslt i!252 (bvsub jz!53 #b00000000000000000000000000000001)) (bvslt (bvsub jz!53 i!252) #b00000000000000000000000000000000)))))

(declare-fun b!3684 () Bool)

(declare-fun Unit!303 () Unit!301)

(assert (=> b!3684 (= e!1877 (tuple4!147 Unit!303 lt!2515 jz!53 lt!2513))))

(declare-fun b!3685 () Bool)

(declare-fun res!2803 () Bool)

(declare-fun e!1876 () Bool)

(assert (=> b!3685 (=> (not res!2803) (not e!1876))))

(declare-fun qInv!0 (array!242) Bool)

(assert (=> b!3685 (= res!2803 (qInv!0 q!85))))

(declare-fun b!3686 () Bool)

(declare-fun res!2802 () Bool)

(assert (=> b!3686 (=> (not res!2802) (not e!1875))))

(declare-fun iqInv!0 (array!244) Bool)

(assert (=> b!3686 (= res!2802 (iqInv!0 iq!165))))

(declare-fun b!3687 () Bool)

(assert (=> b!3687 (= e!1876 e!1875)))

(declare-fun res!2801 () Bool)

(assert (=> b!3687 (=> (not res!2801) (not e!1875))))

(declare-fun lt!2514 () tuple4!146)

(declare-fun lt!2516 () (_ FloatingPoint 11 53))

(assert (=> b!3687 (= res!2801 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2516) (fp.lt lt!2516 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!108 (_2!128 lt!2514)) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!252) (bvsle i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!3687 (= lt!2516 (fp.sub roundNearestTiesToEven (_4!73 lt!2514) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!73 lt!2514) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!73 lt!2514) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!73 lt!2514) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!73 lt!2514) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!3687 (= lt!2514 e!1877)))

(declare-fun c!647 () Bool)

(assert (=> b!3687 (= c!647 (bvsgt jz!53 #b00000000000000000000000000000000))))

(assert (=> b!3687 (= lt!2513 (select (arr!107 q!85) jz!53))))

(assert (=> b!3687 (= lt!2515 (array!245 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun res!2804 () Bool)

(assert (=> start!881 (=> (not res!2804) (not e!1876))))

(assert (=> start!881 (= res!2804 (and (bvsle #b00000000000000000000000000000010 jz!53) (bvslt jz!53 #b00000000000000000000000000010011)))))

(assert (=> start!881 e!1876))

(assert (=> start!881 true))

(declare-fun array_inv!57 (array!244) Bool)

(assert (=> start!881 (array_inv!57 iq!165)))

(declare-fun array_inv!58 (array!242) Bool)

(assert (=> start!881 (array_inv!58 q!85)))

(assert (= (and start!881 res!2804) b!3685))

(assert (= (and b!3685 res!2803) b!3687))

(assert (= (and b!3687 c!647) b!3682))

(assert (= (and b!3687 (not c!647)) b!3684))

(assert (= (and b!3687 res!2801) b!3686))

(assert (= (and b!3686 res!2802) b!3683))

(declare-fun m!4609 () Bool)

(assert (=> start!881 m!4609))

(declare-fun m!4611 () Bool)

(assert (=> start!881 m!4611))

(declare-fun m!4613 () Bool)

(assert (=> b!3686 m!4613))

(declare-fun m!4615 () Bool)

(assert (=> b!3683 m!4615))

(declare-fun m!4617 () Bool)

(assert (=> b!3682 m!4617))

(declare-fun m!4619 () Bool)

(assert (=> b!3685 m!4619))

(declare-fun m!4621 () Bool)

(assert (=> b!3687 m!4621))

(declare-fun m!4623 () Bool)

(assert (=> b!3687 m!4623))

(check-sat (not b!3682) (not b!3686) (not b!3685) (not start!881))
(check-sat)
