; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2201 () Bool)

(assert start!2201)

(declare-fun b_free!7 () Bool)

(declare-fun b_next!7 () Bool)

(assert (=> start!2201 (= b_free!7 (not b_next!7))))

(declare-fun tp!11 () Bool)

(declare-fun b_and!19 () Bool)

(assert (=> start!2201 (= tp!11 b_and!19)))

(declare-fun b!11385 () Bool)

(declare-fun res!9228 () Bool)

(declare-fun e!6198 () Bool)

(assert (=> b!11385 (=> (not res!9228) (not e!6198))))

(declare-fun P!4 () Int)

(declare-datatypes ((array!764 0))(
  ( (array!765 (arr!332 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!332 (_ BitVec 32))) )
))
(declare-fun a!11 () array!764)

(declare-fun dynLambda!32 (Int (_ FloatingPoint 11 53)) Bool)

(assert (=> b!11385 (= res!9228 (dynLambda!32 P!4 (select (arr!332 a!11) #b00000000000000000000000000000000)))))

(declare-fun b!11387 () Bool)

(declare-fun res!9224 () Bool)

(assert (=> b!11387 (=> (not res!9224) (not e!6198))))

(assert (=> b!11387 (= res!9224 (dynLambda!32 P!4 (select (arr!332 a!11) #b00000000000000000000000000000010)))))

(declare-fun b!11388 () Bool)

(assert (=> b!11388 (= e!6198 (bvsge #b00000000000000000000000000000100 (size!332 a!11)))))

(declare-fun b!11389 () Bool)

(declare-fun res!9226 () Bool)

(assert (=> b!11389 (=> (not res!9226) (not e!6198))))

(assert (=> b!11389 (= res!9226 (dynLambda!32 P!4 (select (arr!332 a!11) #b00000000000000000000000000000001)))))

(declare-fun b!11386 () Bool)

(declare-fun res!9225 () Bool)

(assert (=> b!11386 (=> (not res!9225) (not e!6198))))

(assert (=> b!11386 (= res!9225 (dynLambda!32 P!4 (select (arr!332 a!11) #b00000000000000000000000000000011)))))

(declare-fun res!9227 () Bool)

(assert (=> start!2201 (=> (not res!9227) (not e!6198))))

(assert (=> start!2201 (= res!9227 (= (size!332 a!11) #b00000000000000000000000000000101))))

(assert (=> start!2201 e!6198))

(declare-fun array_inv!281 (array!764) Bool)

(assert (=> start!2201 (array_inv!281 a!11)))

(assert (=> start!2201 tp!11))

(assert (= (and start!2201 res!9227) b!11385))

(assert (= (and b!11385 res!9228) b!11389))

(assert (= (and b!11389 res!9226) b!11387))

(assert (= (and b!11387 res!9224) b!11386))

(assert (= (and b!11386 res!9225) b!11388))

(declare-fun b_lambda!6033 () Bool)

(assert (=> (not b_lambda!6033) (not b!11385)))

(declare-fun t!203 () Bool)

(declare-fun tb!13 () Bool)

(assert (=> (and start!2201 (= P!4 P!4) t!203) tb!13))

(declare-fun result!13 () Bool)

(assert (=> tb!13 (= result!13 true)))

(assert (=> b!11385 t!203))

(declare-fun b_and!21 () Bool)

(assert (= b_and!19 (and (=> t!203 result!13) b_and!21)))

(declare-fun b_lambda!6035 () Bool)

(assert (=> (not b_lambda!6035) (not b!11387)))

(declare-fun t!205 () Bool)

(declare-fun tb!15 () Bool)

(assert (=> (and start!2201 (= P!4 P!4) t!205) tb!15))

(declare-fun result!15 () Bool)

(assert (=> tb!15 (= result!15 true)))

(assert (=> b!11387 t!205))

(declare-fun b_and!23 () Bool)

(assert (= b_and!21 (and (=> t!205 result!15) b_and!23)))

(declare-fun b_lambda!6037 () Bool)

(assert (=> (not b_lambda!6037) (not b!11389)))

(declare-fun t!207 () Bool)

(declare-fun tb!17 () Bool)

(assert (=> (and start!2201 (= P!4 P!4) t!207) tb!17))

(declare-fun result!17 () Bool)

(assert (=> tb!17 (= result!17 true)))

(assert (=> b!11389 t!207))

(declare-fun b_and!25 () Bool)

(assert (= b_and!23 (and (=> t!207 result!17) b_and!25)))

(declare-fun b_lambda!6039 () Bool)

(assert (=> (not b_lambda!6039) (not b!11386)))

(declare-fun t!209 () Bool)

(declare-fun tb!19 () Bool)

(assert (=> (and start!2201 (= P!4 P!4) t!209) tb!19))

(declare-fun result!19 () Bool)

(assert (=> tb!19 (= result!19 true)))

(assert (=> b!11386 t!209))

(declare-fun b_and!27 () Bool)

(assert (= b_and!25 (and (=> t!209 result!19) b_and!27)))

(declare-fun m!19127 () Bool)

(assert (=> b!11389 m!19127))

(assert (=> b!11389 m!19127))

(declare-fun m!19129 () Bool)

(assert (=> b!11389 m!19129))

(declare-fun m!19131 () Bool)

(assert (=> start!2201 m!19131))

(declare-fun m!19133 () Bool)

(assert (=> b!11385 m!19133))

(assert (=> b!11385 m!19133))

(declare-fun m!19135 () Bool)

(assert (=> b!11385 m!19135))

(declare-fun m!19137 () Bool)

(assert (=> b!11386 m!19137))

(assert (=> b!11386 m!19137))

(declare-fun m!19139 () Bool)

(assert (=> b!11386 m!19139))

(declare-fun m!19141 () Bool)

(assert (=> b!11387 m!19141))

(assert (=> b!11387 m!19141))

(declare-fun m!19143 () Bool)

(assert (=> b!11387 m!19143))

(push 1)

(assert (not b_lambda!6037))

(assert b_and!27)

(assert (not b_lambda!6035))

(assert (not start!2201))

(assert (not b_lambda!6039))

(assert (not b_next!7))

(assert (not b_lambda!6033))

(check-sat)

(pop 1)

(push 1)

(assert b_and!27)

(assert (not b_next!7))

(check-sat)

(pop 1)

