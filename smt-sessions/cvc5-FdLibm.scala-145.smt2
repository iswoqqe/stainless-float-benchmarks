; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1103 () Bool)

(assert start!1103)

(declare-fun res!4210 () Bool)

(declare-fun e!2651 () Bool)

(assert (=> start!1103 (=> (not res!4210) (not e!2651))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!377 0))(
  ( (array!378 (arr!163 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!163 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!377)

(assert (=> start!1103 (= res!4210 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!163 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1103 e!2651))

(assert (=> start!1103 true))

(declare-fun array_inv!113 (array!377) Bool)

(assert (=> start!1103 (array_inv!113 qq!69)))

(declare-fun b!5349 () Bool)

(declare-fun res!4211 () Bool)

(assert (=> b!5349 (=> (not res!4211) (not e!2651))))

(declare-fun qqInv!0 (array!377) Bool)

(assert (=> b!5349 (= res!4211 (qqInv!0 qq!69))))

(declare-fun b!5350 () Bool)

(assert (=> b!5350 (= e!2651 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 (fp.mul roundNearestTiesToEven (fp #b0 #b01111111111 #b1001001000011111101101000000000000000000000000000000) (select (arr!163 qq!69) #b00000000000000000000000000000000))) #b00000000000000000000000000000000)) (fp.leq (select (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 (fp.mul roundNearestTiesToEven (fp #b0 #b01111111111 #b1001001000011111101101000000000000000000000000000000) (select (arr!163 qq!69) #b00000000000000000000000000000000))) #b00000000000000000000000000000000) (fp #b0 #b01111111110 #b1001001000011111101100001101101111000000100110000000)) (bvsge #b00000000000000000000000000000000 (size!163 qq!69))))))

(assert (= (and start!1103 res!4210) b!5349))

(assert (= (and b!5349 res!4211) b!5350))

(declare-fun m!8683 () Bool)

(assert (=> start!1103 m!8683))

(declare-fun m!8685 () Bool)

(assert (=> b!5349 m!8685))

(declare-fun m!8687 () Bool)

(assert (=> b!5350 m!8687))

(declare-fun m!8689 () Bool)

(assert (=> b!5350 m!8689))

(declare-fun m!8691 () Bool)

(assert (=> b!5350 m!8691))

(push 1)

(assert (not start!1103))

(assert (not b!5349))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

