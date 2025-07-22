; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1009 () Bool)

(assert start!1009)

(declare-fun b!4876 () Bool)

(declare-fun e!2409 () Bool)

(declare-fun e!2412 () Bool)

(assert (=> b!4876 (= e!2409 e!2412)))

(declare-fun res!3786 () Bool)

(assert (=> b!4876 (=> (not res!3786) (not e!2412))))

(declare-fun lt!3058 () (_ BitVec 32))

(declare-fun jz!53 () (_ BitVec 32))

(assert (=> b!4876 (= res!3786 (and (bvsge lt!3058 (bvsub jz!53 #b00000000000000000000000000000001)) (bvsle #b00000000000000000000000000000000 lt!3058) (bvsle lt!3058 (bvsub jz!53 #b00000000000000000000000000000001))))))

(declare-fun i!252 () (_ BitVec 32))

(assert (=> b!4876 (= lt!3058 (bvadd i!252 #b00000000000000000000000000000001))))

(declare-fun b!4877 () Bool)

(declare-fun res!3781 () Bool)

(declare-fun e!2411 () Bool)

(assert (=> b!4877 (=> (not res!3781) (not e!2411))))

(declare-fun carry!58 () (_ BitVec 32))

(declare-datatypes ((array!316 0))(
  ( (array!317 (arr!137 (Array (_ BitVec 32) (_ BitVec 32))) (size!137 (_ BitVec 32))) )
))
(declare-fun iq!165 () array!316)

(assert (=> b!4877 (= res!3781 (and (bvsge (select (arr!137 iq!165) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!58 #b00000000000000000000000000000000) (= carry!58 #b00000000000000000000000000000001)) (bvslt i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(declare-datatypes ((array!318 0))(
  ( (array!319 (arr!138 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!138 (_ BitVec 32))) )
))
(declare-fun q!85 () array!318)

(declare-fun lt!3061 () array!316)

(declare-fun b!4878 () Bool)

(declare-fun lt!3057 () (_ FloatingPoint 11 53))

(declare-datatypes ((Unit!381 0))(
  ( (Unit!382) )
))
(declare-datatypes ((tuple4!188 0))(
  ( (tuple4!189 (_1!149 Unit!381) (_2!149 array!316) (_3!137 (_ BitVec 32)) (_4!94 (_ FloatingPoint 11 53))) )
))
(declare-fun e!2407 () tuple4!188)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!318 array!316 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!188)

(assert (=> b!4878 (= e!2407 (computeModuloWhile!0 jz!53 q!85 lt!3061 jz!53 lt!3057))))

(declare-fun b!4880 () Bool)

(declare-fun e!2410 () Bool)

(assert (=> b!4880 (= e!2410 e!2411)))

(declare-fun res!3784 () Bool)

(assert (=> b!4880 (=> (not res!3784) (not e!2411))))

(declare-fun lt!3056 () tuple4!188)

(declare-fun lt!3060 () (_ FloatingPoint 11 53))

(assert (=> b!4880 (= res!3784 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!3060) (fp.lt lt!3060 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!137 (_2!149 lt!3056)) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!252) (bvsle i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!4880 (= lt!3060 (fp.sub roundNearestTiesToEven (_4!94 lt!3056) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!94 lt!3056) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!94 lt!3056) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!94 lt!3056) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!94 lt!3056) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!4880 (= lt!3056 e!2407)))

(declare-fun c!755 () Bool)

(assert (=> b!4880 (= c!755 (bvsgt jz!53 #b00000000000000000000000000000000))))

(assert (=> b!4880 (= lt!3057 (select (arr!138 q!85) jz!53))))

(assert (=> b!4880 (= lt!3061 (array!317 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!4881 () Bool)

(declare-fun res!3779 () Bool)

(assert (=> b!4881 (=> (not res!3779) (not e!2412))))

(declare-fun lt!3059 () (_ BitVec 32))

(declare-fun iqInv!0 (array!316) Bool)

(assert (=> b!4881 (= res!3779 (iqInv!0 (array!317 (store (arr!137 iq!165) i!252 (ite (= carry!58 #b00000000000000000000000000000000) (ite (not (= lt!3059 #b00000000000000000000000000000000)) (bvsub #b00000001000000000000000000000000 lt!3059) #b00000000000000000000000000000000) (bvsub #b00000000111111111111111111111111 lt!3059))) (size!137 iq!165))))))

(declare-fun b!4882 () Bool)

(declare-fun Unit!383 () Unit!381)

(assert (=> b!4882 (= e!2407 (tuple4!189 Unit!383 lt!3061 jz!53 lt!3057))))

(declare-fun b!4883 () Bool)

(assert (=> b!4883 (= e!2411 e!2409)))

(declare-fun res!3783 () Bool)

(assert (=> b!4883 (=> (not res!3783) (not e!2409))))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!4883 (= res!3783 (QInt!0 lt!3059))))

(assert (=> b!4883 (= lt!3059 (select (arr!137 iq!165) i!252))))

(declare-fun b!4879 () Bool)

(declare-fun res!3785 () Bool)

(assert (=> b!4879 (=> (not res!3785) (not e!2411))))

(assert (=> b!4879 (= res!3785 (iqInv!0 iq!165))))

(declare-fun res!3780 () Bool)

(assert (=> start!1009 (=> (not res!3780) (not e!2410))))

(assert (=> start!1009 (= res!3780 (and (bvsle #b00000000000000000000000000000010 jz!53) (bvslt jz!53 #b00000000000000000000000000010011)))))

(assert (=> start!1009 e!2410))

(assert (=> start!1009 true))

(declare-fun array_inv!87 (array!316) Bool)

(assert (=> start!1009 (array_inv!87 iq!165)))

(declare-fun array_inv!88 (array!318) Bool)

(assert (=> start!1009 (array_inv!88 q!85)))

(declare-fun b!4884 () Bool)

(declare-fun res!3782 () Bool)

(assert (=> b!4884 (=> (not res!3782) (not e!2410))))

(declare-fun qInv!0 (array!318) Bool)

(assert (=> b!4884 (= res!3782 (qInv!0 q!85))))

(declare-fun b!4885 () Bool)

(assert (=> b!4885 (= e!2412 (and (not (= (bvand jz!53 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!53 #b10000000000000000000000000000000) (bvand (bvsub jz!53 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(assert (= (and start!1009 res!3780) b!4884))

(assert (= (and b!4884 res!3782) b!4880))

(assert (= (and b!4880 c!755) b!4878))

(assert (= (and b!4880 (not c!755)) b!4882))

(assert (= (and b!4880 res!3784) b!4879))

(assert (= (and b!4879 res!3785) b!4877))

(assert (= (and b!4877 res!3781) b!4883))

(assert (= (and b!4883 res!3783) b!4876))

(assert (= (and b!4876 res!3786) b!4881))

(assert (= (and b!4881 res!3779) b!4885))

(declare-fun m!7487 () Bool)

(assert (=> b!4879 m!7487))

(declare-fun m!7489 () Bool)

(assert (=> start!1009 m!7489))

(declare-fun m!7491 () Bool)

(assert (=> start!1009 m!7491))

(declare-fun m!7493 () Bool)

(assert (=> b!4880 m!7493))

(declare-fun m!7495 () Bool)

(assert (=> b!4880 m!7495))

(declare-fun m!7497 () Bool)

(assert (=> b!4883 m!7497))

(declare-fun m!7499 () Bool)

(assert (=> b!4883 m!7499))

(declare-fun m!7501 () Bool)

(assert (=> b!4881 m!7501))

(declare-fun m!7503 () Bool)

(assert (=> b!4881 m!7503))

(declare-fun m!7505 () Bool)

(assert (=> b!4878 m!7505))

(declare-fun m!7507 () Bool)

(assert (=> b!4884 m!7507))

(declare-fun m!7509 () Bool)

(assert (=> b!4877 m!7509))

(push 1)

(assert (not b!4879))

(assert (not b!4883))

(assert (not b!4881))

(assert (not b!4878))

(assert (not start!1009))

(assert (not b!4884))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

