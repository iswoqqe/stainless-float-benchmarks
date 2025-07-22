; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!851 () Bool)

(assert start!851)

(declare-fun lt!2490 () (_ FloatingPoint 11 53))

(declare-fun lt!2493 () (_ BitVec 32))

(declare-fun b!3909 () Bool)

(declare-fun jz!53 () (_ BitVec 32))

(declare-datatypes ((Unit!297 0))(
  ( (Unit!298) )
))
(declare-datatypes ((array!210 0))(
  ( (array!211 (arr!93 (Array (_ BitVec 32) (_ BitVec 32))) (size!93 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!132 0))(
  ( (tuple4!133 (_1!121 Unit!297) (_2!121 array!210) (_3!109 (_ BitVec 32)) (_4!66 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!2492 () tuple4!132)

(declare-fun e!1838 () Bool)

(assert (=> b!3909 (= e!1838 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2490) (fp.lt lt!2490 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!93 (_2!121 lt!2492)) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsge lt!2493 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!3909 (= lt!2490 (fp.sub roundNearestTiesToEven (_4!66 lt!2492) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!66 lt!2492) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!66 lt!2492) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!66 lt!2492) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!66 lt!2492) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(declare-fun e!1834 () tuple4!132)

(assert (=> b!3909 (= lt!2492 e!1834)))

(declare-fun c!639 () Bool)

(assert (=> b!3909 (= c!639 (bvsgt jz!53 #b00000000000000000000000000000000))))

(declare-fun lt!2491 () (_ FloatingPoint 11 53))

(declare-datatypes ((array!212 0))(
  ( (array!213 (arr!94 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!94 (_ BitVec 32))) )
))
(declare-fun q!85 () array!212)

(assert (=> b!3909 (= lt!2491 (select (arr!94 q!85) jz!53))))

(declare-fun lt!2489 () array!210)

(assert (=> b!3909 (= lt!2489 (array!211 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!3910 () Bool)

(declare-fun Unit!299 () Unit!297)

(assert (=> b!3910 (= e!1834 (tuple4!133 Unit!299 lt!2489 jz!53 lt!2491))))

(declare-fun e!1835 () tuple4!132)

(declare-fun lt!2495 () (_ FloatingPoint 11 53))

(declare-fun b!3911 () Bool)

(declare-fun lt!2488 () array!210)

(declare-fun Unit!300 () Unit!297)

(assert (=> b!3911 (= e!1835 (tuple4!133 Unit!300 lt!2488 jz!53 lt!2495))))

(declare-fun b!3912 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!212 array!210 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!132)

(assert (=> b!3912 (= e!1834 (computeModuloWhile!0 jz!53 q!85 lt!2489 jz!53 lt!2491))))

(declare-fun b!3913 () Bool)

(assert (=> b!3913 (= e!1835 (computeModuloWhile!0 jz!53 q!85 lt!2488 jz!53 lt!2495))))

(declare-fun b!3914 () Bool)

(declare-fun res!3047 () Bool)

(declare-fun e!1833 () Bool)

(assert (=> b!3914 (=> (not res!3047) (not e!1833))))

(declare-fun carry!58 () (_ BitVec 32))

(declare-fun i!252 () (_ BitVec 32))

(declare-fun iq!165 () array!210)

(assert (=> b!3914 (= res!3047 (and (bvsge (select (arr!93 iq!165) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!58 #b00000000000000000000000000000000) (= carry!58 #b00000000000000000000000000000001)) (bvslt i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(declare-fun b!3915 () Bool)

(assert (=> b!3915 (= e!1833 e!1838)))

(declare-fun res!3049 () Bool)

(assert (=> b!3915 (=> (not res!3049) (not e!1838))))

(assert (=> b!3915 (= res!3049 (bvslt lt!2493 (bvsub jz!53 #b00000000000000000000000000000001)))))

(assert (=> b!3915 (= lt!2493 (bvadd i!252 #b00000000000000000000000000000001))))

(declare-fun b!3916 () Bool)

(declare-fun res!3043 () Bool)

(assert (=> b!3916 (=> (not res!3043) (not e!1833))))

(declare-fun iqInv!0 (array!210) Bool)

(assert (=> b!3916 (= res!3043 (iqInv!0 iq!165))))

(declare-fun res!3045 () Bool)

(declare-fun e!1836 () Bool)

(assert (=> start!851 (=> (not res!3045) (not e!1836))))

(assert (=> start!851 (= res!3045 (and (bvsle #b00000000000000000000000000000010 jz!53) (bvslt jz!53 #b00000000000000000000000000010011)))))

(assert (=> start!851 e!1836))

(assert (=> start!851 true))

(declare-fun array_inv!44 (array!210) Bool)

(assert (=> start!851 (array_inv!44 iq!165)))

(declare-fun array_inv!45 (array!212) Bool)

(assert (=> start!851 (array_inv!45 q!85)))

(declare-fun b!3908 () Bool)

(declare-fun res!3048 () Bool)

(assert (=> b!3908 (=> (not res!3048) (not e!1836))))

(declare-fun qInv!0 (array!212) Bool)

(assert (=> b!3908 (= res!3048 (qInv!0 q!85))))

(declare-fun b!3917 () Bool)

(declare-fun res!3046 () Bool)

(assert (=> b!3917 (=> (not res!3046) (not e!1833))))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!3917 (= res!3046 (QInt!0 (select (arr!93 iq!165) i!252)))))

(declare-fun b!3918 () Bool)

(assert (=> b!3918 (= e!1836 e!1833)))

(declare-fun res!3044 () Bool)

(assert (=> b!3918 (=> (not res!3044) (not e!1833))))

(declare-fun lt!2487 () (_ FloatingPoint 11 53))

(declare-fun lt!2494 () tuple4!132)

(assert (=> b!3918 (= res!3044 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2487) (fp.lt lt!2487 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!93 (_2!121 lt!2494)) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!252) (bvsle i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!3918 (= lt!2487 (fp.sub roundNearestTiesToEven (_4!66 lt!2494) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!66 lt!2494) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!66 lt!2494) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!66 lt!2494) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!66 lt!2494) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!3918 (= lt!2494 e!1835)))

(declare-fun c!640 () Bool)

(assert (=> b!3918 (= c!640 (bvsgt jz!53 #b00000000000000000000000000000000))))

(assert (=> b!3918 (= lt!2495 (select (arr!94 q!85) jz!53))))

(assert (=> b!3918 (= lt!2488 (array!211 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(assert (= (and start!851 res!3045) b!3908))

(assert (= (and b!3908 res!3048) b!3918))

(assert (= (and b!3918 c!640) b!3913))

(assert (= (and b!3918 (not c!640)) b!3911))

(assert (= (and b!3918 res!3044) b!3916))

(assert (= (and b!3916 res!3043) b!3914))

(assert (= (and b!3914 res!3047) b!3917))

(assert (= (and b!3917 res!3046) b!3915))

(assert (= (and b!3915 res!3049) b!3909))

(assert (= (and b!3909 c!639) b!3912))

(assert (= (and b!3909 (not c!639)) b!3910))

(declare-fun m!6611 () Bool)

(assert (=> start!851 m!6611))

(declare-fun m!6613 () Bool)

(assert (=> start!851 m!6613))

(declare-fun m!6615 () Bool)

(assert (=> b!3916 m!6615))

(declare-fun m!6617 () Bool)

(assert (=> b!3918 m!6617))

(declare-fun m!6619 () Bool)

(assert (=> b!3918 m!6619))

(declare-fun m!6621 () Bool)

(assert (=> b!3913 m!6621))

(declare-fun m!6623 () Bool)

(assert (=> b!3914 m!6623))

(declare-fun m!6625 () Bool)

(assert (=> b!3908 m!6625))

(declare-fun m!6627 () Bool)

(assert (=> b!3912 m!6627))

(declare-fun m!6629 () Bool)

(assert (=> b!3917 m!6629))

(assert (=> b!3917 m!6629))

(declare-fun m!6631 () Bool)

(assert (=> b!3917 m!6631))

(declare-fun m!6633 () Bool)

(assert (=> b!3909 m!6633))

(assert (=> b!3909 m!6619))

(push 1)

(assert (not start!851))

(assert (not b!3913))

(assert (not b!3908))

(assert (not b!3917))

(assert (not b!3912))

(assert (not b!3916))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

