; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1723 () Bool)

(assert start!1723)

(declare-fun b!8971 () Bool)

(declare-fun res!7361 () Bool)

(declare-fun e!5051 () Bool)

(assert (=> b!8971 (=> (not res!7361) (not e!5051))))

(declare-datatypes ((array!701 0))(
  ( (array!702 (arr!309 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!309 (_ BitVec 32))) )
))
(declare-fun f!58 () array!701)

(declare-fun fInv!0 (array!701) Bool)

(assert (=> b!8971 (= res!7361 (fInv!0 f!58))))

(declare-fun i!179 () (_ BitVec 32))

(declare-fun lt!4512 () (_ BitVec 32))

(declare-fun lt!4511 () (_ BitVec 32))

(declare-fun b!8972 () Bool)

(declare-fun jz!32 () (_ BitVec 32))

(assert (=> b!8972 (= e!5051 (and (bvsle i!179 (bvadd lt!4511 jz!32)) (bvsge (bvadd (bvsub lt!4512 lt!4511) i!179) #b00000000000000000000000000000000) (not (= (bvand lt!4512 #b10000000000000000000000000000000) (bvand lt!4511 #b10000000000000000000000000000000))) (not (= (bvand lt!4512 #b10000000000000000000000000000000) (bvand (bvsub lt!4512 lt!4511) #b10000000000000000000000000000000)))))))

(declare-fun b!8969 () Bool)

(declare-fun res!7363 () Bool)

(declare-fun e!5050 () Bool)

(assert (=> b!8969 (=> (not res!7363) (not e!5050))))

(declare-fun xx!44 () array!701)

(declare-fun xxInv!0 (array!701) Bool)

(assert (=> b!8969 (= res!7363 (xxInv!0 xx!44))))

(declare-fun res!7360 () Bool)

(assert (=> start!1723 (=> (not res!7360) (not e!5050))))

(declare-fun e!15 () (_ BitVec 32))

(assert (=> start!1723 (= res!7360 (and (bvsle #b00000000000000000000000000000000 jz!32) (bvsle jz!32 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!15) (bvsle e!15 #b00000000000000000000001111110000) (= (bvsrem e!15 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1723 e!5050))

(assert (=> start!1723 true))

(declare-fun array_inv!259 (array!701) Bool)

(assert (=> start!1723 (array_inv!259 xx!44)))

(assert (=> start!1723 (array_inv!259 f!58)))

(declare-fun b!8970 () Bool)

(assert (=> b!8970 (= e!5050 e!5051)))

(declare-fun res!7362 () Bool)

(assert (=> b!8970 (=> (not res!7362) (not e!5051))))

(assert (=> b!8970 (= res!7362 (and (= (bvsub e!15 (bvmul #b00000000000000000000000000011000 (bvadd lt!4512 #b00000000000000000000000000000001))) #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 i!179) (bvsle i!179 (bvadd lt!4511 jz!32 #b00000000000000000000000000000001))))))

(declare-fun lt!4510 () (_ BitVec 32))

(assert (=> b!8970 (= lt!4512 (ite (bvslt lt!4510 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!4510))))

(assert (=> b!8970 (= lt!4510 (bvsdiv (bvsub e!15 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(assert (=> b!8970 (= lt!4511 (bvsub (size!309 xx!44) #b00000000000000000000000000000001))))

(assert (= (and start!1723 res!7360) b!8969))

(assert (= (and b!8969 res!7363) b!8970))

(assert (= (and b!8970 res!7362) b!8971))

(assert (= (and b!8971 res!7361) b!8972))

(declare-fun m!13411 () Bool)

(assert (=> b!8971 m!13411))

(declare-fun m!13413 () Bool)

(assert (=> b!8969 m!13413))

(declare-fun m!13415 () Bool)

(assert (=> start!1723 m!13415))

(declare-fun m!13417 () Bool)

(assert (=> start!1723 m!13417))

(check-sat (not start!1723) (not b!8971) (not b!8969))
(check-sat)
