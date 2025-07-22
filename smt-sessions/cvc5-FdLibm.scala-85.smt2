; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!709 () Bool)

(assert start!709)

(declare-fun b!2373 () Bool)

(declare-fun e!1151 () Bool)

(declare-fun e!1147 () Bool)

(assert (=> b!2373 (= e!1151 e!1147)))

(declare-fun res!2012 () Bool)

(assert (=> b!2373 (=> (not res!2012) (not e!1147))))

(declare-fun lt!1501 () (_ FloatingPoint 11 53))

(assert (=> b!2373 (= res!2012 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!1501) (fp.lt lt!1501 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!157 0))(
  ( (Unit!158) )
))
(declare-datatypes ((array!131 0))(
  ( (array!132 (arr!59 (Array (_ BitVec 32) (_ BitVec 32))) (size!59 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!64 0))(
  ( (tuple4!65 (_1!76 Unit!157) (_2!76 array!131) (_3!64 (_ BitVec 32)) (_4!32 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!1507 () tuple4!64)

(assert (=> b!2373 (= lt!1501 (fp.sub roundNearestTiesToEven (_4!32 lt!1507) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!32 lt!1507) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!32 lt!1507) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!32 lt!1507) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!32 lt!1507) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(declare-fun e!1149 () tuple4!64)

(assert (=> b!2373 (= lt!1507 e!1149)))

(declare-fun c!388 () Bool)

(declare-fun jz!42 () (_ BitVec 32))

(assert (=> b!2373 (= c!388 (bvsgt jz!42 #b00000000000000000000000000000000))))

(declare-fun lt!1506 () (_ FloatingPoint 11 53))

(declare-datatypes ((array!133 0))(
  ( (array!134 (arr!60 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!60 (_ BitVec 32))) )
))
(declare-fun q!70 () array!133)

(assert (=> b!2373 (= lt!1506 (select (arr!60 q!70) jz!42))))

(declare-fun lt!1503 () array!131)

(assert (=> b!2373 (= lt!1503 (array!132 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun res!2013 () Bool)

(assert (=> start!709 (=> (not res!2013) (not e!1151))))

(assert (=> start!709 (= res!2013 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!709 e!1151))

(assert (=> start!709 true))

(declare-fun array_inv!26 (array!133) Bool)

(assert (=> start!709 (array_inv!26 q!70)))

(declare-datatypes ((tuple4!66 0))(
  ( (tuple4!67 (_1!77 Unit!157) (_2!77 (_ BitVec 32)) (_3!65 array!131) (_4!33 (_ BitVec 32))) )
))
(declare-fun e!1148 () tuple4!66)

(declare-fun lt!1502 () (_ BitVec 32))

(declare-fun b!2374 () Bool)

(declare-fun lt!1505 () (_ BitVec 32))

(declare-fun Unit!159 () Unit!157)

(assert (=> b!2374 (= e!1148 (tuple4!67 Unit!159 lt!1502 (_2!76 lt!1507) lt!1505))))

(declare-fun b!2375 () Bool)

(declare-fun e!1152 () Bool)

(assert (=> b!2375 (= e!1147 e!1152)))

(declare-fun res!2011 () Bool)

(assert (=> b!2375 (=> (not res!2011) (not e!1152))))

(assert (=> b!2375 (= res!2011 (bvsge (select (arr!59 (_2!76 lt!1507)) (bvsub jz!42 #b00000000000000000000000000000001)) #b00000000100000000000000000000000))))

(assert (=> b!2375 (= lt!1505 #b00000000000000000000000000000000)))

(declare-fun b!2376 () Bool)

(assert (=> b!2376 (= e!1152 (and (not (= (bvand jz!42 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!42 #b10000000000000000000000000000000) (bvand (bvsub jz!42 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun lt!1504 () tuple4!66)

(assert (=> b!2376 (= lt!1504 e!1148)))

(declare-fun c!389 () Bool)

(assert (=> b!2376 (= c!389 (bvslt lt!1502 (bvsub jz!42 #b00000000000000000000000000000001)))))

(assert (=> b!2376 (= lt!1502 #b00000000000000000000000000000000)))

(declare-fun b!2377 () Bool)

(declare-fun Unit!160 () Unit!157)

(assert (=> b!2377 (= e!1149 (tuple4!65 Unit!160 lt!1503 jz!42 lt!1506))))

(declare-fun b!2378 () Bool)

(declare-fun res!2010 () Bool)

(assert (=> b!2378 (=> (not res!2010) (not e!1151))))

(declare-fun qInv!0 (array!133) Bool)

(assert (=> b!2378 (= res!2010 (qInv!0 q!70))))

(declare-fun b!2379 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!133 array!131 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!64)

(assert (=> b!2379 (= e!1149 (computeModuloWhile!0 jz!42 q!70 lt!1503 jz!42 lt!1506))))

(declare-fun b!2380 () Bool)

(declare-fun computeModuloWhile!1 ((_ BitVec 32) array!133 (_ BitVec 32) array!131 (_ BitVec 32)) tuple4!66)

(assert (=> b!2380 (= e!1148 (computeModuloWhile!1 jz!42 q!70 lt!1502 (_2!76 lt!1507) lt!1505))))

(assert (= (and start!709 res!2013) b!2378))

(assert (= (and b!2378 res!2010) b!2373))

(assert (= (and b!2373 c!388) b!2379))

(assert (= (and b!2373 (not c!388)) b!2377))

(assert (= (and b!2373 res!2012) b!2375))

(assert (= (and b!2375 res!2011) b!2376))

(assert (= (and b!2376 c!389) b!2380))

(assert (= (and b!2376 (not c!389)) b!2374))

(declare-fun m!4533 () Bool)

(assert (=> b!2380 m!4533))

(declare-fun m!4535 () Bool)

(assert (=> b!2378 m!4535))

(declare-fun m!4537 () Bool)

(assert (=> start!709 m!4537))

(declare-fun m!4539 () Bool)

(assert (=> b!2373 m!4539))

(declare-fun m!4541 () Bool)

(assert (=> b!2379 m!4541))

(declare-fun m!4543 () Bool)

(assert (=> b!2375 m!4543))

(push 1)

(assert (not start!709))

(assert (not b!2379))

(assert (not b!2378))

(assert (not b!2380))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

