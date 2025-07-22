; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!947 () Bool)

(assert start!947)

(declare-fun b!4414 () Bool)

(declare-fun res!3439 () Bool)

(declare-fun e!2117 () Bool)

(assert (=> b!4414 (=> (not res!3439) (not e!2117))))

(declare-datatypes ((array!270 0))(
  ( (array!271 (arr!117 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!117 (_ BitVec 32))) )
))
(declare-fun q!85 () array!270)

(declare-fun qInv!0 (array!270) Bool)

(assert (=> b!4414 (= res!3439 (qInv!0 q!85))))

(declare-fun res!3441 () Bool)

(assert (=> start!947 (=> (not res!3441) (not e!2117))))

(declare-fun jz!53 () (_ BitVec 32))

(assert (=> start!947 (= res!3441 (and (bvsle #b00000000000000000000000000000010 jz!53) (bvslt jz!53 #b00000000000000000000000000010011)))))

(assert (=> start!947 e!2117))

(assert (=> start!947 true))

(declare-datatypes ((array!272 0))(
  ( (array!273 (arr!118 (Array (_ BitVec 32) (_ BitVec 32))) (size!118 (_ BitVec 32))) )
))
(declare-fun iq!165 () array!272)

(declare-fun array_inv!67 (array!272) Bool)

(assert (=> start!947 (array_inv!67 iq!165)))

(declare-fun array_inv!68 (array!270) Bool)

(assert (=> start!947 (array_inv!68 q!85)))

(declare-fun b!4415 () Bool)

(declare-fun res!3442 () Bool)

(declare-fun e!2119 () Bool)

(assert (=> b!4415 (=> (not res!3442) (not e!2119))))

(declare-fun carry!58 () (_ BitVec 32))

(declare-fun i!252 () (_ BitVec 32))

(assert (=> b!4415 (= res!3442 (and (bvsge (select (arr!118 iq!165) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!58 #b00000000000000000000000000000000) (= carry!58 #b00000000000000000000000000000001)) (bvslt i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(declare-fun lt!2742 () array!272)

(declare-datatypes ((Unit!341 0))(
  ( (Unit!342) )
))
(declare-datatypes ((tuple4!156 0))(
  ( (tuple4!157 (_1!133 Unit!341) (_2!133 array!272) (_3!121 (_ BitVec 32)) (_4!78 (_ FloatingPoint 11 53))) )
))
(declare-fun e!2115 () tuple4!156)

(declare-fun lt!2741 () (_ FloatingPoint 11 53))

(declare-fun b!4416 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!270 array!272 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!156)

(assert (=> b!4416 (= e!2115 (computeModuloWhile!0 jz!53 q!85 lt!2742 jz!53 lt!2741))))

(declare-fun b!4417 () Bool)

(assert (=> b!4417 (= e!2119 (and (= (bvand i!252 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (not (= (bvand i!252 #b10000000000000000000000000000000) (bvand (bvadd i!252 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun b!4418 () Bool)

(declare-fun res!3437 () Bool)

(assert (=> b!4418 (=> (not res!3437) (not e!2119))))

(declare-fun iqInv!0 (array!272) Bool)

(assert (=> b!4418 (= res!3437 (iqInv!0 iq!165))))

(declare-fun b!4419 () Bool)

(assert (=> b!4419 (= e!2117 e!2119)))

(declare-fun res!3438 () Bool)

(assert (=> b!4419 (=> (not res!3438) (not e!2119))))

(declare-fun lt!2743 () (_ FloatingPoint 11 53))

(declare-fun lt!2740 () tuple4!156)

(assert (=> b!4419 (= res!3438 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2743) (fp.lt lt!2743 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!118 (_2!133 lt!2740)) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!252) (bvsle i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!4419 (= lt!2743 (fp.sub roundNearestTiesToEven (_4!78 lt!2740) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!78 lt!2740) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!78 lt!2740) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!78 lt!2740) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!78 lt!2740) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!4419 (= lt!2740 e!2115)))

(declare-fun c!695 () Bool)

(assert (=> b!4419 (= c!695 (bvsgt jz!53 #b00000000000000000000000000000000))))

(assert (=> b!4419 (= lt!2741 (select (arr!117 q!85) jz!53))))

(assert (=> b!4419 (= lt!2742 (array!273 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!4420 () Bool)

(declare-fun Unit!343 () Unit!341)

(assert (=> b!4420 (= e!2115 (tuple4!157 Unit!343 lt!2742 jz!53 lt!2741))))

(declare-fun b!4421 () Bool)

(declare-fun res!3440 () Bool)

(assert (=> b!4421 (=> (not res!3440) (not e!2119))))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!4421 (= res!3440 (QInt!0 (select (arr!118 iq!165) i!252)))))

(assert (= (and start!947 res!3441) b!4414))

(assert (= (and b!4414 res!3439) b!4419))

(assert (= (and b!4419 c!695) b!4416))

(assert (= (and b!4419 (not c!695)) b!4420))

(assert (= (and b!4419 res!3438) b!4418))

(assert (= (and b!4418 res!3437) b!4415))

(assert (= (and b!4415 res!3442) b!4421))

(assert (= (and b!4421 res!3440) b!4417))

(declare-fun m!7155 () Bool)

(assert (=> b!4416 m!7155))

(declare-fun m!7157 () Bool)

(assert (=> b!4415 m!7157))

(declare-fun m!7159 () Bool)

(assert (=> start!947 m!7159))

(declare-fun m!7161 () Bool)

(assert (=> start!947 m!7161))

(declare-fun m!7163 () Bool)

(assert (=> b!4414 m!7163))

(declare-fun m!7165 () Bool)

(assert (=> b!4421 m!7165))

(assert (=> b!4421 m!7165))

(declare-fun m!7167 () Bool)

(assert (=> b!4421 m!7167))

(declare-fun m!7169 () Bool)

(assert (=> b!4418 m!7169))

(declare-fun m!7171 () Bool)

(assert (=> b!4419 m!7171))

(declare-fun m!7173 () Bool)

(assert (=> b!4419 m!7173))

(push 1)

(assert (not b!4416))

(assert (not b!4421))

(assert (not start!947))

(assert (not b!4414))

(assert (not b!4418))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

