; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1047 () Bool)

(assert start!1047)

(declare-fun b!5232 () Bool)

(declare-fun res!4100 () Bool)

(declare-fun e!2543 () Bool)

(assert (=> b!5232 (=> (not res!4100) (not e!2543))))

(declare-datatypes ((array!336 0))(
  ( (array!337 (arr!145 (Array (_ BitVec 32) (_ BitVec 32))) (size!145 (_ BitVec 32))) )
))
(declare-fun iq!165 () array!336)

(declare-fun i!252 () (_ BitVec 32))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!5232 (= res!4100 (QInt!0 (select (arr!145 iq!165) i!252)))))

(declare-fun b!5233 () Bool)

(declare-fun res!4098 () Bool)

(assert (=> b!5233 (=> (not res!4098) (not e!2543))))

(declare-fun iqInv!0 (array!336) Bool)

(assert (=> b!5233 (= res!4098 (iqInv!0 iq!165))))

(declare-fun lt!3176 () array!336)

(declare-datatypes ((array!338 0))(
  ( (array!339 (arr!146 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!146 (_ BitVec 32))) )
))
(declare-fun q!85 () array!338)

(declare-fun lt!3177 () (_ FloatingPoint 11 53))

(declare-fun jz!53 () (_ BitVec 32))

(declare-fun b!5234 () Bool)

(declare-datatypes ((Unit!397 0))(
  ( (Unit!398) )
))
(declare-datatypes ((tuple4!196 0))(
  ( (tuple4!197 (_1!153 Unit!397) (_2!153 array!336) (_3!141 (_ BitVec 32)) (_4!98 (_ FloatingPoint 11 53))) )
))
(declare-fun e!2542 () tuple4!196)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!338 array!336 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!196)

(assert (=> b!5234 (= e!2542 (computeModuloWhile!0 jz!53 q!85 lt!3176 jz!53 lt!3177))))

(declare-fun res!4096 () Bool)

(declare-fun e!2540 () Bool)

(assert (=> start!1047 (=> (not res!4096) (not e!2540))))

(assert (=> start!1047 (= res!4096 (and (bvsle #b00000000000000000000000000000010 jz!53) (bvslt jz!53 #b00000000000000000000000000010011)))))

(assert (=> start!1047 e!2540))

(assert (=> start!1047 true))

(declare-fun array_inv!95 (array!336) Bool)

(assert (=> start!1047 (array_inv!95 iq!165)))

(declare-fun array_inv!96 (array!338) Bool)

(assert (=> start!1047 (array_inv!96 q!85)))

(declare-fun b!5235 () Bool)

(declare-fun lt!3175 () (_ BitVec 32))

(assert (=> b!5235 (= e!2543 (and (bvsge lt!3175 (bvsub jz!53 #b00000000000000000000000000000001)) (bvslt lt!3175 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!5235 (= lt!3175 (bvadd i!252 #b00000000000000000000000000000001))))

(declare-fun b!5236 () Bool)

(declare-fun Unit!399 () Unit!397)

(assert (=> b!5236 (= e!2542 (tuple4!197 Unit!399 lt!3176 jz!53 lt!3177))))

(declare-fun b!5237 () Bool)

(assert (=> b!5237 (= e!2540 e!2543)))

(declare-fun res!4099 () Bool)

(assert (=> b!5237 (=> (not res!4099) (not e!2543))))

(declare-fun lt!3178 () tuple4!196)

(declare-fun lt!3179 () (_ FloatingPoint 11 53))

(assert (=> b!5237 (= res!4099 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!3179) (fp.lt lt!3179 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!145 (_2!153 lt!3178)) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!252) (bvsle i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!5237 (= lt!3179 (fp.sub roundNearestTiesToEven (_4!98 lt!3178) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!98 lt!3178) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!98 lt!3178) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!98 lt!3178) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!98 lt!3178) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!5237 (= lt!3178 e!2542)))

(declare-fun c!775 () Bool)

(assert (=> b!5237 (= c!775 (bvsgt jz!53 #b00000000000000000000000000000000))))

(assert (=> b!5237 (= lt!3177 (select (arr!146 q!85) jz!53))))

(assert (=> b!5237 (= lt!3176 (array!337 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!5238 () Bool)

(declare-fun res!4097 () Bool)

(assert (=> b!5238 (=> (not res!4097) (not e!2543))))

(declare-fun carry!58 () (_ BitVec 32))

(assert (=> b!5238 (= res!4097 (and (bvsge (select (arr!145 iq!165) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!58 #b00000000000000000000000000000000) (= carry!58 #b00000000000000000000000000000001)) (bvslt i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(declare-fun b!5239 () Bool)

(declare-fun res!4095 () Bool)

(assert (=> b!5239 (=> (not res!4095) (not e!2540))))

(declare-fun qInv!0 (array!338) Bool)

(assert (=> b!5239 (= res!4095 (qInv!0 q!85))))

(assert (= (and start!1047 res!4096) b!5239))

(assert (= (and b!5239 res!4095) b!5237))

(assert (= (and b!5237 c!775) b!5234))

(assert (= (and b!5237 (not c!775)) b!5236))

(assert (= (and b!5237 res!4099) b!5233))

(assert (= (and b!5233 res!4098) b!5238))

(assert (= (and b!5238 res!4097) b!5232))

(assert (= (and b!5232 res!4100) b!5235))

(declare-fun m!8247 () Bool)

(assert (=> b!5238 m!8247))

(declare-fun m!8249 () Bool)

(assert (=> b!5239 m!8249))

(declare-fun m!8251 () Bool)

(assert (=> start!1047 m!8251))

(declare-fun m!8253 () Bool)

(assert (=> start!1047 m!8253))

(declare-fun m!8255 () Bool)

(assert (=> b!5234 m!8255))

(declare-fun m!8257 () Bool)

(assert (=> b!5232 m!8257))

(assert (=> b!5232 m!8257))

(declare-fun m!8259 () Bool)

(assert (=> b!5232 m!8259))

(declare-fun m!8261 () Bool)

(assert (=> b!5237 m!8261))

(declare-fun m!8263 () Bool)

(assert (=> b!5237 m!8263))

(declare-fun m!8265 () Bool)

(assert (=> b!5233 m!8265))

(push 1)

(assert (not b!5239))

(assert (not b!5234))

(assert (not b!5233))

(assert (not start!1047))

(assert (not b!5232))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

